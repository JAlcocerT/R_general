#This function adds a news column on the given DF that will be the
#percentage difference of the selected column_name in the input.

#It returns the modified DF - with the "percentage_differenced" column included

column_1 <- c(1, 2, 3)
column_2 <- c(21000, 23400, 30000)
df_example <- data.frame(column_1, column_2)

percentage_difference <- function(my_df,column_name)
{
  
  percentage_difference=rep(0,nrow(my_df))
  percentage_difference[1] <- 0
  
  for(i in 2:nrow(my_df)){
    percentage_difference[i] <- (my_df[i,column_name]-my_df[i-1,column_name])/my_df[i-1,column_name]
  }
  
  my_df["percentage_differenced"] <- unlist(percentage_difference)
  
  return(my_df)
}


test <- percentage_difference(my_df=df_example,column_name="column_2")