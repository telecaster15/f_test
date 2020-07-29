from flask import Flask, request, render_template, redirect, url_for, flash
import requests

app = Flask(__name__)
app.secret_key = "super secret key"



@app.route('/',methods=['GET','POST'])
def index():

    return render_template('index_t.html')


@app.route("/index_js")
def index_js():
    render_template("/js/scripts.js")


@app.route('/join')
def join():
    render_template('join.html')





# @app.route('/depart_search', methods=['GET','POST'])
# def depart_search():
#     if (request.method=='POST'):
#         depart = request.form['depart']
#         if (depart==None) :
#             depart = '   -   '
#         else:
#             url = 'http://www.juso.go.kr/addrlink/addrLinkApi.do'
#             params = {'confmKey':'devU01TX0FVVEgyMDIwMDYxOTE4MDA0ODEwOTg4NTY=',
#                       'currentPage':'1',
#                       'countPerPage':'10',
#                       'keyword': depart,
#                       'resultType':'json'
#                       }
#
#             response = requests.get(url,params=params)
#             location_data = response.json()
#             juso = location_data['results']['juso']
#             if juso == None:
#                 flash('해당 결과가 존재하지 않습니다.')
#                 return redirect('/')
#             else:
#                 d_jibunAddr_list=[]
#                 for i in range(len(juso)):
#                     jibunAddr = juso[i]['jibunAddr']
#                     d_jibunAddr_list.append(jibunAddr)
#     else:
#         depart = "  -  "
#     return render_template('index.html',d_jibunAddr_list=d_jibunAddr_list)

# @app.route('/arrive_search', methods=['GET','POST'])
# def arrive_search():
#     if (request.method=='POST'):
#
#         if (arrive==None) :
#             depart = '   -   '
#         else:
#             url = 'http://www.juso.go.kr/addrlink/addrLinkApi.do'
#             params = {'confmKey':'devU01TX0FVVEgyMDIwMDYxOTE4MDA0ODEwOTg4NTY=',
#                       'currentPage':'1',
#                       'countPerPage':'10',
#                       'keyword': arrive,
#                       'resultType':'json'
#                       }
#
#             response = requests.get(url,params=params)
#             location_data = response.json()
#             juso = location_data['results']['juso']
#             if juso == None:
#                 flash('해당 결과가 존재하지 않습니다.')
#                 return redirect('/')
#             else:
#                 a_jibunAddr_list=[]
#                 for i in range(len(juso)):
#                     jibunAddr = juso[i]['jibunAddr']
#                     a_jibunAddr_list.append(jibunAddr)
#     else:
#         depart = "  -  "
#     return render_template('index.html',a_jibunAddr_list=a_jibunAddr_list)

if __name__ == "__main__":
    app.debug = True
    app.run(port=5000)
