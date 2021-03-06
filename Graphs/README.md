

## Sources for new graphs ideas/inspiration:
* <https://chartmaker.visualisingdata.com/>

* <https://d3js.org/> - Data driven documents, javascript FOSS library
* <https://vizzlo.com/graphs>
* <https://www.datawrapper.de/>
* <https://rawgraphs.io/gallery>

* <https://www.reddit.com/r/DataArt/>
* <https://www.reddit.com/r/dataisbeautiful/>

#### Which Kind of Visual should I choose?

* <http://selection.datavisualization.ch/>
* http://ft-interactive.github.io/visual-vocabulary/

* <https://www.data-to-viz.com/index.html>
* <https://datavizproject.com/>

#### Color blindness considerations:
* <https://medialab.github.io/iwanthue/>
* <https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3>

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


* Line_plot:

```

        ggplot() + geom_line(data = data_frame(), aes(Dates, real_SP500,colour="red"))+
          geom_line(data = data_frame(), aes(Dates, SP500,colour="green"))+
          labs(title="SP500 Real vs Nominal\n", x="Year", y="SP500 ($ value)") +
          scale_y_continuous(labels = dollar) +
          scale_color_hue(labels = c("Nominal","Real @2020 $")) +
          guides(color=guide_legend("Legend"))
          
          
           data_frame() %>% 
           ungroup() %>%
          plot_ly(x = ~Dates, y = ~real_SP500, name = 'SP500 inflation corrected', type = 'scatter', mode = 'lines')  %>% 
            add_trace(y = ~SP500, name = 'SP500 value', mode = 'lines') %>%   
            layout(title = 'SP500 trend',
               xaxis = list(title = 'Year'),
               yaxis = list(title = 'SP500 (Real vs nominal $)'))
          
```

* Scatter plot - good to see correlation between variables



* Connected scatter plot
* Bubble chart

        <https://www.gapminder.org/tools/?from=world#$chart-type=bubbles&url=v1> - fantastic example an how much information can be conveyed with an animated Scatter plot

* Sparkline

* Slope graph

* Butterfly chart
* Tree map - for long tail data / hierarchical data
* Bar tree map
* Mekko chart
* Heatmap
* Pie charts - recommended for few categories only 2-4
* Cox Comb
* Bar chart
* Stacked bar chart

* Funnel visualization - great options in the following contexts:

        * When the data is sequential and moves through at least four stages.
        * When the number of items in the first stage is expected to be greater than the number of items in the final stage.
        * To calculate a potential outcome (revenue, sales, deals, and so on) by stages.
        * To calculate and track conversion and retention rates.
        * To reveal bottlenecks in a linear process.
* Waterfall

        * Visualize changes over time or across different categories.
        * Audit the major changes that contribute to the total value.
        * Plot your organization's annual profit by showing various sources of revenue to help determine the total profit (or loss).
        * Illustrate the beginning and ending headcount for your organization in a year.
        * Visualize how much money you earn and spend each month and the running balance for your account.

* Line plot
* Combo chart
* Stacked area chart

* Node-link diagram
* Chord diagram 

        <https://bost.ocks.org/mike/uberdata/>
        
* Ven's Diagram

* Radar/Spider chart - use with caution if there is too much output data

* Gauge chart
* Maps 

        * Choropleth 
        * 
