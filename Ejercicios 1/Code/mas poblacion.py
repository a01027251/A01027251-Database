import pandas as pd

population = pd.read_csv("TextFiles/populationbycountry19802010millions.csv")


clean=population[["Country","2010"]]

clean["2010"] = clean["2010"].str.replace("NA","").str.replace("--","").astype(float)

print(clean.dtypes)

top5=clean.sort_values(by='2010',ascending=False)


print(top5.head(5))