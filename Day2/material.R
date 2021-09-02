library(mvtnorm)


g1 <- rmvnorm(30, mean = c(1,2))
g2 <- rmvnorm(30, mean = c(5,9))

easy_data <- rbind(g1,g2)


plot(easy_data, pch = 19, col = kmeans(easy_data, centers = 3)$cluster)



my_imputer <- function(v){
  napos <- which(is.na(v))
  if (sum(napos) == 0) {
    return(v)
  } else {
    min_v <- min(v, na.rm = TRUE)
    new_numb <- runif(length(napos),0,min_v)
    u <- v
    u[napos] <- new_numb
    return(u)
  }
}


berry_clean %>% 
  mutate(across(all_of(metabolites),my_imputer))

