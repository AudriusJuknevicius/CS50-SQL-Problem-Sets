#Main function that converts text to emoticons automatically.
def convert(this):
    print(this.replace(":)", "🙂").replace(":(", "🙁"))

greeting = input("Say hello ")
convert(greeting)
