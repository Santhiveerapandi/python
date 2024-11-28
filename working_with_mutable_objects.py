# def reverse_list(my_list):
#     print(f"my_list before reversing: {my_list}")
#     my_list.reverse()
#     print(f"my_list after reversing: {my_list}")

# cars = ["ford", "chevy", "dodge"]
# reverse_list(cars)
# print(f"cars list after calling reverse_list: {cars}")

import copy

numbers = [1,2,3,[4,5,6]]
exact_copy = numbers
shallow_copy1 = numbers.copy()
shallow_copy2 = numbers[:]
shallow_copy3 = copy.copy(numbers)
deep_copy = copy.deepcopy(numbers)
# shallow_copy1[0] = 7
# shallow_copy1[3][1] = 8
# print(numbers, shallow_copy1)
deep_copy[0] = 7
deep_copy[3][1] = 8
print(numbers, deep_copy)

if numbers is exact_copy:
    print("Yes! numbers and exact_copy are the same object!")

if numbers[3] is deep_copy[3]:
    print("numbers and deep_copy are the same object")
else:
    print("numbers and deep_copy are not the same object")

# if numbers == exact_copy == shallow_copy1 == shallow_copy3 == deep_copy:
#     print("All 5 same copy")
# if numbers is shallow_copy1:
#     print("numbers and shallow_copy1 are the same object")
# else:
#     print("numbers and shallow_copy1 are not the same object")

# if numbers[3] is shallow_copy1[3]:
#     print("numbers and shallow_copy1 are the same object")
# else:
#     print("numbers and shallow_copy1 are not the same object")
