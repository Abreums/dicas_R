# Dado um vetor de contendo frases, 
# criar um data frame com coluna 
# contendo o número de palavras de cada frase

frases <- c("Olá", "Bom dia", "Volto logo", "Acabou de chegar")
require(stringr)
require(dplyr)
df <- data.frame(frases)

# função para contar número de palavras usando REGEX
count_words <- function(x) {str_count(x, "\\S+")}

df <- df %>% 
  mutate(words = sapply(frases, count_words)) %>% 
  arrange(words) # a ordenação é opcional

