#Establezco mi directorio de trabajo
setwd("C:/Mi/Working/Directory/RStudio")
#Cargo librerias para leer archivos de texto y manipular datos
library(readr)
library(dplyr)
library(stringr)
#Cargo el vector AccountsAD con la inforacion del excel
RECV20220308_1 <- read_csv("RECV20220308-1.LOG", 
                           col_types = cols_only(`remote-endpoint` = col_guess()), 
                           skip = 4)
src_ip_noms <- filter(RECV20220308_1, str_detect(RECV20220308_1$'remote-endpoint', '10.12')) 
src_ipport_column <- src_ip_noms$'remote-endpoint'
ip_port <- unlist(strsplit(src_ipport_column,":"))
solo_ips <- unlist(word(src_ipport_column, 1, sep = fixed(":")))
ip_uniquef4 <- unique(solo_ips)

RECV20220315_1 <- read_csv("RECV20220315-1.LOG", 
                           col_types = cols_only(`remote-endpoint` = col_guess()), 
                           skip = 4)
src_ip_noms <- filter(RECV20220315_1, str_detect(RECV20220315_1$'remote-endpoint', '10.12')) 
src_ipport_column <- src_ip_noms$'remote-endpoint'
ip_port <- unlist(strsplit(src_ipport_column,":"))
solo_ips <- unlist(word(src_ipport_column, 1, sep = fixed(":")))
ip_uniquef3 <- unique(solo_ips)

RECV20220316_1 <- read_csv("RECV20220316-1.LOG", 
                           col_types = cols_only(`remote-endpoint` = col_guess()), 
                           skip = 4)
src_ip_noms <- filter(RECV20220316_1, str_detect(RECV20220316_1$'remote-endpoint', '10.12')) 
src_ipport_column <- src_ip_noms$'remote-endpoint'
ip_port <- unlist(strsplit(src_ipport_column,":"))
solo_ips <- unlist(word(src_ipport_column, 1, sep = fixed(":")))
ip_uniquef1 <- unique(solo_ips)

RECV20220317_1 <- read_csv("RECV20220317-1.LOG", 
                           col_types = cols_only(`remote-endpoint` = col_guess()), 
                           skip = 4)
src_ip_noms <- filter(RECV20220317_1, str_detect(RECV20220317_1$'remote-endpoint', '10.12')) 
src_ipport_column <- src_ip_noms$'remote-endpoint'
ip_port <- unlist(strsplit(src_ipport_column,":"))
solo_ips <- unlist(word(src_ipport_column, 1, sep = fixed(":")))
ip_uniquef2 <- unique(solo_ips)

ip_f1f2 <- c(ip_uniquef1,ip_uniquef2,ip_uniquef3,ip_uniquef4)
ip_unique <- unique(ip_f1f2)

write.csv(ip_unique,file="ips.csv",row.names=F)
