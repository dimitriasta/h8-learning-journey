nilai = int(input("Berapa score yang didapatkan? "))

if nilai>=0 and nilai<=100:
  if nilai<40:
    print(f"dengan score {nilai} grade anda adalah E")
  elif nilai>=40 and nilai<60:
    print(f"dengan score {nilai} grade anda adalah D")
  elif nilai>=60 and nilai<70:
    print(f"dengan score {nilai} grade anda adalah C")
  elif nilai>=70 and nilai<80:
    print(f"dengan score {nilai} grade anda adalah B")
  else:
    print(f"dengan score {nilai} grade anda adalah A")
else:
  print("score yang ada masukkan salah")