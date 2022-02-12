#Import ESS data from data file

df <- haven::read_dta(here::here('data/ESS8e02_2.dta'), encoding = 'latin1')

#View(df)

