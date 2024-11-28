# try:
#     my_list = [1,2,3]
#     # z = my_list[3]
#     # x = 10 / 0
# except ZeroDivisionError:
#     print('You cannot divide by zero!')
# except IndexError:
#     print('You cannot use an index out of range!')
# except Exception as e:
#     print("Oh no! Something went wrong! ", e)
# finally:
#     print("Done checking for errors")

# def positive_value(x):
#     if x < 0:
#         raise ValueError("x should be a positive value!")
#     else:
#         print(f"The value {x} is positive!")

# try:
#     positive_value(-2)
# except ValueError as e:
#     print("Error : ",e)

# Custom/Userdefined exception
class InvalidEmailError(Exception):
    def __init__(self, message):
        super().__init__(f"Invalid email address: {message}")
        self.message = message

def validate_email(email):
    if "@" not in email or "." not in email:
        raise InvalidEmailError(email)
try:
    email=input("Enter an email address: ")
    validate_email(email)
    print("Email is valid: ", email)
except InvalidEmailError as e:
    print("Error: ", e)