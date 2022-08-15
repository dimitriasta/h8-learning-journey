nilai = int(input("Masukkan nilai anda? "))

if nilai >= 80 and nilai <= 100:
    print(f"Nilai kamu {nilai}, Grade kamu adalah A")
elif nilai >= 70 and nilai < 80:
    print(f"Nilai kamu {nilai}, Grade kamu adalah B")
elif nilai >= 60 and nilai < 70:
    print(f"Nilai kamu {nilai}, Grade kamu adalah C")
elif nilai >= 40 and nilai < 60:
    print(f"Nilai kamu {nilai}, Grade kamu adalah D")
elif nilai >= 0 and nilai < 40:
    print(f"Nilai kamu {nilai}, Grade kamu adalah E")
else:
    print("Kamu belum memasukkan nilai")
