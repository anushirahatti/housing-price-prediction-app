FROM python:3.8-slim-buster

RUN apt-get update -y && \
    apt-get install -y python-pip python3-dev

COPY ./requirements.txt /housing-price-prediction-app/requirements.txt

#COPY . /housing-price-prediction-app

# Working Directory
WORKDIR /housing-price-prediction-app

# Copy source code to working directory
#COPY 'requirements.txt' .

# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN pip install --upgrade pip &&\
#    pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install --upgrade pip &&\
    #pip install --upgrade Cython &&\
    pip install -r requirements.txt

COPY . /housing-price-prediction-app

#COPY . .

#CMD ["model.py"]

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
