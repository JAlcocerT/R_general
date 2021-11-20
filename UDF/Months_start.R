
require(scales)

library(dplyr)

library(priceR) #adjust_for_inflation()
library(BatchGetSymbols) #get.clean.data()



months_start <- function(df)
{
  
  df1 <- data.frame(df$price.close,df$ref.date)
  names(df1)[1] <- "Index"
  names(df1)[2] <- "Dates"
  
  df1 <- df1 %>% 
    mutate(dates = as.Date(Dates)) %>% 
    mutate(yr_mnth = format(Dates, '%Y-%m')) %>% 
    group_by(yr_mnth) %>% 
    filter(Dates == min(Dates)) #    filter(Dates == max(Dates)) to have the last day
  
  
  return(df1)
}


#TEST

df.sp500 <- get.clean.data('^GSPC',
                           first.date = as.Date('1970-01-01'),
                           last.date = Sys.Date())


test_func <- months_start(df.sp500)
names(test_func)[1] <- "SP500"

test_func["real_SP500"] <- adjust_for_inflation(test_func$SP500, format(test_func$Dates, format = "%Y"), "US", to_date = 2020)

# ggplot(data = test_func, aes(test_func$Dates, test_func$real_SP500)) + geom_point() 

ggplot() + geom_line(data = test_func, aes(test_func$Dates, test_func$real_SP500,colour="red"))+
  geom_line(data = test_func, aes(test_func$Dates, test_func$SP500,colour="green"))+
  labs(title="SP500 Real vs Nominal\n", x="Year", y="SP500 ($ value)") +
  # xlab('Year') +
  # ylab('SP500') +
  scale_y_continuous(labels = dollar) +
  scale_color_hue(labels = c("Real @2020 $", "Nominal")) +
  guides(color=guide_legend("Legend"))






