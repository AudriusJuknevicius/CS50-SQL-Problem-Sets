#Main function that converts text to emoticons automatically.
def convert():
    str.replace(":)", "🙂")
    str.replace(":(", "🙁")

greeting = input("Say hello ")

convert(greeting)
print(greeting)