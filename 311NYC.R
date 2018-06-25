getwd()
###########################################################################
#install relevant packages---->
###########################################################################
#Package for SODA API
install.packages("RSocrata")
library("RSocrata")
#ggplot package
install.packages("ggplot2")
library("ggplot2")
#SQLDF package
library(gsubfn)
options(gsubfn.engine = "R")
library(RSQLite)
library(sqldf)
#Plotly package
library("plotly")
#Leaflet package
library("leaflet")
###########################################################################
#Data ETL---->
###########################################################################
#Data for the year 2018--->
#Data from Jan 1, 2018 to April 3, 2018--->
df1 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2018-01-01T00:00:00' and '2018-04-03T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df1)
dfnew1 <- df1
View(dfnew1)
#Generating random samples from the dataset to limit the number of entries-->
filtered1 <- sample(unique(dfnew1$unique_key), 50000)
data1 <- subset(dfnew1, unique_key %in% filtered1)
View(data1)
str(data1)

###########################################################################
#Data for the year 2017--->
#Data from September 1, 2017 to December 31, 2017--->
df2 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2017-09-01T00:00:00' and '2017-12-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df2)
dfnew2 <- df2
View(dfnew2)
#Generating random samples from the dataset to limit the number of entries-->
filtered2 <- sample(unique(dfnew2$unique_key), 50000)
data2 <- subset(dfnew2, unique_key %in% filtered2)
View(data2)
str(data2)

#Data from May 1, 2017 to August 31, 2017-->
df3 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2017-05-01T00:00:00' and '2017-08-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df3)
dfnew3 <- df3
View(dfnew3)
#Generating random samples from the dataset to limit the number of entries-->
filtered3 <- sample(unique(dfnew3$unique_key), 50000)
data3 <- subset(dfnew3, unique_key %in% filtered3)
View(data3)
str(data3)

#Data from Jan 1, 2017 to April 30, 2017--->
df4 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2017-01-01T00:00:00' and '2017-04-30T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df4)
dfnew4 <- df4
View(dfnew4)
#Generating random samples from the dataset to limit the number of entries-->
filtered4 <- sample(unique(dfnew4$unique_key), 50000)
data4 <- subset(dfnew4, unique_key %in% filtered4)
View(data4)
str(data4)

###########################################################################
#Data for the year 2016--->
#Data from September 1, 2016 to December 31, 2016--->
df5 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2016-09-01T00:00:00' and '2016-12-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df5)
dfnew5 <- df5
View(dfnew5)
#Generating random samples from the dataset to limit the number of entries-->
filtered5 <- sample(unique(dfnew5$unique_key), 50000)
data5 <- subset(dfnew5, unique_key %in% filtered5)
View(data5)
str(data5)

#Data from May 1, 2016 to August 31, 2016-->
df6 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2016-05-01T00:00:00' and '2016-08-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df6)
dfnew6 <- df6
View(dfnew6)
#Generating random samples from the dataset to limit the number of entries-->
filtered6 <- sample(unique(dfnew6$unique_key), 50000)
data6 <- subset(dfnew6, unique_key %in% filtered6)
View(data6)
str(data6)

#Data from Jan 1, 2016 to April 30, 2016--->
df7 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2016-01-01T00:00:00' and '2016-04-30T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df7)
dfnew7 <- df7
View(dfnew7)
#Generating random samples from the dataset to limit the number of entries-->
filtered7 <- sample(unique(dfnew7$unique_key), 50000)
data7 <- subset(dfnew7, unique_key %in% filtered7)
View(data7)
str(data7)

###########################################################################
#Data for the year 2015--->
#Data from September 1, 2015 to December 31, 2015--->
df8 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2015-09-01T00:00:00' and '2015-12-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df8)
dfnew8 <- df8
View(dfnew8)
#Generating random samples from the dataset to limit the number of entries-->
filtered8 <- sample(unique(dfnew8$unique_key), 50000)
data8 <- subset(dfnew8, unique_key %in% filtered8)
View(data8)
str(data8)

#Data from May 1, 2015 to August 31, 2015-->
df9 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2015-05-01T00:00:00' and '2015-08-31T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df9)
dfnew9 <- df9
View(dfnew9)
#Generating random samples from the dataset to limit the number of entries-->
filtered9 <- sample(unique(dfnew9$unique_key), 50000)
data9 <- subset(dfnew9, unique_key %in% filtered9)
View(data9)
str(data9)

#Data from Jan 1, 2015 to April 30, 2015--->
df10 <- read.socrata(
  url = "https://data.cityofnewyork.us/resource/fhrw-4uyv.csv?$where=created_date between '2015-01-01T00:00:00' and '2015-04-30T00:00:00'&$order=created_date DESC",
  app_token = "UIbtOvevTFh8uKWzJQLv1dRr7"
)
View(df10)
dfnew10 <- df10
View(dfnew10)
#Generating random samples from the dataset to limit the number of entries-->
filtered10 <- sample(unique(dfnew10$unique_key), 50000)
data10 <- subset(dfnew10, unique_key %in% filtered10)
View(data10)
str(data10)
###########################################################################
#Dataset munging and refining-->
###########################################################################
#Merging all the monthly data into one master data set--->
master <- do.call("rbind", list(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10))
View(master)
str(master)
#Converting all city names to Upper Case-->
master$city <- toupper(master$city)
###########################################################################
#Data Visualizations-->
###########################################################################
#Visualization 1---->
#Most common complaint types--->
complaint_count <- table(master$complaint_type)
View(complaint_count)
sorted_complaint_count <- sort(complaint_count, decreasing = TRUE)
View(sorted_complaint_count)
#Identifying and plotting Top 15 Complaints-->
View(sorted_complaint_count[1:15])
barplot(sorted_complaint_count[1:10],
        ylim = c(0,60000), 
        las =3,
        col = c("#E3410D","#E4500C","#E5600C","#E66F0C","#E77F0C","#E98E0C","#EA9E0B","#EBAD0B","#ECBD0B","#EDCC0B"),
        cex.names = 0.8,
        ylab = "Number of requests",
        main = "Top 10 Complaints from 2015 - 2018")

#Visualization 2--->
#Different sources of noise--->
noise <- sqldf("Select * from master where master.complaint_type='Noise' OR master.complaint_type='Noise - Residential'")
View(noise)
noise_count <- table(noise$descriptor)
View(noise_count)
sorted_noise_count <- sort(noise_count, decreasing = TRUE)
View(sorted_noise_count)
#Identifying and plotting Top 15 Complaints-->
#Bar chart
View(sorted_noise_count[1:10])
barplot(sorted_noise_count[1:10],
        las = 3,
        cex.names = 0.6,
        ylim = c(0,35000),
        col = c("#E3410D","#E4500C","#E5600C","#E66F0C","#E77F0C","#E98E0C","#EA9E0B","#EBAD0B","#ECBD0B","#EDCC0B"),
        xlab = "Type",
        ylab = "Number of complaints",
        main = "Major types of noise complaints")
#Donut Chart
donut <- as.data.frame(sorted_noise_count[1:7])
View(donut)
donut_noise <- donut %>%
               group_by(Var1) %>%
               plot_ly(labels = ~Var1, values = ~Freq) %>%
               add_pie(hole = 0.6)%>%
               layout(showlegend = T,
               xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
               yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
donut_noise

#Visualization 3--->
#Time series analysis of noise complaints (Monthly, Weekly and Hourly)--->
#Monthly--->
month <- strftime(noise$created_date, "%m")
View(month)
month_count <- table(month)
View(month_count)

plot(month_count, 
     type = 'l',
     col = '#4CB5F5',
     lwd = 4,
     xlab = 'Month',
     ylab = 'Number of noise complaits',
     main = 'Number of Noise complaints by Month')

#Weekly--->
week <- weekdays(noise$created_date)
View(week)
week_count <- table(week)
View(week_count)
week_count <- week_count[c(2,6,7,5,1,3,4)]
plot(week_count, 
     type = 'l', 
     ylim = c(0,20000),
     col = '#34675C',
     lwd = 4,
     xlab = 'Day of the Week',
     ylab = 'Number of Noise complaints',
     main = 'Number of Noise complaints by Week')

#Hourly--->
hour <- strftime(noise$created_date, "%H")
View(hour)
hour_count <- table(hour)
View(hour_count)
plot(hour_count, type = 'l', 
     ylim = c(0, 8000),
     lwd = 4,
     col = '#B3C100',
     xlab = 'Time of the day',
     ylab = 'Number of Noise Complaints',
     main = 'Number of Noise complaints by Hour')


#Visualization 4--->
#NYC Map to show noise complaints--->
#Plotting noise complaints in NYC--->
noise_NYC <- sqldf("Select * from noise where noise.descriptor='Loud Music/Party'")
View(noise_NYC)
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addCircleMarkers(data = noise_NYC, lng = ~longitude, lat = ~latitude,weight = 1, popup = ~incident_address, radius = 2.5, color = "red")

#Plotting loud music complaints in Manhattan--->
noise_filtered <- sqldf("Select * from noise where noise.descriptor='Loud Music/Party' AND noise.borough='MANHATTAN'")
View(noise_filtered)
leaflet() %>%
  addProviderTiles("Esri.WorldStreetMap") %>%
  addCircleMarkers(data = noise_filtered, lng = ~longitude, lat = ~latitude,weight = 1, popup = ~incident_address, radius = 2.5, color = "red")


#Visualization 5--->
#Most number of complaints by boroughs-->
city_count <- table(master$borough)
View(city_count)
sorted_city_count <- sort(city_count, decreasing = TRUE)
View(sorted_city_count)
#Identifying and plotting complaints by boroughs-->
View(sorted_city_count[1:6])
barplot(sorted_city_count[1:5],
        ylim = c(0,200000), 
        col = c("#E98E0C","#EA9E0B","#EBAD0B","#ECBD0B","#EDCC0B"),
        cex.names = 0.8,
        xlab = "Borough",
        ylab = "Number of complaints",
        main = "Distribution of complaints by boroughs")


#Visualization 6----->
#Total number of complaints by department--->
agency_count <- table(master$agency)
View(agency_count)
sorted_agency_count <- sort(agency_count, decreasing = TRUE)
#Identifying and plotting Top 15 Agencies that handle complaints
#Bar Chart
View(sorted_agency_count[1:15])
barplot(sorted_agency_count[1:10],
        space = 0.10,
        ylim = c(0,200000), 
        xlab = "Agency",
        ylab = "Number of requests",
        main = "Top 10 busiest agencies handling requests")

#Lollipop Chart
sorted_agency_count <- as.data.frame(sorted_agency_count)
plot(sorted_agency_count$Freq[1:10], type = "h", ylim = c(0,200000), 
     xlab = "Agency",
     col = "Orange",
     lwd = 4.2,
     ylab = "Number of requests",
     main = "Top 10 busiest agencies handling requests")
points(sorted_agency_count$Freq, pch=19, col="Darkred", cex = 1.9) 


#Visualization 7--->
#Response rate of agencies--->
time_difference <- difftime(master$closed_date, master$created_date)
time_difference <- round(as.numeric(time_difference))
View(time_difference)
agency_time <- cbind(time_difference, master$agency)
colnames(agency_time) <- c("TimeDifference", "Agency")
View(agency_time)
agency_time <- as.data.frame(agency_time)
View(unique(agency_time$Agency))
agency_time <- na.omit(agency_time)

dataf <- aggregate(as.numeric(agency_time$TimeDifference) ~ agency_time$Agency, agency_time, mean)
dataf <- na.omit(dataf)
View(dataf)
plot(dataf$`as.numeric(agency_time$TimeDifference)`,xlab = "Agency", ylab = "Average Response Time", main = "Average Response rate of Agencies")







