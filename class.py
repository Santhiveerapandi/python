# my = "Veera"
# my *=3
# print(my)
# del my
# multi_line = """This is a
# Multi-line
# String!"""
# print(len(multi_line)) 
# del multi_line

#dictionaries
person = {
    "firstname": "Veera",
    "lastname": "Kamaraj",
    "age": 38,
    'state': 'Tamilnadu',
}
# result = person.popitem()
# print(result)
# print(person)
# print(person.values())
# print(person.items())
# for key, value in person.items():
#     print(key, value)

# my_list = [1,2,3,4,5]
# my_dict = {x: [] for x in my_list}#dict.fromkeys(my_list, [])
# my_dict[1].append("Hi")
# print(my_dict)

# generator function
def generate_even_numbers(limit):
    num=0
    while num<=limit:
        yield num
        num+=2
evens = generate_even_numbers(8)
print(type(evens))
for num in evens:
    print(num)

def generate_primes():
    primes = []
    num = 2
    while True:
        if all(num % prime !=0 for prime in primes):
            yield num
            primes.append(num)
        num+=1
prime_generator = generate_primes()
primes = [next(prime_generator) for i in range(4)]
print(primes)

# lambda function
square = lambda x: x**2
print(square(5))

numbers = [1,2,3,4,5]
squared_numbers = list(map(lambda x: x**2, numbers))
print(squared_numbers)

students= [('Veera', 38), ('Meena', 30), ('Divya', 25)]
students.sort(key= lambda x: x[1])
print(students)
print(type(students))

def apply_operation(x,y, opeartion=lambda a,b: a+b):
    return opeartion(x,y)

multiply = lambda a,b: a*b
add = apply_operation(5,3)
multi = apply_operation(7,8,multiply)

print(add)
print(multi)

#classes
# class Person:
#     fname = ""
#     lname = ""

# p=Person()
# p.fname="Veera"
# p.lname="Kamaraj"
# print(p.fname,p.lname)

# class Dog:
#     def __init__(self, name, age):
#         self.name=name
#         self.age=age
#         self.weight="unknown"
#     def bark(self):
#         print(f"The {self.name} barks!")

# dog1 = Dog("Max", 3)
# dog2 = Dog("Bella", 2)
# print(f"{dog1.name} is {dog1.age} years old!")
# print(f"{dog2.name} is {dog2.age} years old!")
# dog1.bark()

# class Counter:
#     count=0
#     def __init__(self,name):
#         self.name = name
#         Counter.count+=1
# counter1 = Counter("One")
# counter2 = Counter("Two")
# counter2.count=7
# counter3 = Counter("Three")

# print(f"Counter {counter1.name} count: {counter1.count}")
# print(f"Counter {counter2.name} count: {counter2.count}")
# print(f"Counter {counter3.name} count: {counter3.count}")
# print(f"Counter variable: {Counter.count}")

# class method
class Date:
    def __init__(self, year, month, day):
        self.year = year
        self.month = month
        self.day = day
    @classmethod
    def from_string(cls, date_str, sep='-'):
        year, month, day =map(int, date_str.split(sep))
        return cls(year, month, day)
    
date1 = Date.from_string("2023-12-25") #Date(2023, 12, 25)
print(f"Year: {date1.year}\nMonth: {date1.month}\nDay: {date1.day}")

#static method
class MathUtility:
    @staticmethod
    def add(a,b):
        return a+b
    @staticmethod
    def multiply(a,b):
        return a*b
    @staticmethod
    def square(a):
        return a**2

add = MathUtility.add(1,2)    
mul = MathUtility.multiply(3,4)
square = MathUtility.square(6)

print(f"Add: {add}\nMultiply: {mul}\nSquare: {square}")

#magic methods
class Car:
    def __init__(self, color, make, model, year):
        self.color = color
        self.make = make
        self.model = model
        self.year = year

    def __str__(self) -> str:
        return f"A {self.color} {self.make} {self.model} made in {self.year}"
    
    def __eq__(self, other) -> bool:
        if isinstance(other, Car):
            return (
                self.make == other.make
                and self.model == other.model
                and self.year == other.year
            )
        return False

car1 = Car("Black","Chevy", "Silverado", 2023)
car2 = Car("Red","Ford", "Explorer", 2015)
car3 = Car("Blue","Chevy", "Silverado", 2023)

print(car1 == car2)
print(car1 == car3)

print(car1, car2, car3)

#inheritance
class Dessert:
    def __init__(self, name, flavor):
        self.name = name
        self.flavor = flavor
    def cook(self):
        print(f"You bake the {self.flavor} {self.name}!")
class Cookie(Dessert):
    def __init__(self, name, flavor, price):
        super().__init__(name, flavor)
        self.price=price

    def dunk(self):
        print(f"You dunk the {self.name} in milk!")

    def bake_and_sell(self):
        super().cook()
        print(f"You sell the {self.flavor} {self.name} for Rs: {self.price}/- !")

tart = Cookie("cookie", "cherry tart", 7)
pie = Dessert("pie", "apple")
cookie = Cookie("cookie", "chocolate chip",5)

pie.cook()
# cookie.cook()
# cookie.dunk()
print(cookie.price)
cookie.bake_and_sell()
tart.bake_and_sell()