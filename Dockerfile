#Environment Config

FROM ubuntu:17.04
FROM python:3.4

RUN pip install pandas
RUN pip install selenium

#Data-Scraping

#FROM standalone-chrome

ADD selenium_test.py /Data-Scraping

COPY selenium_test.py ./Data-Scraping

CMD [ "python", "./Data-Scraping/selenium_test.py" ]
