# Assignment 6: Data import and tidy data


- To start, first load all the required packages with the following
  code. Install them if they are not installed yet.

``` r
library(tidyverse)
```

    ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ✔ forcats   1.0.0     ✔ stringr   1.5.1
    ✔ ggplot2   3.5.2     ✔ tibble    3.3.0
    ✔ lubridate 1.9.4     ✔ tidyr     1.3.1
    ✔ purrr     1.1.0     
    ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
library(knitr)
```

**Exercise 1. Tibble and Data Import**

Import the data frames listed below into R and
[parse](https://r4ds.had.co.nz/data-import.html#parsing-a-vector) the
columns appropriately when needed. Watch out for the formatting oddities
of each dataset. Print the results directly, **without** using
`kable()`.

**You only need to finish any three out of the five questions in this
exercise in order to get credit.**

  

#### **1.1 Create the following tibble manually, first using `tribble()` and then using `tibble()`. Print both results. \[We didn’t have time to cover this in class, but look up how these functions work [here](https://r4ds.had.co.nz/tibbles.html#creating-tibbles)\]**

`tribble()`:

`tibble()`:

  

#### **1.2 Import `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/dataset2.txt` into R. Change the column names into “Name”, “Weight”, “Price”.**

  

#### **1.3 Import `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/dataset3.txt` into R. Watch out for the first few lines, missing values, separators, quotation marks, and deliminaters.**

  

#### **1.4 Import `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/dataset4.txt` into R. Watch out for comments, units, and decimal marks (which are `,` in this case).**

  

#### **1.5 Import `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/dataset5.txt` into R. Parse the columns properly. As a reminder, you can read about parsing date and time data [here](https://r4ds.had.co.nz/data-import.html#readr-datetimes). Write this imported and parsed data frame into a new csv file named `dataset5_new.csv` in your `problem_sets` folder.**

  

## **Exercise 2. Weather station**

This dataset contains the weather and air quality data collected by a
weather station in Taiwan. It was obtained from the Environmental
Protection Administration, Executive Yuan, R.O.C. (Taiwan).

#### **2.1 Variable descriptions**

- The text file
  `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/2015y_Weather_Station_notes.txt`
  contains descriptions of different variables collected by the station.

- Import it into R and print it in a table as shown below with
  `kable()`.

`#` indicates invalid value by equipment inspection  
`*` indicates invalid value by program inspection  
`x` indicates invalid value by human inspection  
`NR` indicates no rainfall  
blank indicates no data

  

#### **2.2 Data tidying**

- Import
  `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/2015y_Weather_Station.csv`
  into R. As you can see, this dataset is a classic example of untidy
  data: values of a variable (i.e. hour of the day) are stored as column
  names; variable names are stored in the `item` column.

- Clean this dataset up and restructure it into a tidy format.

- Parse the `date` variable into date format and parse `hour` into time.

- Turn all invalid values into `NA` and turn `NR` in rainfall into `0`.

- Parse all values into numbers.

- Show the first 6 rows and 10 columns of this cleaned dataset, as shown
  below, *without* using `kable()`.

*Hints: you don’t have to perform these tasks in the given order; also,
warning messages are not necessarily signs of trouble.*

  

Before cleaning:

  

After cleaning:

  

#### **2.3 Using this cleaned dataset, plot the daily variation in ambient temperature on September 25, 2015, as shown below.**

  

#### **2.4 Plot the daily average ambient temperature throughout the year with a continuous line, as shown below.**

  

#### **2.5 Plot the total rainfall per month in a bar chart, as shown below.**

*Hint: separating date into three columns might be helpful.*

  

#### **2.6 Plot the per hour variation in PM2.5 in the first week of September with a continuous line, as shown below.**

*Hint: uniting the date and hour and parsing the new variable might be
helpful.*

  

## **Exercise 3. Camera data (OPTIONAL)**

This dataset contains information on 1038 camera models. It was obtained
from the following website:
<https://perso.telecom-paristech.fr/eagan/class/igr204/>

  

#### **3.1 Split brand names and model names**

- Import
  `https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/camera.csv`
  to R.

- You will see that the `Model` columns contains both the brand names
  and model names of cameras. Split this column into two, one with brand
  name, and the other with model name, as shown below.

- Print the first 6 rows of the new data frame with `kable()`.

*Hint: check the merge argument in `separate()`*

  

#### 3.2 Split product line names and model names

- Many model names start with a name for the product line, which is then
  followed by a name for the particular model.

- Select all Canon cameras, and further split the model names into
  product line names (in this case, they are either “Powershot” or
  “EOS”) and model names.

- Show the first 6 lines of this new data frame with `kable()`.

*Hint: notice that there are more than one possible separators.*

  
