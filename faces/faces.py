#Main function that converts text to emoticons automatically.
def convert(this):
    this = str.replace(":)", "🙂")
    this = str.replace(":(", "🙁")
    print(greeting)

convert()
greeting = input("Say hello ")

