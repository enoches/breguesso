## 01 ----
# Bd alaska_flights: Replique o gr·°fico de dispers„o feito na
# aula 05. O que o gr·fico mostra? Em seguida adicione uma 
# terceira estatÌstica (ex: cor ou tamanho) ao gr·fico mapeando a
# outra vari·vel.
library(ggplot2)
library(dplyr)
library(nycflights13)
ggplot(data = alaska_flights, 
       mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_point(alpha = 0.7)
ggplot(data = alaska_flights, 
       mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_point(alpha = 0.5, color="blue" )
# o gr·fico mostra a vari·vel atraso na partida = dep_delay, contra a vari·vel atraso na chegada = arr_delay
# existe uma relaÁ„o positiva entre dep_delay e arr_delay
# existe uma grande massa de pontos prÛximos do (0,0), o que mostra que grande parte dos vÙos n„o saÌram nem chegaram atrasados
## 02 ---- 
# Bd flights_II: Replique o gr·fico de dispers„o feito na
# aula 05, desta vez mapeando a vari·vel "carrier" .A estatÌstica de
# colour. No mesmo gr·fico, aplique transparÍncia nos pontos, e veja
# se melhora a visualizaÁ„o.
flights_II <- flights %>% 
  filter(carrier %in% c("AS", "F9"))
flights_II
ggplot(
  data = flights_II,
  mapping = aes(
    x = dep_delay,
    y = arr_delay,
    colour = carrier
  )
) +
  geom_point(alpha = 0.4)
## 03 ---- 
# Bd early_january_weather: Replique o gr√°fico de linha
# feito na aula 05. Em seguida acrescente a marca√ß√£o dos pontos
# (cada par ordenado de `time_hour` e `temp`).
early_january_weather
ggplot(data = early_january_weather, 
       mapping = aes(x = time_hour, y = temp)) +
  geom_line(lwd=2) + 
  geom_point()
## 04 ---- 
# Bd late_january_weather: Come√ße fazendo um gr√°fico de
# linha como o da quest√£o anterior. Por√©m, o banco de dados deste
# exerc√≠cio possui informa√ß√µes para dois aeroportos (vari√°vel 
# `origin`). Diante disso, utilize uma FACETA para obter um
# gr√°fico de linha para cada um dos aeroportos.
late_january_weather <- weather %>% 
  filter(origin %in% c("EWR", "JFK") & month == 1 & day > 15)
late_january_weather
ggplot(data = late_january_weather, 
       mapping = aes(x = time_hour, y = temp)) +
  geom_line() + 
  facet_wrap(~ origin)
