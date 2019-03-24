#https://jpmelos.com/articles/how-use-chrome-selenium-inside-docker-container-running-python/

print("ran 2222")


#Importing packages
import pandas as pd
import os


# NOTE: Download the chromedriver driver
# Then move exe file on C:\Python27\Scripts
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import sys
#from lxml.html import fromstring,tostring

mydir = os.getcwd()
dir_path = os.path.split(os.path.abspath(mydir))[0]
#chromepath = dir_path

driver = webdriver.Chrome(dir_path)
driver.implicitly_wait(20)


driver.get("https://www.basketball-reference.com/leagues/NBA_2017_per_game.html")

table_trs = driver.find_elements_by_id("per_game_stats")

for tr in table_trs:
    #print tr.get_attribute("innerHTML").encode("UTF-8")

    td = tr.find_elements_by_xpath(".//td")
    #if len(td)==2:
    #print td[0].get_attribute("data-stat").encode("UTF-8") +"\t"+td[1].get_attribute("data-stat").encode("UTF-8")
    print(td)
#https://www.slimjet.com/chrome/download-chrome.php?file=files%2F69.0.3497.92%2Fgoogle-chrome-stable_current_amd64.deb
