from flask import Flask, request, render_template, redirect, url_for, flash
import sqlite3
import requests

app = Flask(__name__)
app.secret_key = "super secret key"



@app.route('/')
def index():
    return render_template('index.html')



@app.route('/search', methods=['GET'])
def search():
    depart_list=search_proc()
    return render_template('search.html',depart_list=depart_list)


@app.route('/search_proc', methods=['GET'])
def search_proc():

    depart = request.args.get('depart')
    app_key = 'KakaoAK '+ 'ae56cb54a2506b6fb7ba4972ee6e1f58'
    url = 'https://dapi.kakao.com/v2/local/search/address.json'
    params = {'query':depart,
              'page':'',
              'AddressSize':''
              }
    headers = {'Authorization':app_key}
    response = requests.get(url,params=params, headers=headers)

    map_data = response.json()
    map_doc = map_data['documents'][0]
    x = map_doc['x']
    y = map_doc['y']
    location=[x,y]
    return location

if __name__ == "__main__":
    app.debug = True
    app.run(port=1212)