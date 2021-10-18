**bold** __bold_
*italics* _italics_
~~strikethrough~~

[link](https:....)

![](https:image)




---
title: "Investment Report"
date: "`r format(Sys.time(), '%d %B %Y')`"
output: html_document
---

```{r data, include = FALSE}
library(readr)
library(dplyr)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
investment_annual_summary
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country ==  "Brazil")

brazil_investment_projects
```


BBBB


---
title: "Investment Report"
date: "`r format(Sys.time(), '%d %B %Y')`"
output: html_document
---

```{r data, include = FALSE}
library(readr)
library(dplyr)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
investment_annual_summary
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30") 

brazil_investment_projects_2018
```

CCCC

---
title: "Investment Report"
date: "`r format(Sys.time(), '%d %B %Y')`"
output: html_document
---

```{r data, include = FALSE}
library(readr)
library(dplyr)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
investment_annual_summary
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30") 

brazil_investment_projects_2018

brazil_investment_projects_2018_total <- brazil_investment_projects_2018 %>%
  summarize(sum_total_investment = sum(total_investment, na.rm = TRUE)) 
```

The total investment amount for all projects in Brazil in the 2018 fiscal year was `r brazil_investment_projects_2018_total` million dollars.


DDDDDDD


---
title: "Investment Report"
date: "`r format(Sys.time(), '%d %B %Y')`"
output: html_document
---

```{r data, include = FALSE}
library(readr)
library(dplyr)
library(ggplot2) # Load the ggplot2 package here

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
ggplot(investment_annual_summary, aes(x = fiscal_year, y=dollars_in_millions, color=region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30")
```


EEEEEEEE



```{r data, include = FALSE}
library(readr)
library(dplyr)
library(ggplot2)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 

ggplot(brazil_investment_projects, aes(x=date_disclosed, y=total_investment, color=status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  )
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30") 
```

FFFFFFFFF




```{r data, include = FALSE}
library(readr)
library(dplyr)
library(ggplot2)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 

ggplot(brazil_investment_projects, aes(x = date_disclosed, y = total_investment, color = status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects in Brazil",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  )
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30") 

ggplot(brazil_investment_projects_2018, aes(x = date_disclosed, y = total_investment, color = status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects in Brazil in 2018",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  ) 
```


# Example



```{r setup, include = FALSE}
knitr::opts_chunk$set(out.width = '80%', fig.align= 'center', echo = TRUE)
```

```{r data, include = FALSE}
library(readr)
library(dplyr)
library(ggplot2)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```


## Datasets 

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 

ggplot(brazil_investment_projects, aes(x = date_disclosed, y = total_investment, color = status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects in Brazil",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  )
```

### Investment Projects in Brazil in 2018

```{r brazil-investment-projects-2018}
brazil_investment_projects_2018 <- investment_services_projects %>%
  filter(country == "Brazil",
         date_disclosed >= "2017-07-01",
         date_disclosed <= "2018-06-30") 

ggplot(brazil_investment_projects_2018, aes(x = date_disclosed, y = total_investment, color = status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects in Brazil in 2018",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  ) 
```



# Example




### Investment Projects in Brazil

The `investment_services_projects` dataset provides information about each investment project from 2012 to 2018. Information listed includes the project name, company name, sector, project status, and investment amounts.
```{r brazil-investment-projects, out.width='80%'}
brazil_investment_projects <- investment_services_projects %>%
  filter(country == "Brazil") 

ggplot(brazil_investment_projects, aes(x = date_disclosed, y = total_investment, color = status)) +
  geom_point() +
  labs(
    title = "Investment Services Projects in Brazil",
    x = "Date Disclosed",
    y = "Total IFC Investment in Dollars in Millions"
  )
```

# Example

### Investment Annual Summary

The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each region for each fiscal year, from 2012 to 2018.
```{r investment-annual-summary, out.width = '85%', fig.cap = 'Figure 1.1 The Investment Annual Summary for each region for 2012 to 2018'}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```


# Example


## Datasets 
### Investment Annual Summary
The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each of the following regions for each fiscal year, from 2012 to 2018:


- East Asia and the Pacific
- Europe and Central Asia
- Latin America and the Caribbean
- Middle East and North Africa
- South Asia, and Sub-Saharan Africa

# Example

## Datasets 
### Investment Annual Summary
The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each of the following regions for each fiscal year, from 2012 to 2018:

1. East Asia and the Pacific      
2. Europe and Central Asia        
3. Latin America and the Caribbean
4. Middle East and North Africa   
5. South Asia                     
6. Sub-Saharan Africa 



# Example 


```{r investment-annual-summary, out.width = '85%', fig.cap = 'Figure 1.1 The Investment Annual Summary for each region for 2012 to 2018.'}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

```{r tables}
kable(investment_region_summary, col.names = c('Region','Dollars in Millions'), align = ccc, caption = '"Table 1.1 The total investment summary for each region for the 2012 to 2018 fiscal years."')
```


# Example


```{r setup, include = FALSE}
knitr::opts_chunk$set(fig.align = 'center', echo = TRUE)
```

```{r data, include = FALSE}
library(knitr) # Load the knitr package here

## Datasets 
### Investment Annual Summary
The `investment_annual_summary` dataset provides a summary of the dollars in millions provided to each of the following regions for each fiscal year, from 2012 to 2018:

1. East Asia and the Pacific      
2. Europe and Central Asia        
3. Latin America and the Caribbean
4. Middle East and North Africa   
5. South Asia                     
6. Sub-Saharan Africa

```{r investment-annual-summary, out.width = '85%', fig.cap = 'Figure 1.1 The Investment Annual Summary for each region for 2012 to 2018.'}
ggplot(investment_annual_summary, aes(x = fiscal_year, y = dollars_in_millions, color = region)) +
  geom_line() +
  labs(
    title = "Investment Annual Summary",
    x = "Fiscal Year",
    y = "Dollars in Millions"
  )
```

```{r tables}
kable(investment_region_summary, col.names = c("Region","Dollars in Millions"),align = "cc", caption = "Table 1.1 The total investment summary for each region for the 2012 to 2018 fiscal years.")
```


# Example - code chunk options - include echo eval colapse

```{r setup, include = FALSE}
knitr::opts_chunk$set(fig.align = 'center', echo = FALSE)
```

# Example - warnings - error message warning

```{r data, message = FALSE}
library(readr)
library(dplyr)
library(ggplot2)

investment_annual_summary <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/d0251f26117bbcf0ea96ac276555b9003f4f7372/investment_annual_summary.csv")
investment_services_projects <- read_csv("https://assets.datacamp.com/production/repositories/5756/datasets/bcb2e39ecbe521f4b414a21e35f7b8b5c50aec64/investment_services_projects.csv")
```



# Example - add a table of content in yaml

---
title: "Investment Report"
output: 
  html_document:
    toc: TRUE
date: "`r format(Sys.time(), '%d %B %Y')`"
---


---
title: "Investment Report"
output: 
  html_document:
    toc: true
    toc_depth: 2
    number_sections: TRUE
date: "`r format(Sys.time(), '%d %B %Y')`"
---

---
title: "Investment Report"
output: 
  html_document:
    toc: true
    toc_float:
      collapsed: FALSE
      smooth_scroll: FALSE
    toc_depth: 3
date: "`r format(Sys.time(), '%d %B %Y')`"
---

toc
toc_depth
number_sections

for HTML:
toc_float #to see the table of content
collapsed
smooth_scroll


# Example - parametrize report

params
  country: Indonisia
  
params$country
`r params$country`

# Example - customizing the report (CSS)


it can be referenced in a styles.css file

color
background-color
font-family
font-size

and just:
html_document:
  css: styles.css

<style>
body {
  color:red;
}
</style>


<style>
body {
   color: #708090;
   font-family: Calibri;
   font-size: 16px;
   border-color: #708090;
   backgroundcolor: #708090;
#TOC {
}
pre {
}
#header {
opacity: 0.6;
}
}
</style>


h1.title {

}


<style>

#TOC{
  color:#708090;
  font-size:16px;
  border-color:#708090;
}

#header{
  color:#F08080;
  opacity:0.6;
  font-family:Calibri;
  font-size:20px;
}
body {
  color: #708090;
  font-family: Calibri;
  background-color: #F5F5F5;
}
pre {
  color: #708090;
  background-color: #F8F8FF;
}
</style>




<style>
#TOC {
  color: #708090;
  font-family: Calibri;
  font-size: 16px; 
  border-color: #708090;
}
h1.title {
  color: #F08080;
  background-color: #F5F5F5;
  opacity: 0.6;
  font-family: Calibri;
  font-size: 20px;
}
h4.author {
  color: #708090;
  font-family: Calibri;
  background-color: #F5F5F5;
}
h4.date {
  color: #708090;  
  font-family: Calibri;
  background-color: #F5F5F5;
}
body {
  color: #708090;
  font-family: Calibri;
  background-color: #F5F5F5;
}
pre {
  color: #708090;
  background-color: #F8F8FF;
}
</style>

