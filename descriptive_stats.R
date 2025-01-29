# load libraries

library(datasets)
library(tidyverse)

# load 'InsectSprays' dataset
dat <- InsectSprays

# preview data frame
head(dat)

# summarize by spray
dat %>% 
  group_by(spray) %>%
  summarise(mean = mean(count),
            sd = sd(count),
            median = median(count),
            q1 = quantile(count, 0.25),
            q3 = quantile(count, 0.75),
            iqr = IQR(count),
            n = n()
  )

