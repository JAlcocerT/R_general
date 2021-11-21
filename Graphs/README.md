### Plotly

* animations <https://plotly.com/r/animations/>
* sliders <https://plotly.com/r/sliders/>



### GGPLOT2 vs Plotly


* Box_plot:

```

ggplot(Index_df, aes(x="All history", y=Index_df$percentage_differenced))+geom_boxplot()

plot_ly(y = ~Index_df$percentage_differenced, type = "box")

plot_ly(y = ~Index_df$percentage_differenced, x = ~Index_df$decades, type = "box")

        data_frame() %>%  plot_ly(x = ~decades, y = ~percentage_differenced, type = "box") %>%   
        layout(title = 'Monthly index variation percentages by decade', xaxis = list(title = 'Decade'), 
         yaxis = list(title = 'Variation (Monthly %)'))

```
