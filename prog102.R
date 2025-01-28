library(marinecs100b)
Tilda and Taryn

# Writing a utility function ----------------------------------------------

# P1: How did you extract the temperature and exposure from the hottest day?
# Copy-paste the code here.
# Plot the hottest day
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
                      kefj_datetime >= hotday_start &
                      kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)
http://127.0.0.1:43697/graphics/3680fe23-2902-49a8-9b02-399f304dfec6.png

# P2: Fill in the blanks below to write the Alaskan datetime utility function.
convert_time <- function(date) {
  result <- as.POSIXct(date, tz = "Etc/GMT+8")
    return(result)
}
convert_time("2018-07-03 13:00")
# Extracting data ---------------------------------------------------------

# P3: Make a copy of your code from P1 and edit it to plot the temperature and
# exposure for "Aialik" on 2012-06-01
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2012-06-01 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2012-06-01 23:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
                      kefj_datetime >= hotday_start &
                      kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)
http://127.0.0.1:24079/graphics/9f809c1a-4869-4d93-a97f-783fd96b1432.png

# P4: Make a copy of your code from P3 and edit it to plot the temperature and
# exposure for "Harris" on 2016-04-05.
harris_day_start <- as.POSIXct("2016-04-05 00:00", tz = "Etc/GMT+8")
harris_day_end <- as.POSIXct("2016-04-05 23:59", tz = "Etc/GMT+8")
harris_day_idx <- which(kefj_site == "Harris" &
                      kefj_datetime >= harris_day_start &
                      kefj_datetime <= harris_day_end)
harris_day_datetime <- kefj_datetime[harris_day_idx]
harris_day_temperature <- kefj_temperature[harris_day_idx]
harris_day_exposure <- kefj_exposure[harris_day_idx]
plot_kefj(harris_day_datetime, harris_day_temperature, harris_day_exposure)
http://127.0.0.1:24079/graphics/04d79dd8-03c4-4eb4-b7ec-dce94d73bb93.png

# P5: Compare your solutions for P3 and P4 - what variables changed?
# The site, day, and index changed

# P6: What you would pick for the temperature extraction function and
# parameters' names?
# temperature(datetime, site)

# Writing extraction functions --------------------------------------------

# P7: Fill in the blanks in the code below to write your temperature extraction
# function.

extract_temp <- function(site, start, end) {
  convert_start <- convert_time(start)
  convert_end <- convert_time(end)
  extract_idx <- which(kefj_site == site &
                         kefj_datetime >= convert_start &
                         kefj_datetime <= convert_end)
  result <- kefj_temperature[extract_idx]
    return(result)
}

# P8: Make a copy of your solution to P7, and edit it to create exposure and
# datetime extraction functions.
extract_exposure <- function(site, start, end) {
  convert_start <- convert_time(start)
  convert_end <- convert_time(end)
  extract_idx <- which(kefj_site == site &
                         kefj_datetime >= convert_start &
                         kefj_datetime <= convert_end)
  result <- kefj_exposure[extract_idx]
  return(result)
}

extract_datetime <- function(site, start, end) {
  convert_start <- convert_time(start)
  convert_end <- convert_time(end)
  extract_idx <- which(kefj_site == site &
                         kefj_datetime >= convert_start &
                         kefj_datetime <= convert_end)
  result <- kefj_datetime[extract_idx]
  return(result)
}

# P9: Export your annotated screenshot as a JPEG called "annotated_function.jpg"
# and add it to your copy of the module repository. (It should be in the same
# folder as this file.)
# done

# P10: Visualize Nuka Pass on July 1, 2018.
NP_temp <- extract_temp("Nuka_Pass", "2018-07-01 00:00", "2018-07-01 23:59")
NP_datetime <- extract_datetime("Nuka_Pass", "2018-07-01 00:00", "2018-07-01 23:59")
NP_exposure <- extract_exposure("Nuka_Pass", "2018-07-01 00:00", "2018-07-01 23:59")
plot_kefj(NP_datetime, NP_temp, NP_exposure)

# P11: Save a copy of the Nuka Pass plot as "nuka_pass_2018-07-01.png" in this
# repo

# P12: Compare the code you wrote to create the plot in this module to the code
# you wrote in PROG101. Qualitatively, how do they compare? Which one is easier
# to read and why? prog102 is easier to read because we encapsulated everything
# and our code was much shorter. It's neat, amazing, perfect, so organized and
# overall a much better experience to work with! Awesome sauce.
