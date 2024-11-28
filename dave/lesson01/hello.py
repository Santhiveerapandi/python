def hello():
    print("Hello world!")

hello()

def sum(num1, num2):
    if(type(num1) != int or type(num2) !=int):
        return
    # print(num1+num2)
    return num1+num2
# sum(2,3)

total = sum('a',3)#sum(343,811)
print(total)

def multiple_items(*args):
    print(args)
    print(type(args))

multiple_items("Veera", "Meena", "Chitra", 'Parvathi', 'Keerthan')

def multi_named_items(**kwargs):
    print(kwargs)
    print(type(kwargs))

multi_named_items(name = "Veera",keep = "Meena",wife = "Chitra", dr ='Parvathi', son='Keerthan')