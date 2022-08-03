import os
import threading
from pathlib import Path
import sys

# library untuk backend to QML
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal

# Library untuk randomNumber generator dan json
import random
#import json

# # library untuk simulasi modbus trial (diagslave)
# from pymodbus.client.sync import ModbusTcpClient
# from datetime import datetime, time
# import time

class mainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

    # Signal Set Name
    setGenset = Signal(str) # konektor On / Off pushbutton genset

    setHsbc = Signal(str) # konektor On / Off pushbutton genset

    setSensor = Signal(str) # konektor nilai sensor dg randomnumber

    # Function Set Active Name To Label
    @Slot(str)
    def gensetActive(self, genset):
        self.setGenset.emit("Genset Powered")

    @Slot(str)
    def hsbcActive(self, hsbc):
        self.setHsbc.emit("Close")

    # Function Set Disabled Name To Label
    @Slot(str)
    def gensetInactive(self, genset):
        self.setGenset.emit("PLN Powered")

    @Slot(str)
    def hsbcInactive(self, hsbc):
        self.setHsbc.emit("Open")

    # Function Set RandomGenerator
    @Slot(str)
    def teganganAc(self, acv):
        randomAcv = randomSensor['Tegangan AC']
        self.setSensor.emit(randomAcv)

#        self.setSensor.emit (acvrandomSensor['Tegangan AC'])
#            self.acv = print(randomSensor['Tegangan AC']) # randomSensor['Tegangan AC']
#        self.setSensor.emit (print(randomSensor['Tegangan AC'], separator = "")) #("Hello"

sensorName = ['Tegangan AC', 'Tegangan DC', 'Arus AC', 'Arus DC']
sensorValue = [[random.randint(220,440) for i in range (1)] for j in range(4)]
merge2dict = {}
for i, j in zip(sensorName, sensorValue):
    merge2dict [i] = j
randomSensor = merge2dict

#setName = Signal(str)
#@Slot(str)
#def welcomeText(self, name):
#    self.setName.emit("Welcome, "+ name)



# Perintah untuk mengambil data dari server modbus diagslave
#    def ReadingModbusSequence():
#        host = '127.0.0.1'   #ip of your raspberry pi
#        port = 502
#        client = ModbusTcpClient(host, port)
#        while True:
#            client.connect()
#            rr = client.read_holding_registers(1000,1,unit=1)
#            data = {
# #                "datetime": mainWindow.current_time(),
#                "data": rr.registers    # register will return a list. To query individual register specify the array item e.g. registers[0] to get value from first register

#                }
#            print(json.dumps(data))
#            time.sleep(2)


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Get Context
    main = mainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # Load QML File
    engine.load(os.path.join(os.path.dirname(__file__), "main.qml"))

#    # Listing Threads
# # Thread untuk membaca nilai modbus
#    mainWindow.task1 = threading.Thread(target= mainWindow.ReadingModbusSequence, name='task1')

#    # Starting Threads
#    mainWindow.task1.start()

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
