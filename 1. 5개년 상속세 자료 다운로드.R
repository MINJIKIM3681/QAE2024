##1. 5개년 상속세 자료 다운로드
##2022년
library(RSelenium)
library(tidyverse)
library(rvest)
library(readxl)

# Start the RSelenium server
rD <- rsDriver(browser='firefox',port=3456L,chromever=NULL)
remDr <- rD$client

url <- "https://tasis.nts.go.kr/websquare/websquare.html?w2xPath=/ui/ep/e/a/UTWEPEAA02.xml&sttPblYr=2023&sttsMtaInfrId=20230103F01202328267"
remDr$navigate(url)

# Download Button
download_button <- remDr$findElement(using = 'css selector', value = '#mf_btnFle')
download_button$clickElement()

# Pause Runtime
Sys.sleep(10)

remDr$close()
rD$server$stop()


##2021년
library(RSelenium)
library(tidyverse)
library(rvest)
library(readxl)

# Start the RSelenium server
rD <- rsDriver(browser='firefox',port=3456L,chromever=NULL)
remDr <- rD$client

url <- "https://tasis.nts.go.kr/websquare/websquare.html?w2xPath=/ui/ep/e/a/UTWEPEAA02.xml&sttPblYr=2022&sttsMtaInfrId=20211203F012022Q9071"
remDr$navigate(url)

# Download Button
download_button <- remDr$findElement(using = 'css selector', value = '#mf_btnFle')
download_button$clickElement()

# Pause Runtime
Sys.sleep(10)

remDr$close()
rD$server$stop()


##2020년
library(RSelenium)
library(tidyverse)
library(rvest)
library(readxl)

# Start the RSelenium server
rD <- rsDriver(browser='firefox',port=3456L,chromever=NULL)
remDr <- rD$client

url <- "https://tasis.nts.go.kr/websquare/websquare.html?w2xPath=/ui/ep/e/a/UTWEPEAA02.xml&sttPblYr=2021&sttsMtaInfrId=20210203F012021F7294"
remDr$navigate(url)

# Download Button
download_button <- remDr$findElement(using = 'css selector', value = '#mf_btnFle')
download_button$clickElement()

# Pause Runtime
Sys.sleep(10)

remDr$close()
rD$server$stop()


##2019년
library(RSelenium)
library(tidyverse)
library(rvest)
library(readxl)

# Start the RSelenium server
rD <- rsDriver(browser='firefox',port=3456L,chromever=NULL)
remDr <- rD$client

url <- "https://tasis.nts.go.kr/websquare/websquare.html?w2xPath=/ui/ep/e/a/UTWEPEAA02.xml&sttPblYr=2020&sttsMtaInfrId=20201203F012020F5623
"
remDr$navigate(url)

# Download Button
download_button <- remDr$findElement(using = 'css selector', value = '#mf_btnFle')
download_button$clickElement()

# Pause Runtime
Sys.sleep(10)

remDr$close()
rD$server$stop()


##2018년
library(RSelenium)
library(tidyverse)
library(rvest)
library(readxl)

# Start the RSelenium server
rD <- rsDriver(browser='firefox',port=3456L,chromever=NULL)
remDr <- rD$client

url <- "https://tasis.nts.go.kr/websquare/websquare.html?w2xPath=/ui/ep/e/a/UTWEPEAA02.xml&sttPblYr=2019&sttsMtaInfrId=20200603F012019F0141"
remDr$navigate(url)

# Download Button
download_button <- remDr$findElement(using = 'css selector', value = '#mf_btnFle')
download_button$clickElement()

# Pause Runtime
Sys.sleep(10)

remDr$close()
rD$server$stop()