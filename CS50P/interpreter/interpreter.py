def main():
    expression = input("Expression: ")
    x, y, z = expression.split(" ")
    x = int(x)
    z = int(z)
    calculate(x, y, z)

def calculate(x, y, z):
    if y == "+":
        print(float(round(x + z, 1)))
    elif y == "-":
        print(float(round(x - z, 1)))
    elif y == "*":
        print(float(round(x * z, 1)))
    elif y == "/":
        print(float(round(x / z, 1)))


main()  