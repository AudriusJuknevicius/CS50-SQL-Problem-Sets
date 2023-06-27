#Using conditionals to output an answer to the great question of life depending on user input.
def main():
    answer = input(f"What is the Answer to the Great Question of Life, the Universe, and Everything?" )
    match answer.strip().lower():
        case "42" | "forty-two" | "fortytwo" | "forty two":
            print("Yes")
        case _:
            print("No")

main()