car = "Chevy"
def outer_car():
    car = "Ford"
    print(f"Outer car: {car}")
    def inner_car():
        global car
        car="Dodge"
        print(f"Inner Car: {car}")
    inner_car()

outer_car()
print(f"Outside any function or class car: {car}")