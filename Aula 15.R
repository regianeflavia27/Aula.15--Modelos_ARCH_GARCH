> install.packages("readxl", dependencies = T)
Installing package into 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/readxl_1.1.0.zip'
Content type 'application/zip' length 1499867 bytes (1.4 MB)
downloaded 1.4 MB

package 'readxl' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Renata\AppData\Local\Temp\RtmpSE49zi\downloaded_packages
> install.packages("strucchange")
Installing package into 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/strucchange_1.5-1.zip'
Content type 'application/zip' length 951501 bytes (929 KB)
downloaded 929 KB

package 'strucchange' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Renata\AppData\Local\Temp\RtmpSE49zi\downloaded_packages
> remove.packages("aTSA")
Removing package from 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
> install.packages("aTSA", dependencies = T)
Installing package into 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/aTSA_3.1.2.zip'
Content type 'application/zip' length 181302 bytes (177 KB)
downloaded 177 KB

package 'aTSA' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Renata\AppData\Local\Temp\RtmpSE49zi\downloaded_packages
> install.packages("urca")
Installing package into 'C:/Users/Renata/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/urca_1.3-0.zip'
Content type 'application/zip' length 1061080 bytes (1.0 MB)
downloaded 1.0 MB

package 'urca' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Renata\AppData\Local\Temp\RtmpSE49zi\downloaded_packages
> library("strucchange")
Carregando pacotes exigidos: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:base':
  
  as.Date, as.Date.numeric

Carregando pacotes exigidos: sandwich
> library("readxl")
> library("aTSA")

Attaching package: 'aTSA'

The following object is masked from 'package:graphics':
  
  identify

> library("tseries")

'tseries' version: 0.10-45

'tseries' is a package for time series analysis and computational
finance.

See 'library(help="tseries")' for details.


Attaching package: 'tseries'

The following objects are masked from 'package:aTSA':
  
  adf.test, kpss.test, pp.test

> library("urca")
> Bitcoin <- na.omit(read_excel("C:/EconometriaA/Bitcoin.xls"))
Error: `path` does not exist: 'C:/EconometriaA/Bitcoin.xls'
> library(readxl)
> Bancor_xls <- read_excel("C:/EconometriaA/Bancor.xls.xlsx", 
                           +     col_types = c("date", "numeric"))
There were 50 or more warnings (use warnings() to see the first 50)
> View(Bancor_xls)
> Bitcoin <-  ts(Bancor_xls$Close, start = 2018, frequency = 365)
> plot(Bitcoin)
> acf(Bancor_xls$Close,lend=2, lwd=5,col="darkblue",main= "Função Autocorrelação - FAC")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> pacf(Bancor_xls$Close,lend=60, lwd=5,col="darkblue",main= "Função Autocorrelação Parcial - FACP")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> ur.df(Bitcoin, "none", lags = 1)

############################################################### 
# Augmented Dickey-Fuller Test Unit Root / Cointegration Test # 
############################################################### 

The value of the test statistic is: -0.713 

> pp.test(Bitcoin)

Phillips-Perron Unit Root Test

data:  Bitcoin
Dickey-Fuller Z(alpha) = -5.1892, Truncation lag parameter = 5, p-value =
  0.8197
alternative hypothesis: stationary

> kpss.test(Bitcoin)

KPSS Test for Level Stationarity

data:  Bitcoin
KPSS Level = 1.6307, Truncation lag parameter = 4, p-value = 0.01

Warning message:
  In kpss.test(Bitcoin) : p-value smaller than printed p-value
> IntOrdem1 <- diff(Bancor_xls$Close)
> IntegradaOrdem1 <- ts(IntOrdem1, start = 2018, frequency = 365)
> plot(IntegradaOrdem1)
> acf(IntOrdem1,lend=2, lwd=5,col="darkblue",main= "Função Autocorrelação - FAC")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> pacf(IntOrdem1,lend=60, lwd=5,col="darkblue",main= "Função Autocorrelação Parcial - FACP")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> axis(1,tck = 1, col = "lightgrey", lty = "dotted")
> ur.df(IntegradaOrdem1, "none", lags = 1)

############################################################### 
# Augmented Dickey-Fuller Test Unit Root / Cointegration Test # 
############################################################### 

The value of the test statistic is: -13.3804 

> pp.test(IntegradaOrdem1)

Phillips-Perron Unit Root Test

data:  IntegradaOrdem1
Dickey-Fuller Z(alpha) = -305.81, Truncation lag parameter = 5, p-value =
  0.01
alternative hypothesis: stationary

Warning message:
  In pp.test(IntegradaOrdem1) : p-value smaller than printed p-value
> kpss.test(IntegradaOrdem1)

KPSS Test for Level Stationarity

data:  IntegradaOrdem1
KPSS Level = 0.16603, Truncation lag parameter = 4, p-value = 0.1

Warning message:
  In kpss.test(IntegradaOrdem1) : p-value greater than printed p-value
> AR1 <-arima(Bitcoin,order = c(1,0,0))
> MA1<-arima(Bitcoin,order = c(0,0,1))
> MA2<-arima(Bitcoin,order = c(0,0,2))
> MA3<-arima(Bitcoin,order = c(0,0,3))
> MA4<-arima(Bitcoin,order = c(0,0,4))
> MA5<-arima(Bitcoin,order = c(0,0,5))
> MA6<-arima(Bitcoin,order = c(0,0,6))
> MA7<-arima(Bitcoin,order = c(0,0,7))
> MA8<-arima(Bitcoin,order = c(0,0,8))
> MA9<-arima(Bitcoin,order = c(0,0,9))
> MA10<-arima(Bitcoin,order = c(0,0,10))
> MA11<-arima(Bitcoin,order = c(0,0,11))
> MA12<-arima(Bitcoin,order = c(0,0,12))
> MA13<-arima(Bitcoin,order = c(0,0,13))
> MA14<-arima(Bitcoin,order = c(0,0,14))
> MA15<-arima(Bitcoin,order = c(0,0,15))
> MA16<-arima(Bitcoin,order = c(0,0,16))
> MA17<-arima(Bitcoin,order = c(0,0,17))
> MA18<-arima(Bitcoin,order = c(0,0,18))
> MA19<-arima(Bitcoin,order = c(0,0,19))
> MA20<-arima(Bitcoin,order = c(0,0,20))
> MA21<-arima(Bitcoin,order = c(0,0,21))
> estimacoes <- list( AR1, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, MA10, MA11, MA12, MA13, MA14, MA15, MA16, MA17, MA18, MA19, MA20, MA21)
> sapply(estimacoes, AIC)
[1]  118.4145 1024.2976  731.1737  555.0503  421.2372  365.5822  332.9068
[8]  297.8133  256.4361  212.3730  210.8804  189.5226  169.5774  153.2358
[15]  148.4136  145.1286  139.4251  131.5690  132.7344  134.6901  131.0956
[22]  131.0715
> sapply(estimacoes, BIC)
[1]  130.1224 1036.0055  746.7843  574.5634  444.6530  392.9006  364.1279
[8]  332.9370  295.4624  255.3019  257.7120  240.2568  224.2142  211.7753
[15]  210.8557  211.4734  209.6725  205.7191  210.7870  216.6454  216.9535
[22]  220.8321
> AIC <- sapply(estimacoes, AIC)
> BIC <- sapply(estimacoes, BIC)
> Modelo <- c ( "AR1", "MA1", "MA2", "MA3", "MA4", "MA5", "MA6", "MA7", "MA8", "MA9", "MA10", "MA11", "MA12", "MA13", "MA14", "MA15", "MA16", "MA17", "MA18", "MA19", "MA20", "MA21")
> Resultados <- data.frame(Modelo, AIC, BIC)
> View(Resultados)
> colnames(Resultados) <- c("Modelo","AIC","BIC")
> arch.test(melhor_modelo)
Error in arch.test(melhor_modelo) : object 'melhor_modelo' not found
> ARMA01 <- arma (Bitcoin,order = c(1,0,1)
                  + ARMA01 <- arma (Bitcoin,order = c(1,0,1))
                  Error: unexpected symbol in:
                    "ARMA01 <- arma (Bitcoin,order = c(1,0,1)
                  ARMA01"
                  > ARMA01 <- arima (Bitcoin,order = c(1,0,1))
                  > ARMA02 <- arima (Bitcoin,order = c(1,0,2))
                  > ARMA03 <- arima (Bitcoin,order = c(1,0,3))
                  > ARMA04 <- arima (Bitcoin,order = c(1,0,4))
                  > ARMA05 <- arima (Bitcoin,order = c(1,0,5))
                  > ARMA06 <- arima (Bitcoin,order = c(1,0,6))
                  > ARMA07 <- arima (Bitcoin,order = c(1,0,7))
                  > ARMA08 <- arima (Bitcoin,order = c(1,0,8))
                  > ARMA09 <- arima (Bitcoin,order = c(1,0,9))
                  > ARMA10 <- arima (Bitcoin,order = c(1,0,10))
                  > ARMA11 <- arima (Bitcoin,order = c(1,0,11))
                  > ARMA12 <- arima (Bitcoin,order = c(1,0,12))
                  > ARMA13 <- arima (Bitcoin,order = c(1,0,13))
                  > ARMA14 <- arima (Bitcoin,order = c(1,0,14))
                  > ARMA15 <- arima (Bitcoin,order = c(1,0,15))
                  > ARMA16 <- arima (Bitcoin,order = c(1,0,16))
                  > ARMA17 <- arima (Bitcoin,order = c(1,0,17))
                  > ARMA18 <- arima (Bitcoin,order = c(1,0,18))
                  > ARMA19 <- arima (Bitcoin,order = c(1,0,19))
                  > ARMA20 <- arima (Bitcoin,order = c(1,0,20))
                  > ARMA21 <- arima (Bitcoin,order = c(1,0,21))
                  > estimacoes <- list( AR1, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, MA10, MA11, MA12, MA13, MA14, MA15, MA16, MA17, MA18, MA19, MA20, MA21, ARMA01, ARMA02, ARMA03, ARMA04, ARMA05, ARMA06, ARMA07, ARMA08, ARMA09, ARMA10, ARMA11, ARMA12, ARMA13, ARMA14, ARMA15, ARMA16, ARMA17, ARMA18, ARMA19, ARMA20, ARMA21)
                  > sapply(estimacoes, AIC)
                  [1]  118.41449 1024.29756  731.17372  555.05027  421.23721  365.58215  332.90682
                  [8]  297.81332  256.43610  212.37298  210.88045  189.52259  169.57738  153.23576
                  [15]  148.41355  145.12860  139.42507  131.56905  132.73437  134.69012  131.09557
                  [22]  131.07150  114.04543  115.63301  117.61242  118.79412  116.53585  105.26718
                  [29]  107.22092  109.20936  108.64052  105.55930   97.97234   97.26020   97.74438
                  [36]   97.98720   96.78073   97.79391   99.71882  101.30920   98.47722   94.46327
                  [43]   96.43880
                  > sapply(estimacoes, BIC)
                  [1]  130.1224 1036.0055  746.7843  574.5634  444.6530  392.9006  364.1279
                  [8]  332.9370  295.4624  255.3019  257.7120  240.2568  224.2142  211.7753
                  [15]  210.8557  211.4734  209.6725  205.7191  210.7870  216.6454  216.9535
                  [22]  220.8321  129.6560  135.1462  141.0282  146.1125  147.7569  140.3909
                  [29]  146.2473  152.1383  155.4721  156.2935  152.6092  155.7997  160.1865
                  [36]  164.3320  167.0281  171.9439  177.7715  183.2645  184.3352  184.2238
                  [43]  190.1020
                  > AIC <- sapply(estimacoes, AIC)
                  > BIC <- sapply(estimacoes, BIC)
                  > Modelo <- c ("AR1","MA1", "MA2", "MA3", "MA4", "MA5", "MA6", "MA7", "MA8", "MA9", "MA10", "MA11", "MA12", "MA13", "MA14", "MA15", "MA16", "MA17", "MA18", "MA19", "MA20", "MA21", "ARMA01", "ARMA02", "ARMA03", "ARMA04", "ARMA05", "ARMA06", "ARMA07", "ARMA08", "ARMA09", "ARMA10", "ARMA11", "ARMA12", "ARMA13", "ARMA14", "ARMA15", "ARMA16", "ARMA17", "ARMA18", "ARMA19", "ARMA20", "ARMA21")
                  > Resultados <- data.frame(Modelo, AIC, BIC)
                  > View(Resultados)
                  > colnames(Resultados) <- c("Modelo","AIC","BIC")