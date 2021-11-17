#This function adds a news column on the given DF that will be the
#cumulative difference of the selected column_name in the input.

#It returns the modified DF - with the "Cumulative_differenced" column included

#column_1 <- c(1, 2, 3)
#column_2 <- c(21000, 23400, 30000)
#df_example <- data.frame(column_1, column_2)

cumulative_difference <- function(my_df,column_name)
{
  
  cumulative_difference=rep(0,nrow(my_df))
  cumulative_difference[1] <- my_df[1,column_name]
  
  for(i in 2:nrow(my_df)){
    cumulative_difference[i] <- my_df[i,column_name]-my_df[i-1,column_name]
  }
  
  my_df["Cumulative_differenced"] <- unlist(cumulative_difference)
  
  return(my_df)
}


#test <- cumulative_difference(my_df=df_example,column_name="column_2")
