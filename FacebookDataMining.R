install.packages("httpuv")
install.packages("Rfacebook")
install.packages("RColorBrewer")
install.packages("RCurl")
install.packages("rjson")
install.packages("httr")

library(Rfacebook)
library(httpuv)
library(RColorBrewer)

access_token="XXX"

options(RCurlOptions = list(verbose=FALSE,capath=system.file("CurlSLL","cacert.pem",package="RCurl"),ssl.verifypeer=FALSE))

me<-getUsers("me",token=access_token)
myFriends<-getFriends(access_token,simplify=FALSE)

table(myFriends)
pie(table(myFriends$relationship_status))

