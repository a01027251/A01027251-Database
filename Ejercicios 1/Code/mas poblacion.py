import pandas as pd

population = pd.read_csv("/Users/jorgebecker/Desktop/A01027251-Database/Ejercicios 1/TextFiles/populationbycountry19802010millions.csv")


clean=population[["Country","2010"]]

clean['2010'].replace('--','')




top5=clean.sort_values(by='2010',ascending=False)


print(top5.head(5))