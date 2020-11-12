import serial

ser=serial.Serial("/dev/cu.usbmodem14101",9600)
while(1):
    lineBytes=ser.readline()
    line=lineBytes.decode("ascii")
    if line [0:2]!= "HR":
        continue
    line=line.rstrip()
    medidas=line.split(";")
    hr=int(medidas[0].split(":")[1])
    medidas=int(medidas[0].split(":")[1])

    print(hr)