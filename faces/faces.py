#Main function that converts text to emoticons automatically.
def convert(this):
    print(greeting)
    str.replace(":)", "🙂",this)
    str.replace(":(", "🙁",this)

greeting = input("Say hello ")

convert(greeting)