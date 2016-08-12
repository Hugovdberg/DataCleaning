## ----load_libs, error=TRUE, warning=FALSE, message=FALSE-----------------
# Libraries to read inputs
library(readr) # v1.0.0

# Libraries to munge data
library(magrittr) # v1.5
library(plyr) # v1.8.4
library(dplyr) # v0.5.0

## ----download------------------------------------------------------------
# Configure remote and local data locations
data.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
data.dir = 'data'
data.file <- file.path(data.dir, 'UCI_HAR_Dataset.zip')
# Create local data directory if necessary
if (!dir.exists(data.dir)) {
    dir.create(data.dir, recursive = TRUE)
}
# Download the remote file to the data directory
if (!file.exists(data.file)) {
    download.file(url = data.url, destfile = data.file, overwrite = TRUE)
}
# Unzip the downloaded file
unzip(data.file, exdir = data.dir)
# Set new data directory
data.dir <- file.path(data.dir, 'UCI HAR Dataset')

## ----check_delims--------------------------------------------------------
# Create a list of the paths to the data files
data <- list(
    train.subject = file.path(data.dir, 'train', 'subject_train.txt'),
    train.X = file.path(data.dir, 'train', 'X_train.txt'),
    train.y = file.path(data.dir, 'train', 'y_train.txt'),
    test.subject = file.path(data.dir, 'test', 'subject_test.txt'),
    test.X = file.path(data.dir, 'test', 'X_test.txt'),
    test.y = file.path(data.dir, 'test', 'y_test.txt')
)
# Extract the first lines from each file in the list `data`
first_lines <- sapply(data, readLines, n = 20)
print(first_lines)

## ----field_widths, results='hold'----------------------------------------
# Calculate field widths assuming all fields have equal width
field_width.train <- sapply(first_lines[, 2], nchar, USE.NAMES = FALSE) / 561
field_width.test <- sapply(first_lines[, 5], nchar, USE.NAMES = FALSE) / 561
# Check if calculated field widths are internally consistent
paste('Train widths equal:', all(field_width.train == field_width.train[1]))
paste('Test widths equal:', all(field_width.test == field_width.test[1]))
paste('Train widths equal to Test widths:', 
      all(field_width.train == field_width.test))
# Store field_width for future usage and print it
field_width <- field_width.train[1]
paste('Field width:', field_width)

## ----read_data-----------------------------------------------------------
# Read the subject id's (numbered 1 to 30), using column name S
data$train.subject %<>% read_delim(delim = "\t", 
                                   col_names = "S",
                                   col_types = cols(col_factor(seq(1, 30))))
data$test.subject %<>% read_delim(delim = "\t", 
                                  col_names = "S",
                                  col_types = cols(col_factor(seq(1, 30))))

# Read the activity labels (numbered 1 to 6), using column name y
data$train.y %<>% read_delim(delim = "\t",
                             col_names = "y",
                             col_types = cols(col_factor(seq(1, 6))))
data$test.y %<>% read_delim(delim = "\t",
                             col_names = "y",
                             col_types = cols(col_factor(seq(1, 6))))

# Read the features as numeric
data$train.X %<>% read_fwf(col_positions = fwf_widths(rep(field_width, 561)),
                           col_types = paste0(rep("d", 561), collapse = ""))
data$test.X %<>% read_fwf(col_positions = fwf_widths(rep(field_width, 561)),
                          col_types = paste0(rep("d", 561), collapse = ""))

## ----check_dims----------------------------------------------------------
dims <- t(vapply(data, dim, numeric(2)))
colnames(dims) <- c('nrow', 'ncol')
print(dims)

## ----merge_data----------------------------------------------------------
data <- bind_rows(bind_cols(data$train.subject, data$train.X, data$train.y),
                  bind_cols(data$test.subject, data$test.X, data$test.y))

## ----set_activity_labels-------------------------------------------------
act_lab <- read_delim(file.path(data.dir, 'activity_labels.txt'),
                      delim = ' ',
                      col_names = c('id', 'label'),
                      col_types = cols(col_character(), col_character()))
data$y %<>% mapvalues(from = act_lab$id, to = act_lab$label)

## ----var_names-----------------------------------------------------------
# Read variable names
var_names <- read_delim(file.path(data.dir, 'features.txt'),
                        delim = ' ',
                        col_names = c("var_names"),
                        col_types = cols(col_skip(), col_character()))
# Convert data.frame to simple character vector
var_names <- unlist(var_names[[1]])
# Remove parentheses from the field names
var_names %<>%
    gsub('(\\(|\\))+', '', .)
# Set the variable names of the dataset
names(data) <- c('subject', var_names, 'activity')

## ----check_dupl_var_names------------------------------------------------
data <- data[grep('(-mean-|-std-|subject|activity)', names(data))]
paste('Number of duplicated variable names:', 
      sum(duplicated(names(data))))

## ------------------------------------------------------------------------
summarised <- data %>% 
    group_by(subject, activity) %>%
    summarise_each(funs(mean), -subject, -activity) %>%
    arrange(subject, activity)

