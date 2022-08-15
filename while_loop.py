from logging import critical

# Cara pertama
"""i = 1
while i <= 10:
    j = 1
    while j <=10:
        print(f'{i} X {j} = {i * j}')
        j += 1
    print('-'*50)
    i += 1
    j = 1"""

# Cara kedua
cities = ['Bandung', 'Jogja', 'Medan', 'Semarang']
idx = 0
while idx < len(cities):
    print(cities[idx])
    idx += 1
    print('-'*50)