##Task 1: Create a Graph

#Load the score/time file in
setwd("~/Documents/Biocomputing2020_Tutorial10/")
data <- read.table(file="UWvMSU_1-22-13.txt", header = TRUE, stringsAsFactors = FALSE)

#Create new data frame (vector) and have initial value
UWScore =0
MSUScore =0

#Separate the UW and MSU team data using if statement
  #Have each score add onto the cumulative score for each team
  #Have that score be added as row into matrix

summedData <- matrix(0, nrow=0,ncol = 3)
for(i in 1:nrow(data)){
  if(data$team[i]=="UW"){
    UWScore <- UWScore + data$score[i]
  } else {
    MSUScore <- MSUScore + data$score[i]
  }
summedData <- rbind(summedData,c(data$time[i],UWScore,MSUScore))
} 
colnames(summedData) <- c("Time", "UW Cumulative Score", "MSU Cumulative Score")
  #Use plot() function to plot data. x-axis is time, y-axis is cumulative score
plot(summedData[,1], summedData[,2], type="l",col="red",xlab="Time", ylab="Cumulative Score")
lines(summedData[,1], summedData[,3], col="blue")


##Task 2: Number Game

#Use sample() function to generate number from 1-100
sampleNumber <- sample(1:100,size=1,replace=FALSE)

#Use for loop and input() to let user guess number 10 times
cat("Guess the number! I'm thinking of a number between 1 and 100...")
#Set initial variables for number of guesses (i) and user's guess
i= 0 
userGuess=1

#Use loop to return either higher or lower or correct
while(userGuess != sampleNumber && i<11){
  userGuess <- readline(prompt= "Type in your guess:")
 if (userGuess > sampleNumber){
   cat("Too high, try again.")
  } else if (userGuess < sampleNumber){
   cat("Too low, try again.")
  }
  else {
    cat("Correct!")}
i <- i + 1
  }






