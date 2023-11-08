# Tugas Individu
## Tugas 7
* Apa perbedaan utama antara stateless dan stateful widget?
    Perbedaan utamanya adalah, stateless widget tidak akan berubah saat user berinteraksi dengannya. Contoh dari stateless widget adalah Icon, IconButton, dan Text. Sementara itu, stateful widget akan berubah tampilannya sebagai respons dari event yang disebabkan oleh aktivitas user atau saat menerima data. Contoh stateful widget adalah Checkbox, Radio, Slider, InkWell, Form, dan TextField.

* Sebutkan seluruh widget yang kamu gunakan dan jelaskan fungsinya!
    - MyApp
        Sebagai root dari aplikasi, menginisialisasi dan mengatur judul serta tema aplikasi
    - MaterialApp
        Mengatur warna aplikasi menjadi indigo
    - MyHomePage
        Membuat dan mengatur halaman utama aplikasi
    - Scaffold
        Menampilkan AppBar di atas daftar ShopItem
    - GridView.count
        Mengatur jumlah kolom dan mengisi ShopItem ke dalam grid
    - Shopcard
        Membuat card yang mewakili setiap ShopItem dan saat ditekan menampilkan snackbar
    - ShopItem
        Merepresentasikan Lihat Item, Tambah Item, dan Logout
    - Text, Icon, Container, Padding, InkWell
        Mengatur tampilan dan tindakan yang sesuai dalam setiap ShopCard

* Pengimplementasian Checklist
    - Membuat program flutter baru
        Saya pergi ke direktori yang saya mau, membuka cmd, lalu menjalankan flutter create hilmeezy_mobile.
    - Membuat tiga tombol
        Pertama saya membuat list yang berisi ShopItem yang berisi tombol yang akan dipakai, yakni Lihat Item, Tambah Item, dan Logout. Lalu saya menggunakan kelas ShopCard yang mewakili dan tempat menampilkan setiap ShowItem.
    - Memunculkan snackbar
        Saya mengatur onTap ShopCard untuk menampilkan snackbar dimana saat user menekan card, ScaffoldMessenger.of(context) akan digunakan untuk mengakses Scaffold yang mendefinisikan snackbar. Kemudian, showSnackBar akan menampilkan snackbar yang sesuai.
