#Name=Subharanjan Mandal

data=read.csv("scores.csv")           #Reading the given data
data
d=data.frame(x=9.25)            #For given value of study time
x=data$Hours
y=data$Scores                         #Defining the Variables 
m=lm(y~x)                         #Defining the linear model 
summary(m)                        #Summary of the linear model
predict.lm(m,d)             #Predicting the score value for the given study hour
library(ggplot2)                      #Calling the library
ggplot(data,aes(x,y)) + geom_point() +geom_smooth(method = "lm")+ labs(title = "Student Percentage vs Study Hours",x = "Study Hours",y = "Student Percentage")#Representing the Students' Scores vs Study Hours through a scatterplot 
        
            
library(MASS)                        #Calling the library
resi=stdres(m)                   #Obtaining the Residual values from the linear model
ggplot(data,aes(x, y = resi)) + geom_point() + geom_hline(yintercept=0)+ geom_hline(yintercept=-2, linetype="dashed", color = "red")+ 
 geom_hline(yintercept=2, linetype="dashed", color = "red")+labs(title = "Student Percentage vs Study Hours",x = "Fitted Values", y = "Residuals")#Representing the Residual values vs Fitted Values of the linear model through a Scatterplot                                                         
                                                          
                                                          
                                                                                
                                                                                      
