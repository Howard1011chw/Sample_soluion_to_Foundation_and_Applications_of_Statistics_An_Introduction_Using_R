# Date: 8/2/2025

# general setting

require('fastR2')

#part a
gf_histogram(~pulse,data=LittleSurvey)



# part b
df = filter(LittleSurvey, pulse > 30)
gf_histogram(~pulse,data=df)
#part c
mean(~pulse, data=LittleSurvey)
mean(~pulse, data=df)
