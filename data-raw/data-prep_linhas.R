## basesSGTI
# Organiza bases de dados "linhas" do SGTI

#Load packages
library(purrr); library(dplyr); library(readxl)


#carrega arquivo
linhas <- read_excel("../bases-SGTI/linhas.xlsx")

linhas <- linhas[ , -12] #exclui coluna 12 "Data de Validade"

#renomeia colunas
colnames(linhas) <- c("numero-linha",
                  "nome-linha",
                  "situacao",
                  "cod-deleg",
                  "nome-deleg",
                  "cod-tipo-utilizacao",
                  "nome-tipo-utilizacao",
                  "codigo-tipo-contrato",
                  "nome-tipo-contrato",
                  "numero-contrato",
                  "vencimento-contrato",
                  "inicio-vigencia",
                  "n-veiculos",
                  "tarifa-min",
                  "obs")


#Adiciona o arquivo de data ao projeto

usethis::use_data(linhas, overwrite =TRUE)


