#Main function that converts text to emoticons automatically.
def convert():
    print(greeting.replace(":)", "🙂").replace(":(", "🙁"))

greeting = input("Say hello ")
convert(greeting)
