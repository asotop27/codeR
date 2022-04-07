#Establezco mi directorio de trabajo
setwd("C:/Mi/Working/Directory/RStudio")
#Cargo librerias para leer archivos de excel y manipular datos
library(readxl)
library(dplyr)
#Cargo el vector AccountsAD con la inforacion del excel
AccountsAD <- read_excel("AccountsAD.xlsx", sheet = "Accounts", skip = 1)
NonUsers <- read_excel("AccountsAD.xlsx", sheet = "NonUser")
#Cargo el vector uac_column con la informacion de la columna userAccountControl
uac_column <- AccountsAD$userAccountControl
#Contabilizo la cantidad de cuentas en AD
length(uac_column)
#Obtengo los diferentes userAccountControl
uac_unique <- unique(uac_column)
uac_unique
#Obtengo las CUENTAS Activas en AD
Accounts.Ad.Enabled <- filter(AccountsAD, AccountsAD$userAccountControl == 512 | AccountsAD$userAccountControl == 544 | AccountsAD$userAccountControl == 66048)
#Obtengo los USUARIOS Activos en AD
Users.Ad.Enabled <- setdiff( Accounts.Ad.Enabled$sAMAccountName, NonUsers$NonUser )
#Cantidad de usuarios Activos
length(Users.Ad.Enabled)
