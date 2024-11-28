#import requests

#response = requests.get('https://httpbin.org/ip')
#print('Your IP is {0}'.format(response.json()['origin']))

#data types
#Numeric(int,float,complex)
#sequence(str,list,tuple,range)
#Mapping(dict,)
#Set(set,fronzenset)
#Boolean(bool)
#None(None)
my_int = divmod(26,7)#pow(5,3,10)#sum([23,21,27],10)#max([23,21,27])#min([1,2,3,4])#abs(-12)#int(5.3)
print(my_int)

my_float= 12345678901234567890.123456789#0.123456789123456789#4/2#float(99) .17 digits
result = int(my_float) #int maxvalue = 12345678901234567168
print(result)
