import json
def myfunc(a,b):
    for i in b:
        a=a[i]
    return a
object=json.loads(input("Enter Object: "))
key = input("Enter key:").split('/')
print(myfunc(object, key))

 