set.seed(101421)

plants <- rnorm(10, mean = 80, sd = 11)
animal <- rnorm(10, mean = 40, sd = 8.4)
control <- rnorm(10, mean = 50, sd = 2.1)

happy <- data.frame(plants,
                    animal,
                    control)



happy$plants
happy$animal
happy$control

happy_calculations <- happy %>% 
  summarize(total_n = 30,
            groups = 3,
            mean_plants = mean(plants),
            mean_animal = mean(animal),
            mean_control = mean(control),
            sd_plants = sd(plants),
            sd_animal = sd(animal),
            sd_control = sd(control),
            var_plants = sd(plants)^2,
            var_animal = sd(animal)^2,
            var_control = sd(control)^2,
            sum_plants = sum(plants),
            sum_animal = sum(animal),
            sum_control = sum(control),
            total_sum = sum_plants + sum_animal + sum_control,
            sum2_plants = 90.71611^2+  62.01473^2+  71.23168^2+  78.82846^2+  60.72292^2+ 107.16287^2+ 67.26932^2+  79.73614^2+  84.54266^2+  86.23949^2,
            sum2_animal = 49.36230^2+ 34.80282^2+ 38.74386^2+ 43.41543^2+ 33.21453^2+ 36.53926^2+ 32.73007^2+47.87016^2+ 22.45582^2+ 31.74746^2,
            sum2_control = 46.56667^2+ 48.64966^2+ 48.14495^2+ 50.64383^2+ 49.84474^2+ 50.35684^2+ 50.33949^2+ 49.10797^2+ 51.92304^2+ 53.10834^2,
            total_sum2 = sum2_plants + sum2_animal + sum2_control,
            ss_total_pre = (total_sum)^2/30,
            ss_total = total_sum2 - ss_total_pre,
            sum_plants2 = sum_plants^2,
            sum_animal2 = sum_animal^2,
            sum_control2 = sum_control^2,
            sums_divided = (sum_plants2/10) + (sum_animal2/10) + (sum_control2/10),
            ss_bn = sums_divided - ss_total_pre,
            ss_within = ss_total - ss_bn,
            df_total = total_n - 1,
            df_bn = groups - 1,
            df_within = total_n - groups,
            ms_bn = ss_bn/df_bn,
            ms_wn = ss_within/df_within,
            F = ms_bn/ms_wn)

happy_calculations %>% 
  View()
