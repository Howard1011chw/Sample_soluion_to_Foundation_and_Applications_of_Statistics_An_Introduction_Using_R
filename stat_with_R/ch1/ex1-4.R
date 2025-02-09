require('fastR2')
# part a
tally(~number , data = LittleSurvey)
# part b
gf_histogram(~number , data = LittleSurvey, bins = 30)+
  scale_x_continuous(breaks=seq(1,30,by=1))
# part c 
# a helper function
get_most_and_least <- function(x) {
  # Create a frequency table
  freq_table <- table(x)
  
  # Get the most frequent element
  most_frequent <- names(sort(freq_table, decreasing = TRUE)[1])
  
  # Get the least frequent element
  least_frequent <- names(sort(freq_table)[1])
  
  return(list(most_frequent = most_frequent, least_frequent = least_frequent))
}
get_most_and_least(LittleSurvey[['number']])
