# BudiStore

Ini adalah server backend untuk digunakan pada website BudiStore untuk melihat Front End nya dapatdilihat pada https://github.com/Fikrii12/Front-End-BudiStore.git

## Depedensi Yang Digunakan

- Pyramid: Framework web yang digunakan.
- pymysql: Digunakan untuk koneksi database MySQL.
- setuptools: Digunakan di setup.py, biasanya sudah terinstal, tapi perlu di-check.

## Instalasi

### Prasyarat
- Python 3.x
- [Virtual Environment](https://docs.python.org/3/library/venv.html) (opsional)

### Langkah-langkah Instalasi

1. **Clone Repositori**

    ```bash
    git clone https://github.com/username/nama-proyek.git
    ```

2. **Masuk ke Direktori Proyek**

    ```bash
    cd nama-proyek
    ```

3. *(Opsional) Buat dan Aktifkan Lingkungan Virtual*

    Jika Anda ingin menggunakan lingkungan virtual:

    ```bash
    python -m venv env
    source env/bin/activate  # Untuk Linux/Mac
    .\env\Scripts\activate   # Untuk Windows
    ```

4. **Install Dependensi Proyek**

    ```bash
    pip install -r requirements.txt
    ```
5. **Impor Data Base**
   Impor data base uts_pwl.sql pada php myadmin tentunya anda perlu menjalankan XAMPP terlebih dahulu. buat nama database "uts_pwl"

6. **Jalankan Aplikasi**

    ```bash
    pserve development.ini
    ```

    Proyek sekarang dapat diakses di http://localhost:6543.


## Fitur

- GET
- POST
- DELETE
- POT


