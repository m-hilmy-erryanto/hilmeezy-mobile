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