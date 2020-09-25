import pandas as pd

population = pd.read_csv("TextFiles/greenhouse_gas_inventory_data_data.csv")

clean=population[["country_or_area","year","value"]]

print(clean.dtypes)


select_year=clean.loc[clean["year"]==2010]

top5dup=select_year.sort_values(by = "value", ascending = False)
top5=top5dup.drop_duplicates("country_or_area")
print(top5.head(5))



