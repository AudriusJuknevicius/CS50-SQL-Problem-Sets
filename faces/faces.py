#Main function that converts text to emoticons automatically.
def convert():
    replace(":)", "🙂")
    replace(":(", "🙁")
greeting = input("Say hello ")

convert()
print(greeting)