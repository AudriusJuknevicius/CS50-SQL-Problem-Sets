#Main function that converts text to emoticons automatically.
def convert(this):
    print
    this = str.replace(":)", "🙂")
    this = str.replace(":(", "🙁")
    print(greeting)

greeting = input("Say hello ")
convert(greeting=this )
