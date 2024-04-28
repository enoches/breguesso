# Simples testes


# RASCUNHO - PODE DELETAR


library(usethis)
use_git_credentials()
github_token()
browse_github_token()
edit_r_environ()



# sobre ler arquiovos fora do rstudio project ----------------------------------------------------------


# ver https://community.rstudio.com/t/accessing-common-reference-files-from-multiple-rstudio-projects/35285

library(fs) 
library(readr)
library(readxl)


# C:/Users/Enoch/workspace_ds/_stuff-dados/german_credit_21.xlsx

x <- "C:/Users/Enoch/workspace_ds/_stuff-dados/german_credit_21.xlsx"

x1 <- read_xlsx("C:/Users/Enoch/workspace_ds/_stuff-dados/german_credit_21.xlsx") #ok

x1.1 <- read_xlsx(x)

fs::path("C:", "Users", "Enoch", "workspace_ds", "_stuff-dados", "german_credit_21.xlsx")


x2 <- as.character(
  fs::path("C:", "Users", "Enoch", "workspace_ds", "_stuff-dados", "german_credit_21.xlsx")
  )


x2.2 <- read_xlsx(x2)



x3 <- as.character(
  fs::path("..", "_stuff-dados", "german_credit_21.xlsx")
)


x3.3 <- read_xlsx(x3)


waldo::compare(x1.1, x2.2)
