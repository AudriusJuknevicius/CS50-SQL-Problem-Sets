#Main function that converts text to emoticons automatically.
def convert(this):
    str.replace(":)", "🙂",this)
    str.replace(":(", "🙁",this)

greeting = input("Say hello ")

convert(face)
print(greeting)