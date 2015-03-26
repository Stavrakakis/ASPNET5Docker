FROM microsoft/aspnet


RUN apt-get install -y git 
RUN git clone https://github.com/Stavrakakis/VNextApp.git

WORKDIR /VNextApp
RUN kpm restore
EXPOSE 5004
ENTRYPOINT k kestrel
