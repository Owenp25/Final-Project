library(tidyverse)
################################################################################
######################## Function to do partial F-tests ########################
################################################################################
Partial_F <- function(Y,x){
  p <- ncol(Y); 
  N <- nrow(Y); 
  k <- n_distinct(x)
  Y <- as.matrix(Y)
  
  lam_full <- summary(manova(Y~x),test="Wilks")$stats[1,2]
  lam_part <- rep(-1,p)
  
  if(p > 2) {
    for(i in 1:p){
      lam_part[i] <- summary(manova(Y[ , -i] ~ x),
                             test ="Wilks")$stats[1,2]
    }    
  }
  
  if(p == 2){
    for(i in 1:p){
      lam_part[i] <- tidy(aov(Y[ , -i] ~ x))[1, 5] %>% as.numeric()
    }  
  }
  
  if(!is.null(colnames(Y))){names(lam_part) <- colnames(Y)}
  
  F_lam <- lam_full/lam_part
  
  F_stat <- (N-k-p+1)/(k-1)*(1-F_lam)/F_lam
  
  p_val <- round(pf(F_stat, df1=k-1, df2= N-k-p+1, lower.tail=F),4)
  
  return(data.frame(Partial_Test = lam_part,
                    F_stat = F_stat,
                    P_value = p_val) %>%
           arrange(F_stat))
}