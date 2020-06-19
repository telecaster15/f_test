import requests
import sqlite3

url1 = 'http://openapi.seoul.go.kr:8088/7247514a52696c6c39307764676a55/json/bikeList/1/1000'
resp1 = requests.get(url1)
status_code1 = resp1.status_code

url2 = 'http://openapi.seoul.go.kr:8088/7247514a52696c6c39307764676a55/json/bikeList/1001/2000'
resp2 = requests.get(url2)
status_code2 = resp2.status_code

date_set1 = resp1.json()
date_set2 = resp2.json()


date_set1_row = date_set1['rentBikeStatus']['row']
date_set2_row = date_set2['rentBikeStatus']['row']

x_list=[]
y_list=[]
stationName_list=[]

for i in range(len(date_set1_row)):
    x1= date_set1_row[i]['stationLatitude']
    y1= date_set1_row[i]['stationLongitude']
    stationName1= date_set1_row[i]['stationName']
    x_list.append(x1)
    y_list.append(y1)
    stationName_list.append(stationName1)

for i in range(len(date_set2_row)):
    x2= date_set2_row[i]['stationLatitude']
    y2= date_set2_row[i]['stationLongitude']
    stationName2= date_set2_row[i]['stationName']
    x_list.append(x2)
    y_list.append(y2)
    stationName_list.append(stationName2)

with sqlite3.connect('flask_sql.db') as conn:
    cursor = conn.cursor()
    #sql='CREATE TABLE SeoulBike(stationName text, x real,y real)'
    #cursor.execute(sql)
    sql = 'insert into SeoulBike (stationName, x, y) values(?,?,?)'
    for i in range(len(stationName_list)):
        cursor.execute(sql, (stationName_list[i],x_list[i],y_list[i]))
    conn.commit()
