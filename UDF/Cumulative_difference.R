#This function adds a news column on the given DF that will be the
#cumulative difference of the selected column_name in the input.

#It returns the modified DF - with the "Cumulative_differenced" column included


cumulative_diference_V2 <- function(my_df,column_name)
{
  
  cumulative_diference=rep(0,nrow(my_df))
  cumulative_diference[1] <- my_data[1,column_name]
  
  for(i in 2:nrow(my_df)){
    cumulative_diference[i] <- my_df[i,column_name]-my_df[i-1,column_name]
  }
  
  my_df["Cumulative_differenced"] <- unlist(cumulative_diference)
  
  return(my_df)
}


#test <- cumulative_diference_V2(my_df=my_data,column_name="Stacked_forever")

