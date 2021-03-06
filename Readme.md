## Description of the repository:

* API
  * coinmarketcapr
  * rbitcoin
  * quantmod
* Animations
* Dashboards
* Graphs
   *  Box plot
   *  Line plot
   *  Scatter plot
   *  Connected scatter plot
   *  Slope graph
   *  Butterfly chart
* Maps
* Rmd
* SQL
* UDF
   * Cumulative_difference
   * Months_start
   * Percentage_difference



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```


```{r intro}

# create a list
L <- list('abc', 1:5, 'dec')

# print list
print(L)

print(L[1])



# create a list
L <- list('abc',
          1:5,
          'dec')
# print list


my_vec <- c(2, 1, 4, 3, 1)
sorted_vec <- sort(x = my_vec, decreasing = TRUE)
print(sorted_vec)



# set x
x <- 1
# set y
y <- 'My humble text'

library(dplyr)
iris_mean<-summarize(group_by(iris,Species),
slength=mean(Sepal.Length),swidth=mean(Sepal.Width),
plength=mean(Petal.Length),pwidth=mean(Petal.Width))


x<-rnorm(15)
y<-rnorm(15)
df1<-data.frame(x,y)
```


## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

```{r pressure, echo=FALSE}
# library
library(ggplot2)
#install.packages("ggExtra")
library(ggExtra)
 
# The mtcars dataset is proposed in R
head(mtcars)
 
# classic plot :
p <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, size=cyl)) +
      geom_point() +
      theme(legend.position="none")
 
# with marginal histogram
p1 <- ggMarginal(p, type="histogram")
 
# marginal density
p2 <- ggMarginal(p, type="density")
 
# marginal boxplot
p3 <- ggMarginal(p, type="boxplot")
p3
```

```{r pressure, echo=FALSE}

my_vec <- c(2, 1, 4, 3, 1)
sorted_vec <- sort(x = my_vec, decreasing = TRUE)
print(sorted_vec)

```


```{r pressure, echo=FALSE}

 #R packages can be accessed and installed from different
#sources. The main being CRAN (The Comprehensive R Archive network),
#and Github. It???s worth knowing that the quantity and diversity of R packages increase every day.



#To find out the
#current amount of packages on CRAN, type and execute the following commands in the prompt:
# get a matrix with available packages
df_cran_pkgs <- available.packages()
# find the number of packages
n_cran_packages <- nrow(df_cran_pkgs)
# print it
print(n_cran_packages)

#check the amount of locally installed packages in R with
#the installed.packages command:
# find number of packages currently installed
n_local_packages <- nrow(installed.packages())
print(n_local_packages)

```



```{r install packages from CRAN}
# install package readr
install.packages("readr")

# load package readr
library(readr)
```


```{r install packages from GITHUB}
# install devtools first
install.packages('devtools')



#In the following example, we will install the development version of package dplyr:
# install ggplot2 from github
devtools::install_github("hadley/dplyr")

```
```{r  }
# set x
x <- 123
# set my_x, my_y and my_z in one line
my_x <- 1; my_y <- 2; my_z <- 3
```




```{r  }
# create numeric atomic vector
x <- c(1, 2, 3)
# print it
print(x)


# create character atomic vector
y <- c('text 1', 'text 2', 'text 3', 'text 4')
# print it
print(y)


# a mixed vector
x <- c(1, 2, '3')
# print result of forced conversion
print(x)


```




```{r  }

# set vec
x <- 1:10
# print the textual representation of a vector
print(str(x))


# set x
x <- 2
# print customized message
message('The value of x is ', x)


# set size and vector
my_size <- 
my_vec <- 1:my_size
# define string vector
my_str <- paste0('My value is equal to ', my_vec)
# print it
print(my_str)



```


```{r  }


# create atomic vector
x <- c(2, 3, 3, 4, 2,1)
# get length of x
n <- length(x)

print(n)

```




```{r  }

# create a matrix
M <- matrix(1:20, nrow = 4, ncol = 5)
# print matrix
print(M)


my_nrow <- nrow(M)
my_ncol <- ncol(M)
my_n_elements <- length(M)

# display messages
message('The number of lines in M is ', my_nrow)

message('The number of columns in M is ', my_ncol)

message('The number of elements in M is ', my_n_elements)


# set text object
my_char <- 'abcde'
# print result of length
print(length(my_char))


```

```{r  }

 # set x
my_x <- c(1, 5, 4, 3, 2, 7, 3.5, 4.3)

# get the third element of x
elem_x <- my_x[3]
# print it
print(elem_x)



```






```{r  }

# Selecting Elements from an Atomic
#Vector

# set x
my_x <- c(1, 5, 4, 3, 2, 7, 3.5, 4.3)

# get the third element of x
elem_x <- my_x[3]
# print it
print(elem_x)


# set vector with indices
my_idx <- (length(my_x)-1):length(my_x)
# get last and penultimate value of my_x
piece_x_1 <- my_x[my_idx]
# print it
print(piece_x_1)


# set object
my_vec <- c(1, 2, 3)
# print non-existing fourth element
print(my_vec[4])


# find all values in my_x that is greater than 3
piece_x_2 <- my_x[my_x>3]
# print it
print(piece_x_2)


# find all values of my_x that are greater than 2 and lower then 4
piece_x_3 <- my_x[ (my_x > 2) & (my_x < 4) ]
print(piece_x_3)

# find all values of my_x that are lower than 3 or higher than 6
piece_x_4 <- my_x[ (my_x < 3) | (my_x > 6) ]
# print it
print(piece_x_4)

```


Moreover, logic indexing also works with the interaction of different objects.
That is, we can use a logical condition in one object to select items from
another:

```{r  }

# set my_x and my.y
my_x <- c(1, 4, 6, 8, 12) #and select them here
my_y <- c(-2, -3, 4, 10, 14) #it takes 3,4,5
# find all elements of my_x where my.y is higher than 0
my_piece_x <- my_x[my_y > 0 ]
# print it
print(my_piece_x)

```


```{r create logical object }
# create a logical object
my_logical <- my_y > 0
# print it
print(my_logical)

# find its class
class(my_logical)


```




```{r remove object from memory }

# set x
x <- 1
# remove x
rm('x')


#clean all memory
#rm(list = ls())
```




```{r working directory }
 
# get current dir
my_dir <- getwd()
# display it
print(my_dir)


#change working directory

# set where to change directory
#my_d <- 'C:/My Research/'
# change it
setwd(my_dir)

my_path <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my_path)
setwd("C:/Users/jesus.alcocer/OneDrive - Cloud Best sp. z o.o/R/R-general")

```






```{r read csv }
 
# read CSV file
setwd("C:/Users/jesus.alcocer/OneDrive - Cloud Best sp. z o.o/R/R-general")
df <- read.csv('Nested_pie_data.csv')
print(head(df))

#install.packages("tidyverse")
#install.packages("dplyr")
#library(dplyr)
library(tidyverse)
glimpse(df) #also part of dplyr
 
```
```{r exporting data to csv}
 
# set the number of rows
N <- 100
# set dataframe
my_df <- data.frame(y = runif(N),
z = rep('a',N))
# print it
print(head(my_df))


#install.packages("readr")
library(readr)
# set file out
f_out <- 'temp.csv'
# write to files
write_csv(x = my_df,
file = f_out)

```


```{r exporting data to XLSX}

install.packages("writexl")
library(writexl)
# set number of rows
N <- 2500
# create random dfs
my_df_A <- data.frame(y = seq(1,N),z = rep('a',N))
# set files
my_file_1 <- 'temp_writexl.xlsx'
my_file_2 <- 'temp_xlsx.xlsx'
# test export
time_write_writexl <- write_xlsx(x = my_df_A,path = my_file_1)


####

#needs java 64 bits installed
 
install.packages("xlsx")
library(xlsx)
# create dataframe
N <- 50
my_df <- data.frame(y = seq(1,N), z = rep('a',N))
# set excel file
f_out <- 'temp.xlsx'

# write to excel
write.xlsx(x = my_df, file = f_out, sheetName = "my df")


####


# create two dataframes
N <- 25
my_df_A <- data.frame(y = seq(1, N),
z = rep('a', N))
my_df_B <- data.frame(z = rep('b', N))
# set file out
f_out <- 'data/temp.xlsx'
# write in different sheets
write.xlsx(x = my_df_A,
file = f_out,
sheetName = "my df A")
write.xlsx(x = my_df_B,
file = f_out,
sheetName = "my df B",
append = TRUE )

```



```{r read xlsx or xls }
 
#############PAGE 103!!!!!!!!!!!!!!

# set excel file
 # Loading
library("readxl")
# xls files
my_data <- read_excel("Nested_pie_data.xlsx")

# Specify sheet by its name
my_data <- read_excel("Nested_pie_data.xlsx", sheet = "Sheet1")


# print with head (first five rows)
print(head(my_data)) 
 
```

```{r read clipboard }

my_data <- read.table(file = "clipboard", 
                      sep = "\t", header=TRUE)

```

When using list.files,
it is recommended to set input full.names as TRUE. This option makes sure
that the names returned by the function contain the full path

```{r directories }
 

# list files in data folder
my_files <- list.files(path = "C:/Users/jesus.alcocer/OneDrive - Cloud Best sp. z o.o/R/R-general", full.names = TRUE)
print(my_files)

# list all files with the extension .Rmd
list.files(pattern = "*.Rmd")

dir.exists('temp')


 
```

It is worth noting that you can also list the files recursively, that is,
list all files from all sub-folders contained in the original address

```{r directories and files }

# store names of directories
my_dirs <- list.dirs(recursive = F)
# print it
print(my_dirs)




# list all files for all subfolders (IT MAY TAKE SOME TIME...)
#list.files(path = getwd(), recursive = T, full.names = TRUE)
list.files(path = "C:/Users/jesus.alcocer/OneDrive - Cloud Best sp. z o.o/R", recursive = T, full.names = TRUE)
 
```




```{r download files from the internet - TBF }

# set link
link_dl <- 'go.microsoft.com/fwlink/?LinkID=521962'
link_dl <- 'https://minebest-my.sharepoint.com/:x:/r/personal/jesus_tagua_cloudbest_com/_layouts/15/Doc.aspx?sourcedoc=%7B2590C5C9-C286-4F0A-8724-22352479A901%7D&file=Nested_pie_data.xlsx&action=default&mobileredirect=true'
local_file <- 'downloaded_with_R.xlsx' # name of local file
download.file(url = link_dl, destfile = local_file)


```




First, R will connect to the database and return a connection
object. Based on this connection, we will send queries for importing data
using the SQL language.

```{r DB connection SQLLITE }
#https://www.youtube.com/watch?v=vchmuyLzjkg


# set name of SQLITE file
f_sqlite <- afedR::get_data_file('SQLite_db.SQLITE')
# open connection
my_con <- dbConnect(drv = SQLite(), f_sqlite)
# read table
my_df <- dbReadTable(conn = my_con,
name = 'MyTable1') # name of table in sqlite
# print with str
glimpse(my_df)



```




```{r  web scrapping}
#SP500 Index from Wikipedia

library(rvest)
# set url and xpath
my_url <- paste0('https://en.wikipedia.org/wiki/',
'List_of_S%26P_500_companies')
my_xpath <- '//*[@id="mw-content-text"]/div/table[1]'
# get nodes from html
out_nodes <- html_nodes(read_html(my_url),
xpath = my_xpath)
# get table from nodes (each element in
# list is a table)
df_SP500_comp <- html_table(out_nodes)

df_SP500_comp <- df_SP500_comp[[1]]
# change column names (remove space)
names(df_SP500_comp) <- make.names(names(df_SP500_comp))





```






```{r  data frames}

library(tidyverse)

# set tickers
tickers <- c(rep('AAP',5),
rep('COG', 5),
rep('BLK', 5),
rep('CAM',5) )
# set a date vector
dates <- as.Date(rep(c("2010-01-04", "2010-01-05", "2010-01-06",
"2010-01-07", "2010-01-08"), 4) )
# set prices
prices <- c(40.38, 40.14, 40.49, 40.48, 40.64,
46.23, 46.17, 45.97, 45.56, 45.46,
238.58, 239.61, 234.67, 237.25, 238.92,
43.43, 43.96, 44.26, 44.5, 44.86)
# create tibble/dataframe
my_df <- tibble(tickers, dates, prices)

# print its first 5 rows
print(head(my_df))

# check content of my_df
glimpse(my_df)

# check variation my_df
summary(my_df)

#col names
names(my_df)
colnames(my_df)

# set temp df
temp_df <- my_df
# change names
names(temp_df) <- paste0('Col', 1:ncol(temp_df))
# check names
names(temp_df)

# isolate columns of df
my_tickers <- my_df$tickers
print(my_df[['tickers']])

# accessing rows 1:5, column 1
print(my_df[1:5, 1])

# selecting rows 1 to 3, columns 'ticker' and 'prices'
print(my_df[1:3, c('tickers', 'prices')])


###160


```




The pipeline Operator (%>%)
An important feature of the tidyverse universe is the extensive use of the
pipeline operator, first proposed in package magrittr (Bache and Wickham,
2020) and defined by symbol %>%. The pipeline operator allows data operations to be performed sequentially and in a modular fashion, increasing
readability and maintainability of the resulting code.
Imagine a situation where we have three functions to be applied to a
dataframe. Each function depends on the output of another function. This
requires chaining your calls, so one output feeds an object to the next call.
Using the pipeline operator, we can write the dataframe manipulation
procedure with the following code:



```{r  data frames}

my_tab <- my_df %>%
fct1(arg1) %>%
fct2(arg2) %>%
fct3(arg3)

#We use symbol %>% at the end of each line to ???glue??? the operations.


```
