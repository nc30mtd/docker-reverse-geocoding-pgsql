from flask import Flask, request
import psycopg2
import json

app = Flask(__name__)

# SELECT *
# FROM   m_address_gaiku
# WHERE  representative_flg = 1
# ORDER BY ST_SETSRID(ST_POINT(139.745433, 35.658581), 4326) <-> the_geom
# LIMIT 1;
def getAddress(lon, lat):
    users = 'postgres' #initial user
    dbnames = 'gis'
    passwords = 'postgres'
    host = 'postgres-postgis' 
    port = '5432'
    conn = psycopg2.connect(" user=" + users +" dbname=" + dbnames +" password=" + passwords +" host=" + host +" port=" + port)
    cur = conn.cursor()
    cur.execute("SELECT * FROM m_address_gaiku WHERE  representative_flg = '1' ORDER BY ST_SETSRID(ST_POINT("+str(lon)+", "+str(lat)+"), 4612) <-> the_geom LIMIT 1;")
    results = cur.fetchall()
    #cur.fetchone()
    #conn.commit()
    cur.close()
    conn.close()

    return results

def generate_response(result):
    ret = {
        'status':200,
        'result':
        {
            'prefecture': result[0][0],
            'municipality': result[0][1],
            'local' : 
            {
                'section':result[0][2],
                'homenumber':result[0][4],
                'longitude':result[0][9],
                'latitude':result[0][8]
            }
        },
        'meta':[
            {
                'name':'thanks',
                'content':'このサービスは 国土交通省 提供 街区レベル位置参照情報および大字・町丁目レベル位置参照情報 を利用しています'
            }
        ]
    }
    return ret;
    
def generate_error_response(code):
    ret = {
        'status':code,
        'result':
        {
            'prefecture': '',
            'municipality': '',
            'local' : 
            {
                'section':'',
                'homenumber':'',
                'longitude':'',
                'latitude':''
            }
        },
        'meta':[
            {
                'name':'thanks',
                'content':'このサービスは 国土交通省 提供 街区レベル位置参照情報および大字・町丁目レベル位置参照情報 を利用しています'
            }
        ]
    }
    return ret;

@app.route('/')
def root():
    ret = {}
    try:
        result = getAddress(139.745433, 35.658581)
        ret = generate_response(result)
    except:
        ret = generate_error_response(201)

    return json.dumps(ret)

# http://server/rgeocode?lat=43.063751&lon=141.358524
@app.route('/rgeocode', methods=['GET'])
def rgeocode():
    lat = request.args.get('lat', '')
    lon = request.args.get('lon', '')
    
    ret = {}
    try:
        result = getAddress(lon, lat)
        ret = generate_response(result)
    except:
        ret = generate_error_response(201)

    return json.dumps(ret)

@app.errorhandler(400)
@app.errorhandler(404)
@app.errorhandler(500)
def error_handler(error):
    response = {
        "status":error.code, 
        "error": 
        {
            "type": error.name, 
            "message": error.description 
        }
    }
    return json.dumps(response)

## おまじない
if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=56743)