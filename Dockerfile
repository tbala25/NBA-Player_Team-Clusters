#Environment Config

FROM ubuntu:17.04
#FROM python:3

RUN pip install pandas
RUN pip install selenium

#Data-Scraping

#FROM standalone-chrome

ADD selenium_test.py /

COPY selenium_test.py ./

CMD [ "python", "./selenium_test.py" ]
