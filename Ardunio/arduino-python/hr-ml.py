import serial

ser = serial.Serial("/dev/cu.usbmodem14201", 9600)
hrValues = []
miliValues = []


def analisisHR():
    global hrValues
    global miliValues
    valores = []
    valoresMili = []
    for i in range(0, 97):
        valores.append((hrValues[i]+hrValues[i+1]+hrValues[i+2])/3)
        valoresMili.append((miliValues[i]+miliValues[i+1]+miliValues[i+2])/3)
    subida=True
    palpitacionAnterior = 1
    for i in range (0, len(valores)):
        if (valores[i+1]>valores[i])

        else:
            tiempo = valoresMili[i]-palpitacionAnterior

            subida = False


    hrValues = hrValues[25:]
    miliValues = miliValues[25:]


while(1):
    lineBytes = ser.readline()
    line = lineBytes.decode("ascii")
    if line[0:2] != "HR":
        continue
    line = line.rstrip()
    medidas = line.split(";")
    hr = int(medidas[0].split(":")[1])
    medidas = int(medidas[0].split(":")[1])
    miliValues.append(milis)
    if(len(hrValues) == 100):
        analisisHR()

    print(hr)
