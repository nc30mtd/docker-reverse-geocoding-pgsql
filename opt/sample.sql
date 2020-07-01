-- 拡張をインストール
CREATE EXTENSION IF NOT EXISTS postgis;


-- テーブル削除
DROP TABLE IF EXISTS m_address_gaiku;

create table m_address_gaiku (
   prefectures_nm       varchar(100),   -- 都道府県名
   city_nm              varchar(100),   -- 市区町村名
   oaza_nm              varchar(100),   -- 大字・丁目名
   koaza_nm             varchar(100),   -- 小字・通称名
   block_no             varchar(100),   -- 街区符号・地番
   coordinate_no        varchar(100),   -- 座標系番号
   x_coordinate         numeric(8, 1),  -- Ｘ座標
   y_coordinate         numeric(8,1 ),  -- Ｙ座標
   latitude           varchar(15),      -- 緯度
   longitude          varchar(15),      -- 経度
   displayed_address_flg         char(1),   --住居表示フラグ
   representative_flg    char(1),   -- 代表フラグ
   before_history_flg    char(1),   -- 更新前履歴フラグ
   after_history_flg char(1)    -- 更新後履歴フラグ
);

copy m_address_gaiku from '/tmp/01000-16.0a/01_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/02000-16.0a/02_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/03000-16.0a/03_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/04000-16.0a/04_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/05000-16.0a/05_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/06000-16.0a/06_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/07000-16.0a/07_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/08000-16.0a/08_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/09000-16.0a/09_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/10000-16.0a/10_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/11000-16.0a/11_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/12000-16.0a/12_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/13000-16.0a/13_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/14000-16.0a/14_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/15000-16.0a/15_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/16000-16.0a/16_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/17000-16.0a/17_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/18000-16.0a/18_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/19000-16.0a/19_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/20000-16.0a/20_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/21000-16.0a/21_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/22000-16.0a/22_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/23000-16.0a/23_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/24000-16.0a/24_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/25000-16.0a/25_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/26000-16.0a/26_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/27000-16.0a/27_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/28000-16.0a/28_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/29000-16.0a/29_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/30000-16.0a/30_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/31000-16.0a/31_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/32000-16.0a/32_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/33000-16.0a/33_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/34000-16.0a/34_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/35000-16.0a/35_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/36000-16.0a/36_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/37000-16.0a/37_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/38000-16.0a/38_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/39000-16.0a/39_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/40000-16.0a/40_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/41000-16.0a/41_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/42000-16.0a/42_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/43000-16.0a/43_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/44000-16.0a/44_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/45000-16.0a/45_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/46000-16.0a/46_2017.csv' with csv header encoding 'SJIS';
copy m_address_gaiku from '/tmp/47000-16.0a/47_2017.csv' with csv header encoding 'SJIS';

SELECT AddGeometryColumn('m_address_gaiku', 'the_geom', 4612, 'POINT', 2);
update m_address_gaiku SET the_geom = ST_SETSRID(ST_POINT(longitude::float, latitude::float), 4612);
CREATE INDEX gist_loc_ref_info ON m_address_gaiku USING GIST (the_geom);

-- 以下サンプル

-- SELECT pref, city, town, block, lat, lon
-- FROM   loc_ref_info
-- WHERE  representative = 1
-- ORDER BY ST_SETSRID(ST_POINT(139.745433, 35.658581), 4326) <-> the_geom
-- LIMIT 1;

SELECT *
FROM   m_address_gaiku
ORDER BY ST_SETSRID(ST_POINT(139.745433, 35.658581), 4326) <-> the_geom
LIMIT 1;