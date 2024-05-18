
library(microbenchmark)

# Define the strings to be concatenated
str1 <- "Hello"
str2 <- "World"

# Benchmark the two functions
benchmark_result <- microbenchmark(
  paste = paste(str1, str2),
  paste0 = paste0(str1, str2),
  times = 100000
)

print(benchmark_result)


capitals <- c("Lusaka",  "Windhoek", "TuRnis", "Kingston", "Pretoria", "UnknownCity")

for (capital in capitals) {
  country <- switch(capital,
                    "Lusaka" = "Zambia",
                    "Nairobi" = "Kenya",
                    "Bamako" = "Mali",
                    "Abuja" = "Nigeria",
                    "Cairo" = "Egypt",
                    "Kampala" = "Kwara State",
                    "Kigali" = "Rwanda",
                    "Windhoek" = "Namibia",
                    "Tunis" = "Tunisia",
                    "Kingston" = "Jamaica",
                    "Pretoria" = "South Africa",
                    "Ask me again"
  )
  print(paste(capital, "->", country))
}


count = c(1)

for (i in count){
  print("Yes")
}
