bill=int(input("how much the bill amount?"))
tip=int(input("how much do you want to tip?"))
person=int(input("how many person in the table?"))

tot_amount=bill*(1+tip/100)
tot_person=tot_amount/person

print("So each person total is {:.2f} dollars".format(tot_person))
