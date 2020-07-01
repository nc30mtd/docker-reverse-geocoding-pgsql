# 逆ジオコーディングAPIの簡易テスト環境

## 住所DBの構築

```
# cd ./opt
$ chmod +x expandzip2csv.sh
$ ./download.sh
$ ./expandzip2csv.sh
$ docker-compose up -d
$ docker-compose exec postgres-postgis bash
$ mv ./opt/*-* /tmp/
$ cp ./opt/sample.sql /tmp
$ su postgres
$ psql -U postgres
$ postgres=> create database gis;
$ psql gis -U postgres
$ \i /tmp/sample.sql
```

## APIの起動

```
$ docker-compose up -d #すでに起動してる場合は不要
$ docker-compose exec python3env bash
$ cd /root/opt
$ python3 api.py
```

※Flaskをバックグラウンドで起動する場合は下記を利用のこと

```
$ nohup FLASK_APP=api.py FLASK_DEBUG=1 nohup flask run --host='0.0.0.0' --port=56743 >out.log 2>err.log &
```