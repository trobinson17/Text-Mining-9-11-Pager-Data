#Create your list of key words
key_words <- c("disaster", "plane", "fire", "explosion", "terrorist", 
               "world trade center", "pentagon", "crash")
disaster_count = 0
plane_count = 0
fire_count = 0
explosion_count = 0
terrorist_count = 0
wtc_count = 0
pentagon_count = 0
crash_count = 0

#Load in our file 
df <- readLines("C:\\Murray State University\\Graduate School\\Spring 2024\\Rife DIS\\Datasets\\messages_all.txt")

#Loading in the data; l stands for load 
df_l <- strsplit(x = df, split = "\n")

#Write functions to find key words
disaster_detector <- function(haystack){
  if (grepl(key_words[1], haystack)){
    return(1)
  }
  return(0)
}

plane_detector <- function(haystack){
  if (grepl(key_words[2], haystack)){
    return(1)
  }
  return(0)
}

fire_detector <- function(haystack){
  if (grepl(key_words[3], haystack)){
    return(1)
  }
  return(0)
}

explosion_detector <- function(haystack){
  if (grepl(key_words[4], haystack)){
    return(1)
  }
  return(0)
}

terrorist_detector <- function(haystack){
  if (grepl(key_words[5], haystack)){
    return(1)
  }
  return(0)
}

wtc_detector <- function(haystack){
  if (grepl(key_words[6], haystack)){
    return(1)
  }
  return(0)
}

pentagon_detector <- function(haystack){
  if (grepl(key_words[7], haystack)){
    return(1)
  }
  return(0)
}

crash_detector <- function(haystack){
  if (grepl(key_words[8], haystack)){
    return(1)
  }
  return(0)
}

#For every line in data that includes key_word, up 1
for (line in df_l){
  disaster_count <- disaster_count + disaster_detector(haystack = line)
  plane_count <- plane_count + plane_detector(haystack = line)
  fire_count <- fire_count + fire_detector(haystack = line)
  explosion_count <- explosion_count + explosion_detector(haystack = line)
  terrorist_count <- terrorist_count + terrorist_detector(haystack = line)
  wtc_count <- wtc_count + wtc_detector(haystack = line)
  pentagon_count <- pentagon_count + pentagon_detector(haystack = line)
  crash_count <- crash_count + crash_detector(haystack = line)
}

#Make table to represent counts 

#Key_words already stored as character vector
#Create numeric vector with our counts 
Counts <- c(disaster_count, plane_count, fire_count, explosion_count, terrorist_count, wtc_count, pentagon_count, crash_count)

#Turn it into a table
my_table <- data.frame(Words = key_words, Counts = Counts)

#Add proportions of key words, what % of counter is comprised of each key word 
my_table$Proportions <- my_table[2]/sum(my_table[2])
