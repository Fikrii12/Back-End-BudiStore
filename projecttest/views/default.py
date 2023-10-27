from pyramid.view import view_config
from pyramid.response import Response
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy.orm.exc import NoResultFound
import pymysql
import uuid


@view_config(route_name='get_product', renderer='json')
def get_product(request):
    conn = pymysql.connect(host='localhost', user='root', password='', db='uts_pwl')
    cursor = conn.cursor()
    
    select_query = "SELECT * FROM produk"
    cursor.execute(select_query)
    data = cursor.fetchall()
    return {'data': data}

@view_config(route_name='post_product', renderer='json', request_method='POST')
def post_product(request):
    conn = pymysql.connect(host='localhost', user='root', password='', db='uts_pwl')
    cursor = conn.cursor()

    nama = request.POST.get('nama')
    harga = request.POST.get('harga')
    gambar_url = request.POST.get('gambar')  # Ambil URL gambar dari formulir

    # Buat UUID untuk id_produk
    id_produk = str(uuid.uuid4())

    # Simpan data ke database
    try:
        insert_query = "INSERT INTO produk (id_produk, nama, gambar, harga) VALUES (%s, %s, %s, %s)"
        cursor.execute(insert_query, (id_produk, nama, gambar_url, harga))
        conn.commit()
        return {'message': 'Produk berhasil ditambahkan!'}
    except Exception as e:
        conn.rollback()
        return {'error': str(e)}
    finally:
        conn.close()
        
@view_config(route_name='delete_product', renderer='json', request_method='DELETE')
def delete_product(request):
    conn = pymysql.connect(host='localhost', user='root', password='', db='uts_pwl')
    cursor = conn.cursor()

    id_produk = request.matchdict['id']  # Ambil id_produk dari URL

    try:
        delete_query = "DELETE FROM produk WHERE id_produk = %s"
        cursor.execute(delete_query, (id_produk,))
        conn.commit()
        return {'message': 'Produk berhasil dihapus!'}
    except Exception as e:
        conn.rollback()
        return {'error': str(e)}
    finally:
        conn.close()
