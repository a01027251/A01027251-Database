import mysql.connector
import random
import string
from os import system, name


def crearAutor(cnx, cursor):
    system('clear')
    nombre = input("Introduzca su nombre: ")
    apellido = input("Introduzca su apellido: ")
    query_data = (nombre, apellido)
    query = f"INSERT INTO Autores(nombre, apellido) values (%s, %s);"
    cursor.execute(query, query_data)
    cnx.commit()


def randomString(longitud):
    letters = string.ascii_lowercase
    result_str = "".join(random.choice(letters) for i in range(longitud))
    result_comillas = "'"+result_str+"'"
    return result_comillas


def randomDate():
    year = random.randint(1950, 2020)
    month = random.randint(1, 12)
    day = random.randint(1, 30)
    combine = "'"+str(year)+"-"+str(month)+"-"+str(day)+"'"
    return combine


def randomFloat():
    number = random.uniform(1, 100)
    roundNumber = round(number, 2)
    return roundNumber


try:
    cnx = mysql.connector.connect(user='root', password='#insert#', host='127.0.0.1', database='examen_sql')
    cursor = cnx.cursor()
    system('clear')
    print("1) Insertar autor")
    print("2) Generar 100 libros")
    print("3) Generar tags")
    print("4) Convinar id_tag con id_libro")
    print("5) Combinar id_autor con id_libro")
    print("6) QUERY para  cada vista")

    print("0) Salir de la base de datos")
    print()
    seleccion = int(input("Que deseas hacer:"))

    if (seleccion == 1):
        limit = int(input("¿Cuantos autores quieres agregar? "))
        if (limit > 0):
            for i in range(limit):
                crearAutor(cnx, cursor)

    if (seleccion == 2):
        for j in range(100):
            query = f"INSERT INTO Libros(id_libro, titulo, fecha_publicacion, precio) values("+str(j+1)+", "+randomString(8)+", "+randomDate()+", "+str(randomFloat())+");"
            cursor.execute(query)
            cnx.commit()

    if (seleccion == 3):
        cantidad = int(input("Cuantos tags quieres generar? "))
        for j in range(cantidad):
            query = f"INSERT INTO Tags(tag) values("+randomString(8)+");"
            cursor.execute(query)
            cnx.commit()

    if (seleccion == 4):
        for i in range(100):
            query = f"INSERT INTO libros_tags(id_libro,id_tag) values("+str(i+1)+", "+ str(random.randint(1, 10))+");"
            cursor.execute(query)
            cnx.commit()
    
    if (seleccion == 5):

            for i in range(100):
                query = f"INSERT INTO libros_autores(id_libro,id_autor) values("+str(i+1)+", "+ str(random.randint(1, 10))+");"
                cursor.execute(query)
                cnx.commit()

    if (seleccion == 6):
        print("select * from titulo_autor_fecha;")
        print("select * from titulo_tag_precio")
        print("select * from titulo_autor_tag")



    if (seleccion == 0):
        print("Saliendo de la base de datos...")
        

    for result in cursor:
        print(result)

except mysql.connector.Error as err:

    if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)

finally:
    if 'cnx' in locals() or 'cnx' in globals():
        cnx.close()
