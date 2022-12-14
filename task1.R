path = '/Users/vladaefremenko/R_lab1/data/lab1_e1.csv'

fix_column <- function(column){
  fixed_column <- sub(' ', '', column)
  fixed_column <- as.numeric(fixed_column)
  if(any(is.na(fixed_column))){
    return(column)
  }
  return(fixed_column)
}

fix_data <- function(df){
  fixed_df <- lapply(df, fix_column)
  fixed_df <- data.frame(fixed_df)
  return(fixed_df)
}

df <- read.csv(path)
fixed_df <- fix_data(df)
print(fixed_df)
