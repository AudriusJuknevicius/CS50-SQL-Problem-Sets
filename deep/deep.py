#Using match to output answer to the great question of life depending on user input.
def main():
    answer = input(f"What is the Answer to the Great Question of Life, the Universe, and Everything? ")
    answer.strip().lower()
    match answer:
        case "42" | "forty-two" | "fortytwo":
            print("Yes")
        case _:
            print("No")

main()