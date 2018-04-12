install.packages("ngram")
library("ngram")

txt <- "Senpai Kush has a religion. Senpai Kush is a person. Senpai is a teacher."
ctxt <- concatenate(txt)
str <- preprocess(ctxt, case = "upper", remove.punct = TRUE)
string.summary(str)
ng <- ngram (str, n = 2)
get.phrasetable(ng)

prob <- get.ngrams(ng)
prob