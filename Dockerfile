FROM python:3

FROM standalone-chrome

#ADD my_script.py /

RUN pip install pandas
RUN pip install selenium

#COPY my_script.py ./

#CMD [ "python", "./my_script.py" ]
