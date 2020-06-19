import requests
import json

url = 'http://www.juso.go.kr/addrlink/addrLinkApi.do'
params = {'confmKey':'devU01TX0FVVEgyMDIwMDYxOTE4MDA0ODEwOTg4NTY=',
          'currentPage':'1',
          'countPerPage':'5',
          'keyword':'신도림역',
          'resultType':'json'
          }

response = requests.get(url,params=params)
location_data = response.json()
juso = location_data['results']['juso']

jibunAddr_list=[]
for i in range(len(juso)):
    jibunAddr = juso[i]['jibunAddr']
    print(jibunAddr)


