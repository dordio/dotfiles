#!/usr/bin/env python3
import requests
import os
from time import sleep
from bs4 import BeautifulSoup


# function to clear the screen
def clrscr():
    if os.name == 'posix':
        _ = os.system('clear')
    else:
        _ = os.system('cls')


# and clear the screen
clrscr()


# declare a couple of variables for later
difEurValue = 0.00
oldEurValue = 0.00


try:    # HARDER
    while True:
        # get data from the site and parse it, one for the XMR value and the second for the exchange rate
        miner = requests.get('https://minexmr.com/api/main/user/stats?address=WALLET-ADDRESS')
        bank = requests.get('https://minexmr.com/api/main/pool/stats?27285733')
        soupMiner = BeautifulSoup(miner.content, 'html.parser')
        soupBank = BeautifulSoup(bank.content, 'html.parser')


######### search and format the values we wan't - START
        # gest and formats the value of XMR
        dataMiner = soupMiner.find(text=True)
        outputMiner = dataMiner[13:23]
        formatedDataMiner = int(outputMiner) * 0.000000000001
        
        
        # gets and formats the value of the exchange rate
        dataBank = soupBank.find(text=True)
        position = dataBank.find('eur')
        startPos = position + 5
        endPos = position + 11

        
        # the original exchange rate value as no fixed decimal case, these IFs are for just that ocasion.
        # this way no non-numeric values get into the variable
        if dataBank[endPos - 2:endPos - 1].isnumeric():     # first decimal case
            endPos = endPos
        else:
            endPos = endPos - 2
        
        if dataBank[endPos - 1:endPos].isnumeric():         # second decimal case
            endPos = endPos
        else:
            endPos = endPos - 1
        

        # calculates and formats the value in euros and gets the exchange rate
        currentExchangeRate = dataBank[startPos:endPos]
        # converts the the exchange rate to INT
        tempValue = float(currentExchangeRate)
        # calculates the current balance in euros
        currentEurValue = tempValue * formatedDataMiner
######### search and format the values we wan't - END
        
        
        # sets some colors according to the value of how much rupies we have
        if currentEurValue <= 0.99:
            print('\033[91m')   # RED
        else:
            print('\033[92m')   # GREEN
            
        
        # calculate the exchange rate diference, in case there is none, don't
        if oldEurValue == 0:
            oldEurValue = 0.00
        else:
            difEurValue = tempValue - oldEurValue
        
        
        # display everything formated the way we wan't it
        print('\033[1m' + '  Current balance' + '\n\n'
              + '  XMR .......... ' + str(round(formatedDataMiner, 6)) + ' xmr' + '\n'
              + '  EUR .......... ' + str(round(currentEurValue, 2)) + ' eur' + '\n\n\033[1;36m'
              + '  CER .......... ' + currentExchangeRate + ' eur' + '\n\n'
              + '  CER changed by ' + str(round(difEurValue, 2)) + ' eur')
        
        
        # get the new old exchange rate value
        oldEurValue = tempValue
        
        
        # wait 5 minutes and clears the screen
        sleep(300)
        clrscr()


# if CTRL + C is pressed exit the loop
except KeyboardInterrupt:
        pass


# resets the color to white and clears the screen
print('\033[0m')
clrscr()
# GTFO
