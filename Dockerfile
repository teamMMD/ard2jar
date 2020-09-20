# What image do yhou want to start building on?
FROM adoptopenjdk/openjdk14

# Make a folder in your image where your app's souce code can live
RUN mkdir -p /src/app

# Tell your container where your app's souce code will live
WORKDIR /src/app

# What source code do you want to copy, and where should it go?
COPY . /src/app

# Does your app have any dependencies that should be installed?
# RUN AsciiPanel.jar? Maven would likely be needed

# What port will the container talk to the outside world with once created?
EXPOSE 8080

# How do you start your app?
# CMD ["java", "-jar", "ard2.jar"]