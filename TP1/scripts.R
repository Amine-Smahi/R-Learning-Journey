#Read Data from csv file
df = read.csv2('data.csv', header = TRUE, sep = ";",quote = "\"")

#Read Data from text file
df2 =  read.table('data.txt', header = TRUE, sep = "\t",  quote = "\"")

#Open file explorator
df3 = read.csv2(file.choose(), header = TRUE, sep = ";",  quote = "\"")

