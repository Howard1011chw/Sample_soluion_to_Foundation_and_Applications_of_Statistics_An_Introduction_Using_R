require('fastR2')
require('ggplot2')
df = Pitching2005 %>%
  filter(GS>5) %>%
  group_by(lgID) %>%
  summarize(
            count = n(),
            mean_ERA = mean(ERA,na.rm= TRUE),
            median_ERA = median(ERA,na.rm = TRUE),
            min_ERA = min(ERA,na.rm=TRUE),
            max_ERA = max(ERA,na.rm=TRUE),
            q1 = quantile(ERA,0.25,na.rm=TRUE),
            q2 = quantile(ERA,0.5,na.rm=TRUE),
            q3 = quantile(ERA, 0.75,na.rm=TRUE)
  )

print(df)
