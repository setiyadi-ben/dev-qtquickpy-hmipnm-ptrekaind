# https://www.youtube.com/watch?v=KfXam74XWVk
from http import client
from linecache import _ModuleGlobals
from socket import timeout
from unittest import result
import pymodbus
from pymodbus.pdu import ModbusRequest
from pymodbus.client.sync import ModbusSerialClient as ModbusClient # Inisialisasi sebuah instance klien serial RTU
from pymodbus.transaction import ModbusRtuFramer
from pymodbus.constants import Endian
from pymodbus.payload import BinaryPayloadDecoder
import time

slave = 1
reg = 1000 #address 31001
in = 1

try:
    client = ModbusClient(method='rtu', port='COM16', timeout='3', stopbits= 1, bytesize= 8, parity='N', baudrate = 9600)
except Exception as e:
    print (e)

while True:
    try:
        if client.connect() :
            result = client.read_input_registers(reg, in, unit= slave)
            print (results)
            print (result.getRegister(0))
            client.close()
        else:
            print ("Connection Error")
    except Exception as e:
        print (e)
        time.sleep(3)