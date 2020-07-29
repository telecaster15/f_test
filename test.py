import requests
import json
from flask import Flask, request, render_template, redirect, url_for, flash

url = 'http://www.juso.go.kr/addrlink/addrLinkApi.do'
params = {'confmKey':'devU01TX0FVVEgyMDIwMDYxOTE4MDA0ODEwOTg4NTY=',
          'currentPage':'1',
          'countPerPage':'10',
          'keyword': '서울역',
          'resultType':'json'
          }

response = requests.get(url,params=params)
location_data = response.json()
juso = location_data['results']['juso']

print(juso[1])