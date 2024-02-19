#Create your list of key words 
key_words <- c("disaster", "plane", "fire", "explosion", "terrorist", 
               "wtc", "pentagon", "crash")

#Load in our file 
df <- readLines("C:\\Murray State University\\Graduate School\\Spring 2024\\Rife DIS\\Datasets\\messages_all.txt")

#Loading in the data; l stands for load 
df_l <- strsplit(x = df, split = "\n")

#Write a function; word detector finds your key words 
word_detector <- function(haystack){
  for (key_word in key_words){
    if (grepl(key_word, haystack)){
      return(1)
    }
  }
return(0)
}
    

counter = 0
for (line in df_l){
  counter <- counter + word_detector(haystack=line)
}

wd_40 <- lapply(df_l, word_detector)
