import random
from pymodbus.client.sync import ModbusTcpClient
from datetime import datetime, time
import time

separator = "," # Untuk memisahkan memisahkan square brakets dalam random generator lists
#list1
option1 = [random.randint(220, 350) for i in range (1) for j in range(2)]
separator.join(map(str, option1))
#list2
option2 = random.sample(range(0, 50), 2) #[random.randint(0, 50) for i in range (1) for j in range(2)]
test = separator.join(map(str, option2))
# option3 = random.sample(range(1, 4), 1)
option1.append(option2) # Menggabung nilai random generator di option1 dan option2

# print(test) # output tanpa square brakets di option2
# print(option1) # output gabungan antara option 1 dan option 2

#print("".join(int(i) for i in option1))

# option1, option2, # option3

# NOte: Saya sudah usahakan selama 6 hari++ untuk debugging dan mencari seluruh jawaban
# di forum manapun yang membahas tentang modbus untuk mengirimkan data berupa lists
# random generator entah itu dalam bentuk string, json ataupun int sendiri. dan saat
# dikirimkan dgn perintah dibawah inipun pada sisi penerima hanya dapat menerima data 
# dalam bentuk int dengan output tunggal saja dan tidak solved masalahnya.

# host = '127.0.0.1'  #ip localhost
# port = 502
# client = ModbusTcpClient(host, port)
# while True:
#     client.connect()
#     data = option2

# # To Write values to multiple registers
#     # list = []
#     # for i in range(10):
#     #     data = random.randint(25,35)
#     #     list.append(data)

#     wr = client.write_registers(1000,data,unit=1)
#     # write to multiple registers using list of data
#     # wr = client.write_registers(1000,list,unit=1)
#     time.sleep(2)

# Sebagai alternatif, Saya gunakan data dgn format json dan dikirim dengan metode rest
# API, ini untuk memudahkan saja untuk simulasi dengan penggambaran datanya dapat dikirimkan
# melalui koneksi internet.

import requests
import http.server
import json

# https://www.youtube.com/watch?v=EjwgxlIEjuI
sensorName = ['Tegangan AC', 'Tegangan DC', 'Arus AC', 'Arus DC']
sensorValue = [[random.randint(220,440) for i in range (1)] for j in range(4)]
merge2dict = {}
for i, j in zip(sensorName, sensorValue):
    merge2dict [i] = j
data = merge2dict    
jsonResult = json.dumps(data) # https://www.youtube.com/watch?v=9N6a-VLBa2I
jsonResult


# untuk emulator server bisa gunakan kode : python -m http.server 8080, gunakan
# response = requests.post('127.0.0.1:8080', json = json.dumps(data))
response = requests.post('https://reqres.in//api/unknown/2', json = jsonResult)
print(response)
print(response.text)

# Kesimpulan, untuk simulasi data transfer masih belum bisa mengikuti goal yang diinginkan
# berupa mengirim list data entah itu berupa string json ataupun int (integer) yang dapat
# menghasilkan output multiple, misalkan : (220, 350, 45, 50) akan dibaca sama juga di readingnya.
# Namun, ini tidak terjadi dan hanya menghasilkan satu keluaran saja misal (220). 