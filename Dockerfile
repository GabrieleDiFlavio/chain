FROM python:3

RUN apt-get update

RUN apt-get -y install python3 python3-dev python3-pip build-essential libgmp-dev libmpfr-dev libmpc-dev

#RUN pip install gmpy2
RUN pip3 install gmpy2 --user

RUN pip3 install Flask 

COPY ./  ./app

# Exposing Ports
# EXPOSE 5035

WORKDIR ./app

CMD [ "python3", "pidigit_chain.py" ]
