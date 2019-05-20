library(wordcloud2)
adj_words <- c("inclusive", "sensible", "geographical", "geographic",
               "mountainous", "northwestern", "own", "important",
               "regional", "central")
adj_freq <- c(34, 34, 1, 1, 4, 4, 141, 141, 13, 13)
n_words <- c("environment", "development", "bioregional", "bioregion",
             "independence", "secession", "way", "part", "freedom",
             "democracy")
n_freq <- c(48, 48, 97, 97, 31, 31, 197, 197, 162, 162)

adj_df <- data.frame(word=adj_words, freq=adj_freq)
n_df <- data.frame(word=n_words, freq=n_freq)
all_df <- data.frame(word=c(adj_words, n_words), 
                     freq=c(adj_freq, n_freq))
all_df$freq <- as.integer(sqrt(all_df$freq))

wordcloud2(adj_df)
wordcloud2(n_df)
wordcloud2(all_df, shape = "triangle")
