# Tugas Individu
## Tugas 7
* Apa perbedaan utama antara stateless dan stateful widget?
    - Perbedaan utamanya adalah, stateless widget tidak akan berubah saat user berinteraksi dengannya. Contoh dari stateless widget adalah Icon, IconButton, dan Text. Sementara itu, stateful widget akan berubah tampilannya sebagai respons dari event yang disebabkan oleh aktivitas user atau saat menerima data. Contoh stateful widget adalah Checkbox, Radio, Slider, InkWell, Form, dan TextField.

* Sebutkan seluruh widget yang kamu gunakan dan jelaskan fungsinya!
    - MyApp
        - Sebagai root dari aplikasi, menginisialisasi dan mengatur judul serta tema aplikasi
    - MaterialApp
        - Mengatur warna aplikasi menjadi indigo
    - MyHomePage
        - Membuat dan mengatur halaman utama aplikasi
    - Scaffold
        - Menampilkan AppBar di atas daftar ShopItem
    - GridView.count
        - Mengatur jumlah kolom dan mengisi ShopItem ke dalam grid
    - Shopcard
        - Membuat card yang mewakili setiap ShopItem dan saat ditekan menampilkan snackbar
    - ShopItem
        - Merepresentasikan Lihat Item, Tambah Item, dan Logout
    - Text, Icon, Container, Padding, InkWell
        - Mengatur tampilan dan tindakan yang sesuai dalam setiap ShopCard

* Pengimplementasian Checklist
    - Membuat program flutter baru
        - Saya pergi ke direktori yang saya mau, membuka cmd, lalu menjalankan flutter create hilmeezy_mobile.
    - Membuat tiga tombol
        - Pertama saya membuat list yang berisi ShopItem yang berisi tombol yang akan dipakai, yakni Lihat Item, Tambah Item, dan Logout. Saya juga menambahkan warna berbeda untuk setiap ShopItem. Lalu saya menggunakan kelas ShopCard yang mewakili dan tempat menampilkan setiap ShowItem.
    - Memunculkan snackbar
        - Saya mengatur onTap ShopCard untuk menampilkan snackbar dimana saat user menekan card, ScaffoldMessenger.of(context) akan digunakan untuk mengakses Scaffold yang mendefinisikan snackbar. Kemudian, showSnackBar akan menampilkan snackbar yang sesuai.

## Tugas 8
* Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() dan contoh penggunaannya!
    - Perbedaan utamanya adalah Navigator.push() melakukan push halaman baru ke stack yang berisi kumpulan halaman-halaman yang ada. Kita bisa menggunakan Navigator.pop() untuk kembali ke halaman yang sebelumnya. 
    - Sementara itu Navigator.pushReplacement() juga melakukan push halaman baru, tapi fungsi ini juga menggantikan halaman yang saat ini sedang ditampilkan sehingga kita tidak bisa menggunakan Navigator.pop() untuk kembali. 
    - Oleh karena itu, contoh penggunaan Navigator.push() adalah saat kita ingin melakukan route ke halaman baru yang dimana user bisa kembali ke halaman sebelumnya, sedangkan kita menggunakan Navigator.pushReplacement() jika kita ingin user tidak bisa kembali ke halaman sebelumnya.

* Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya!
    - Align: Widget yang mengatur posisi anaknya berdasarkan faktor-faktor seperti alignment, width factor, dan height factor.

    - Center: Widget yang menempatkan childnya di tengah-tengah layar atau parent widget.

    - Container: Widget yang dapat mengatur properti-properti seperti padding, margin, decoration, dan lainnya untuk menentukan tata letak dan penampilan widget childnya.

    - Padding: Widget yang menambahkan ruang (padding) di sekeliling childnya.

    - Column: Widget yang menyusun childrennya dalam satu kolom.

    - GridView: Widget yang menampilkan childrennya dalam susunan grid.

    - Row: Widget yang menyusun childrennya dalam satu baris.

* Sebutkan apa saja elemen input pada form yang digunakan dan alasan penggunaannya!
    - TextFormField untuk Item Name (_name):
        digunakan untuk menyimpan nama dari item
    - TextFormField untuk Amount (_amount):
        digunakan untuk menyimpan jumlah item
    - TextFormField untuk Description (_description):
        digunakan untuk menyimpan deskripsi item

* Bagaimana penerapan clean architecture pada aplikasi Flutter?
    - Clean Architecture diterapkan pada Flutter dengan memisahkan konsep bisnis dari implementasi teknis. Penerapannya dalam aplikasi Flutter melibatkan pembagian menjadi tiga lapisan, yakni domain, data, dan presentation sehingga struktur project lebih rapi.

* Pengimplementasian Checklist
    - Pembuatan halaman formulir tambah item
        - Saya membuat file baru bernama shoplist_form.dart. Lalu saya membuat stateful widget ShopFormPage. Saya menambahkan elemen imput TextFormField untuk item name, amount, dan description. Saya juga melakukan validasi input sesuai soal. Lalu yang terakhir saya membuat tombol "Save" yang akan menampilkan pop-up berisi data item.
    - Mengarahkan pengguna ke halaman form tambah item
        - Di file menu.dart, pada bagian ListTile "Tambah Item", saya mengubah fungsi onTap-nya untuk mengarahkan user halaman form tambah item.
    - Memunculkan pop-up berisi data item
        - Pada _ShopFormPageState, setelah mengecek bahwa form sudah divalidasi. saya menampilkan data dalam pop-up menggunakan showDialog.
    - Membuat drawer
        - Di file left_drawer.dart, saya menambahkan opsi "Halaman Utama" dan "Tambah Item" pada ListView. Lalu saya mengatur onTap-nya agar bisa mengarahkan user ke halaman yang sesuai menggunakan Navigator.pushReplacement().

## Tugas 9
* Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    - Ya, kita bisa mengambil dan menggunakan JSON tanpa harus membuat modelnya terlebih dahulu. Namun, cara tersebut tidak direkomendasikan karena akan lebih baik menggunakan data yang sudah di-parse ke model dibandingkan dengan menggunakan raw JSON. Penggunaan model akan membuat lebih rapi dan terstruktur.

* Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    - CookieRequest adalah objek yang digunakan untuk mengelola permintaan HTTP dan menyimpan informasi cookie pada browser dalam aplikasi Flutter. Memiliki instance CookieRequest yang dibagikan ke semua komponen dalam aplikasi memungkinkan berbagai bagian dari aplikasi Flutter untuk berbagi dan mengelola data dari web platform. Hal ini memungkinkan aplikasi mobile untuk berinteraksi dengan web platform secara efektif, dengan memungkinkan akses dan manipulasi data dari web di seluruh kode Flutter.

* Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
    - Pertama, dilakukan fetch data dari API endpoint. Lalu, data yang didapat di-decode menjadi bentuk JSON. Data dalam bentuk JSON kemudian di-convert menjadi bentuk model. Setelah itu data dalam bentuk model dapat digunakan pada aplikasi Flutter.

* Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    - Pertama, aplikasi meminta input untuk username dan password. Setelah mendapatkan input tersebut, Dart akan melakukan akses ke suatu URL yang mengarahkan ke bagian Django. Pada bagian fungsi Django, request dan argumen berupa nama dan password yang diterima dari Dart akan digunakan untuk proses otentikasi username dan password di Django. Selanjutnya, fungsi Django memberikan respons dalam format JSON sesuai dengan hasil otentikasi. Apabila username dan password valid, fungsi akan memberikan respons kepada Dart bahwa pengguna dapat melakukan login. Sebaliknya, jika proses otentikasi gagal, fungsi Django akan memberikan respons kepada Dart bahwa pengguna tidak berhasil melakukan login.

* Sebutkan seluruh widget yang kamu gunakan dan jelaskan fungsinya!
    - Container: berfungsi menampung widget di dalamnya. 
    - Align: berfungsi untuk memberikan alignment pada widget di dalamnya. 
    - Row: berfungsi untuk menempatkan widget secara horizontal. 
    - Center: berfungsi untuk menempatkan widget di tengah. 
    - Text: berfungsi untuk menampilkan teks. 
    - Column: berfungsi untuk menampilkan widget secara vertikal. 
    - AppBar: berfungsi sebagai appbar pada aplikasi. 
    - Scaffold: berfungsi untuk memberikan struktur app. 
    - MaterialApp: berfungsi ketika ingin menggunakan material design. 
    - ListView.builder: berfungsi untuk menampilkan list of children yang scrollable. 
    - SizedBox: berfungsi untuk memberikan jarak. 
    - SingleChildScrollView: berfungsi untuk memberikan fungsionalitas scrollable terhadap child-nya. 
    - Expanded: berfungsi untuk menampung widget dengan sifat expand-nya. 
    - InkWell: berfungsi untuk memberikan behavior klik pada child widgetnya.

* Pengimplementasian Checklist
    - Memastikan deployment Django telah berjalan dengan baik.

    - Membuat halaman login dan mengintegrasikan sistem autentikasi Django dengan Flutter
        - Membuat file login.dart yang memerlukan pengguna untuk menginputkan username dan password. Selanjutnya, menetapkan navigasi dari halaman input username dan password untuk melaksanakan proses autentikasi dengan menggunakan fitur otentikasi yang ada pada Django. Dengan memasukkan URL yang terhubung ke bagian aplikasi web Django yang bertanggung jawab untuk memverifikasi username dan password, aplikasi dapat menjalankan proses otentikasi. Jika input yang dimasukkan sudah benar, respons dari Django ke Flutter menunjukkan bahwa pengguna dapat login. Sebagai akibatnya, pengguna akan diarahkan ke halaman utama. Di sisi lain, jika otentikasi tidak berhasil, pengguna tidak dapat login.

    - Membuat model kustom
        - Membuat model product yang mengikuti record di tugas Django. Penyusunan model objek menggunakan Quicktype, dimana kita memasukkan data JSON sebagai elemen input. Selanjutnya, model otomatis dibuat dalam bahasa Dart berdasarkan data JSON yang dimasukkan. Langkah ini memudahkan pembuatan file model Dart di dalam aplikasi dengan cara menyalin dan memasukkan kode yang telah dihasilkan secara otomatis oleh layanan Quicktype.

    - Membuat halaman yang berisi daftar semua item.
        - Saya membuat page list_product.dart untuk menampilkan seluruh list mywatch.

    - Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
        - Saya membuat file detail_page.dart yang menerima indeks dari item yang diklik. Kemudian, saya merancang tata letak teks yang menampilkan detail item dengan menggunakan nilai indeks sebagai parameter saat mengakses kelasnya. Selanjutnya, saya menambahkan tombol elevated button yang akan memicu navigasi kembali ke halaman list_product.dart ketika ditekan.