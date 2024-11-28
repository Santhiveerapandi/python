""" 
With context_manager_expression as variable:
code block that uses the context_manager
"""
# try:
#     # with open('non_exist_file.txt', 'r') as file:
#     #     data = file.read()
#     with open('example.txt', 'x') as file:
#         file.write('Hello World!')
# except FileNotFoundError:
#     with open('example.txt', 'w') as file:
#         file.write('Hello World!')
# except FileExistsError:
#     print("File already exists!")

# with open('example.txt', 'a')as file:
#     file.write('\nAppending additional content.')
#     file.write('\nAppending even more content.')

import csv

data =[
    ['Name', 'Age', 'Location'],
    ['Veera', 38, 'Madurai'],
    ['Meena', 40, 'Chennai'],
    ['Pairavi', 35, 'Madurai'],
    ['Jamuna', 40, 'Madurai'],
]
newdata =[
    ['Jill', 29, 'Chennai'],
    ['Ethan', 35, 'Madurai'],
    ['Leon', 40, 'Madurai'],
]

dict_data = [
    {'Name': 'Jill', 'Age': 29, 'Location': 'Chennai'},
    {'Name': 'Ethan', 'Age': 35, 'Location': 'Madurai'},
    {'Name': 'Leon', 'Age': 40, 'Location': 'Madurai'}   
]
# dict_data = [
#     {'Name': 'Veera', 'Age': 38, 'Location': 'Madurai'},
#     {'Name': 'Meena', 'Age': 40, 'Location': 'Chennai'},
#     {'Name': 'Pairavi', 'Age': 35, 'Location': 'Madurai'},
#     {'Name': 'Jamuna', 'Age': 40, 'Location': 'Madurai'}   
# ]
# with open('data.csv', 'w', newline='') as file:
#     csv_writer = csv.writer(file)
#     csv_writer.writerows(data)
# with open('data.csv', 'r')as file:
#     csv_reader = csv.reader(file)
#     for row in csv_reader:
#         print(row)
# with open('data.csv', 'a', newline='')as file:
#     csv_writer = csv.writer(file)
#     csv_writer.writerows(newdata)
# with open('data.csv', 'r')as file:
#     fieldnames = ['Name', 'Age', 'Location']
#     csv_reader = csv.DictReader(file, fieldnames)
#     for row in csv_reader:
#         if csv_reader.line_num != 1:
#             print(row['Name'], row['Age'], row['Location'])
# with open('dict_data.csv', 'w', newline='')as file:
#     fieldnames = ['Name', 'Age', 'Location']
#     csv_writer = csv.DictWriter(file, fieldnames=fieldnames)
#     csv_writer.writeheader()
#     csv_writer.writerows(dict_data)
with open('dict_data.csv', 'a', newline='')as file:
    fieldnames = ['Name', 'Age', 'Location']
    csv_writer = csv.DictWriter(file, fieldnames=fieldnames)
    csv_writer.writerows(dict_data)