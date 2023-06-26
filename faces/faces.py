#Main function that converts text to emoticons automatically.
def convert(this):
    print(greeting.replace(":)", "🙂").replace(":(", "🙁"), this)

greeting = input("Say hello ")
convert(greeting)
