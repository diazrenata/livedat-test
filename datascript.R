library(dplyr)

# Open new data file

new_data <- read.csv('new-data/rodent_abundance_new.csv', 
                     stringsAsFactors = F)

# Open old data for comparison

base_data <- read.csv('data/rodent_abundance.csv', 
                      stringsAsFactors = F)

# Check that it has the appropriate column names

for(i in 1:ncol(base_data)) {
  if(colnames(new_data)[i] != colnames(base_data)[i]) {
    print("Colname mismatch:")
    print(colnames(new_data)[i])
    print(colnames(base_data)[i])
    break()
  }
}

if(sum((colnames(new_data)[i] != colnames(base_data)[i])) == 0) {
  print("Columns match")
}

# Check that it has appropriate periods

max_period <- 1000
if(nrow(filter(new_data, period > max_period)) > 0) {
  print('Unlikely period #:')
  print((filter(new_data, period > max_period)))
} else {
  print("Period #'s OK")
}

# Fix the error in the periods

new_data[ which(new_data$period == 4620), 'period'] <- 462

# Append data to old data file

updated_data <- rbind(base_data, new_data)

write.csv(updated_data, 'data/rodent_abundance.csv', row.names = F)