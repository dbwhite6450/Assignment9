install.packages("RCurl")

library(RCurl)

prediction <- getURL("https://github.com/dbwhite6450/Assignment9/blob/master/inst/modelscript", ssl.verifypeer = FALSE)

