﻿**syntax created by how2stats
**This syntax performs a one sample z-test in SPSS
**Simply enter the four relevant values in the line below underneath the 'begin data' command
**The first number is the sample size (35), the second number is the sample mean (105),
**the third number is the population mean (100)
**and the fourth number is the population standard deviation (15)
**Replace the four values below with your own.
**The p value that is reported is based on a two-tailed test. 
**To obtain the one-tailed p value, simply divide the two-tailed p value by 2.
**As an extra, this syntax also calcuates Cohen's d as estimate of effect size.

data list list / n sample_mean population_mean population_sd.
begin data
64 215 220 5
end data.

Compute mean_difference = sample_mean - population_mean.
Compute square_root_n =SQRT(n).
Compute standard_difference = population_sd/square_root_n.
Compute z_statistic = mean_difference/standard_difference.
Compute chi_square = z_statistic*z_statistic.
Compute p_value = SIG.CHISQ(chi_square, 1).
Compute cohens_d = mean_difference/population_sd.
EXECUTE.
Formats z_statistic p_value cohens_d (f8.5).
LIST z_statistic p_value cohens_d.