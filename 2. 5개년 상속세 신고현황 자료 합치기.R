##5개년 상속세 신고현황 자료 합치기
library(readxl)
library(dplyr)
library(writexl)
library(tidyr)
library(ggplot2)
library(stringr)
library(shiny)



# Define file paths
file_path_2022 <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/3차/2022_상속세_신고_현황Ⅰ(납세지).xlsx"
file_path_2021 <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/3차/2021_상속세_신고_현황Ⅰ(납세지).xlsx"
file_path_2020 <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/3차/2020_상속세_신고_현황Ⅰ(납세지).xlsx"
file_path_2019 <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/3차/2019_상속세_신고_현황Ⅰ(납세지).xlsx"
file_path_2018 <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/3차/2018_상속세_신고_현황Ⅰ(납세지).xlsx"

# Function to read specific cells from an Excel file
read_specific_cells <- function(file_path) {
  data <- read_excel(file_path, range = "A4:AL4", col_names = FALSE)
  selected_columns <- data %>%
    select(1, 3, 28, 38)  # A, C, AB, AL columns
  return(selected_columns)
}

# Read data from both files
data_2022 <- read_specific_cells(file_path_2022)
data_2021 <- read_specific_cells(file_path_2021)
data_2020 <- read_specific_cells(file_path_2020)
data_2019 <- read_specific_cells(file_path_2019)
data_2018 <- read_specific_cells(file_path_2018)

# Combine data
combined_data <- bind_rows(data_2018, data_2019, data_2020, data_2021, data_2022)

# Assign column names
colnames(combined_data) <- c("연도", "총상속재산가액", "과세표준", "자진납부할세액")

# Add a 'Year' column to differentiate data from each year
combined_data$Year <- c(2018:2022)

# Define output file path
output_file_path <- "D:/0. 성균관대/3. 경제데이터분석입문_최재성/기말프로젝트/최종/5개년상속세신고현황.xlsx"

# Save the combined data to an Excel file
write_xlsx(combined_data, path = output_file_path)

cat("Data has been successfully saved to", output_file_path)

# Reshape the data to long format
long_data <- combined_data %>%
  pivot_longer(cols = -c(Year, 연도), names_to = "Metric", values_to = "value")

# Convert the 'Year' column to a factor for better plotting
long_data$Year <- as.factor(long_data$Year)

# Create a combined bar graph
p_combined <- ggplot(long_data, aes(x = 연도, y = value, fill = Metric)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "5개년 상속세 신고현황", x = "연도", y = "금액") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 20, face = "bold"),
    axis.title.x = element_text(size = 15, face = "bold"),
    axis.title.y = element_text(size = 15, face = "bold"),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    legend.title = element_text(size = 15),
    legend.text = element_text(size = 12)
  ) +
  scale_fill_brewer(palette = "Pastel1")

print(p_combined)
