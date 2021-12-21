### EDA

```
# Glimpse the nc_income data
glimpse(nc_income)

# Summarize the nc_income data
summary(nc_income)

# Left join nc_income onto shp@data 
shp_nc_income <- shp@data %>% 
                left_join(nc_income, by = c("GEOID10" = "zipcode"))
# Print the number of missing values of each variable in shp_nc_income
shp_nc_income  %>%
  summarize_all(funs(sum(is.na(.))))
```
