##REF: https://jpmelos.com/articles/how-use-chrome-selenium-inside-docker-container-running-python/

##Environment Config

FROM ubuntu:17.04
FROM python:3.6

RUN pip install pandas
RUN pip install selenium

##Data-Scraping

##Install Chrome for selenium
#RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

##Install chromedriver for Selenium
RUN curl https://chromedriver.storage.googleapis.com/72.0.3626.69/chromedriver_linux64.zip -o chromedriver
RUN chmod +x chromedriver


##THIS WORKS
#ADD selenium_test.py /
#RUN python selenium_test.py


##THIS WORKS
ADD /Data-Scraping/selenium_test.py /Data-Scraping/selenium_test.py
RUN [ "python", "/Data-Scraping/selenium_test.py" ]
