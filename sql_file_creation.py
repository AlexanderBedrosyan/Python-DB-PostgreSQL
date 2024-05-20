# 1. Put the script in the folder that you want to create sql files
# 2. Start the script
# 3. Text the name of the task and sql code
# 4. Press enter twice (finish with an empty line)

task = input('Topic of the task:')

print("Please enter multiple lines of text (finish with an empty line):")
solution_list = []

while True:
    line = input()
    if line == "":
        break
    solution_list.append(line)

solution = "\n".join(solution_list)

task = task.replace('.', '')
task = task.replace(' ', '_')
task = task.lower()
file_created = open(f"{task}.sql", "x")
file = open(f"{task}.sql", "w")
file.write(f"""{solution}""")
