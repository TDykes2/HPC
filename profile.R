Rprof()
  games <- c()
  for(i in 1:100000) {
    doors <- c("A", "B", "C")
    ourdoor <- sample(doors, size = 1, replace = FALSE)
    cardoor <- sample(doors, size = 1, replace = FALSE)
    
    switched <- sample(doors[-which(ourdoor != doors & cardoor!=doors)], size = 1)
    
    if(switched == cardoor) {
      games[i] <- 1
    } else {games[i] <- 0}
    
  }
  mean(games == 1)

Rprof(NULL)
summaryRprof()