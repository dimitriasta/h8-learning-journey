bill = print(input("how much the bill amount?"))
tip = print(input("how much do you want to tip?"))
person = print(input("how many person in the table?"))

tot_amount = bill * (1+tip/100)
tot_person = tot_amount / person

print(f"So each person total is tot_person")
