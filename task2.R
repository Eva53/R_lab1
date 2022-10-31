path = '/Users/vladaefremenko/R_lab1/data/lab1_e2.Rdata'

get_id <- function(dfs){
  new_df <- Reduce(function(x, y) merge(x, y, by='id'), dfs)
  result <- data.frame(id=new_df$id, mean_temp=rowMeans(new_df[, -1]))
  return(result)
}

load(path)
result_table <- get_id(all_data)
print(result_table)