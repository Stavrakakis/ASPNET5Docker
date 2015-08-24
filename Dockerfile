FROM microsoft/aspnet


RUN apt-get install -y git 
RUN git clone https://github.com/Stavrakakis/VNextApp.git

WORKDIR /VNextApp
RUN ["dnu", "restore"]
EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]