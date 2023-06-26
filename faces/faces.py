#Main function that converts text to emoticons automatically.
def convert(face):
    str.replace(":)", "🙂",face)
    str.replace(":(", "🙁",face)

greeting = input("Say hello ")

convert(face)
print(greeting)