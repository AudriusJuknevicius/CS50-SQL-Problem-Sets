#Main function that converts text to emoticons automatically.
def convert(this):
    return this.replace(":)", "🙂").replace(":(", "🙁")

def main():
    greeting = input("Say hello ")
    print(convert(greeting))

main()