AAAAAA

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



