library(stringr)
sentence <- readline(prompt = "Enter a sentence:")
clean_sentence <-str_replace_all(sentence,"[[:punct:]]","")
cat("Cleaned senetence:",clean_sentence)
ascii <- as.integer(charToRaw(clean_sentence))
print("ASCII Value")
print(ascii)
shift_val <- as.integer(readline(prompt="Enter the shift value:"))
len <- length(ascii)
print(len)
for (i in 1:length(ascii)){
  if (ascii[i]!=32){
    if (ascii[i]>=65 && ascii[i]<=90){
      ascii[i] <- ((ascii[i]-65+shift_val)%%26)+65
    }
    if (ascii[i]>=97 && ascii[i]<=122){
      ascii[i] <- ((ascii[i]-97+shift_val)%%26)+97
    }
  }
}
encrypted_sentence <-rawToChar(as.raw(ascii))
print("Encrypted sentence")
print(encrypted_sentence)
