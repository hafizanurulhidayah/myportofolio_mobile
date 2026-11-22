# MyPortfolio Mobile

Name : Hafiza Nurul Hidayah 
Class : PBP - D
Major : Computer Science 
NPM : 2506624101 

A personal portfolio mobile application built with Flutter** and Dart as part of the Platform-Based Programming (PBP) course at Universitas Indonesia. This project introduces a simple and interactive portfolio homepage.

## Features

- **Personal Information Cards** — Displays my student ID (NPM), full name, and PBP class.
- **Interactive Homepage** — So far it provides three main action cards:
  - Lihat Experience
  - Tambah Experience
  - Logout
- **SnackBar Notifications** — Displays a notification whenever an action card is pressed.
- **Custom UI Design** — Uses a pastel-inspired color palette with a clean and playful layout.
- **My Profile / About Me** — Halaman tambahan yang
  memperkenalkan profil pribadi, latar belakang pendidikan,
  minat, dan ketertarikan melalui desain yang playful.

## Design & Color Palette

The application uses a soft color palette to create a friendly and playful experience.

| Color | Hex Code | Usage |
|---|---|---|
| Pink | `#F35F9B` | Primary accent |
| Soft Pink | `#F7CFDF` | Information cards |
| Cream | `#F5E8E2` | Background |
| Green | `#1E5B3A` | Accent |
| White | `#FFFDF9` | Card surfaces |

## Technologies Used
- **Flutter** — Cross-platform UI framework.
- **Dart** — Programming language.
- **Material Design 3** — UI component system.

## Project Structure
```text
myportofolio_mobile/
├── assets/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── menu.dart
│   │   ├── project_form.dart
│   │   └── experience_form.dart
│   └── widgets/
│       ├── left_drawer.dart
│       └── project_card.dart
├── android/
├── ios/
├── web/
├── pubspec.yaml
└── README.md
```

## AI Usage Disclosure
Dalam proses pengembangan aplikasi ini, saya menggunakan ChatGPT 
sebagai alat bantu untuk mendukung proses pembelajaran dan implementasi.

Strategi prompting yang diterapkan meliputi:
- Concept Exploration: Meminta penjelasan mengenai konsep Flutter, Dart, widget, constructor, dan penggunaan const untuk memahami materi sebelum mengimplementasikannya.
- Code Assistance: Meminta bantuan dalam menyusun dan mengembangkan widget Flutter, termasuk InfoCard dan ItemCard.
- Debugging: Memberikan pesan error dan potongan kode agar AI dapat membantu mengidentifikasi kemungkinan penyebab masalah serta menjelaskan alternatif solusinya.
- UI/UX Brainstorming: Mendiskusikan ide desain, pemilihan warna, dan pengembangan fitur tambahan seperti My Profile / About Me.
- Documentation Assistance: Menggunakan AI untuk membantu menyusun struktur README dan memperjelas dokumentasi proyek.

Meskipun AI membantu mempercepat proses pengembangan, hasil yang diberikan tidak selalu dapat langsung diterapkan.
Salah satu keterbatasannya adalah kode yang dihasilkan terkadang belum sepenuhnya sesuai dengan struktur proyek yang sedang digunakan. Misalnya, perubahan pada constructor atau penggunaan const dapat menimbulkan error apabila tidak disesuaikan dengan deklarasi widget lainnya.

Maka dari itu seluruh saran dan kode yang dihasilkan AI ditinjau dan disesuaikan kembali selama proses pengerjaan. AI digunakan sebagai alat bantu pembelajaran, bukan sebagai pengganti pemahaman terhadap implementasi kode.

Link AI Chat Tugas 7 : https://chatgpt.com/share/6af9be7c-4208-83ec-88ee-4c8ce7ee9e63
Dokumentasi ini mencakup proses eksplorasi ide, implementasi kode, debugging, hingga pengembangan fitur tambahan.

Link AI Chat Tugas 8: https://chatgpt.com/share/6b02ea65-ee8c-83ec-9304-798a4bf9a57f
Dokumentasi ini mencakup proses eksplorasi ide, implementasi kode, debugging, hingga pengembangan fitur tambahan.

Sebagai bentuk pengembangan kreativitas dalam pengerjaan Tugas 7, saya menambahkan fitur My Profile / About Me pada aplikasi MyPortfolio Mobile. Penambahan fitur ini diharapkan dapat membuat aplikasi portofolio tidak hanya berfungsi sebagai tempat menampilkan informasi dasar, tetapi juga menjadi media untuk memperkenalkan diri dengan cara yang lebih menarik dan personal.

Sebagai bentuk pengembangan tampilan pada Tugas 8, saya melakukan penyesuaian pada susunan card menu di homepage. Sebelumnya, card ditampilkan dalam tiga kolom. Saya mengubahnya menjadi layout dua kolom dengan susunan 2 × 2 untuk empat menu utama, yaitu Lihat Projects, Tambah Projects, Lihat Experience, dan Tambah Experience.
Selain itu, tombol Logout saya pisahkan dari keempat card tersebut dan tempatkan di bagian bawah. Perubahan ini bertujuan agar susunan menu terlihat lebih terorganisasi dan memberikan tampilan yang lebih rapi serta nyaman digunakan, khususnya pada perangkat mobile.

### Tugas 7
1. Widget tree adalah representasi hierarkis atau struktur bertingkat dari seluruh widget yang digunakan untuk membangun antarmuka aplikasi Flutter. Widget direpresentasikan sebagai node dalam sebuah tree. Struktur ini digunakan Flutter selama proses layout untuk menentukan ukuran dan posisi widget, rendering untuk menampilkan tampilan ke layar, serta hit testing untuk mendeteksi interaksi pengguna.

Setiap widget dapat memiliki widget lain sebagai child. Hubungan tersebut disebut hubungan parent-child:
- Parent widget merupakan widget induk yang membungkus atau mengatur widget lainnya.
- Child widget merupakan widget anak yang berada di dalam parent widget dan menjadi bagian dari struktur tampilan parent tersebut.

Hubungan ini memungkinkan Flutter menyusun tampilan aplikasi dari komponen-komponen kecil menjadi antarmuka yang lebih kompleks. Satu parent dapat memiliki beberapa child, dan setiap child juga dapat memiliki child lainnya.

2. Widget dalam Flutter merupakan komponen yang dapat digunakan kembali (reusable component) untuk membangun antarmuka aplikasi. Berdasarkan PPT halaman 30–31, widget dapat berupa elemen visual, elemen layout, elemen styling, maupun elemen interaksi

Berdasarkan implementasi MyPortfolio Mobile, berikut widget yang digunakan atau menjadi bagian dari implementasi homepage.
1. MaterialApp : Menjadi pembungkus utama aplikasi dan mengatur konfigurasi aplikasi seperti tema serta halaman awal.
2. Scaffold	: Menyediakan struktur dasar halaman, seperti AppBar dan body.
3. AppBar : Menampilkan bagian header atau judul aplikasi, yaitu MyPortfolio.
4. Text	: Menampilkan teks seperti NPM, nama, kelas, dan tulisan sambutan.
5. Column : Menyusun widget secara vertikal.
Row	Menyusun widget secara horizontal.
6. Icon	: Menampilkan ikon untuk merepresentasikan setiap menu.
7. Card / Container	: Membentuk area kartu informasi dan menu dengan warna serta dekorasi tertentu, sesuai implementasi yang digunakan.
8. Padding	: Memberikan jarak antara isi widget dengan batas area di sekitarnya.
9. SnackBar	 : Menampilkan notifikasi ketika pengguna menekan tombol menu.
10. StatelessWidget	: Menjadi dasar pembuatan widget yang tidak memiliki state internal yang berubah secara mandiri.

Selain widget bawaan Flutter, proyek ini juga menggunakan custom widget yang dibuat sendiri:

a. MyHomePage
Merupakan custom widget yang menjadi halaman utama aplikasi. Widget ini menampilkan informasi pribadi dan daftar menu utama.

b. InfoCard
Merupakan custom widget untuk menampilkan informasi pribadi, seperti NPM, nama lengkap, dan kelas PBP. Penggunaan widget ini membuat tampilan kartu informasi dapat digunakan kembali tanpa harus menulis struktur yang sama berulang kali.

c. ItemCard
Merupakan custom widget yang digunakan untuk menampilkan tombol menu seperti Lihat Experience, Tambah Experience, dan Logout. Setiap kartu memiliki ikon, teks, dan warna latar belakang yang berbeda. Ketika ditekan, kartu akan menampilkan notifikasi SnackBar.

3. MaterialApp merupakan widget yang digunakan untuk mengatur konfigurasi utama aplikasi Flutter yang menggunakan konsep Material Design. 

Beberapa fungsinya adalah:
1. Mengatur tema aplikasi: Menggunakan properti theme untuk menentukan warna utama, warna sekunder, dan tampilan komponen aplikasi.
2. Menentukan halaman awal: Menggunakan properti home untuk menentukan halaman yang pertama kali ditampilkan.
3. Mengatur navigasi: Menyediakan konfigurasi navigasi dan pengelolaan halaman aplikasi.
4. Mengatur identitas aplikasi: Menggunakan properti seperti title untuk memberikan judul aplikasi.
5. Mengatur konfigurasi tampilan: Menyediakan berbagai konfigurasi yang berlaku pada aplikasi berbasis Material Design.
MaterialApp umumnya digunakan sebagai root widget karena menjadi pembungkus utama yang menyediakan konfigurasi dan konteks aplikasi bagi widget-widget di bawahnya.

Dengan menjadikannya root widget, konfigurasi seperti tema dan navigasi dapat digunakan oleh berbagai halaman dan komponen dalam aplikasi.

4. Perbedaan utama antara StatelessWidget dan StatefulWidget terletak pada bagaimana keduanya menangani perubahan data atau state selama aplikasi berjalan.

a. StatelessWidget
StatelessWidget adalah widget yang tidak memiliki state internal yang dapat berubah secara mandiri selama siklus hidupnya.

karakteristiknya adalah:
- Tidak memiliki state internal.
- Tidak mengubah tampilannya melalui aksi atau perilaku internal.
- Perubahan tampilan dapat terjadi ketika menerima perubahan dari parent widget.
- Memiliki properti yang bersifat final dan ditentukan saat konstruksi.

Gunakan StatelessWidget ketika komponen hanya bertugas menampilkan data dan tidak membutuhkan pengelolaan state internal.

b. StatefulWidget
StatefulWidget adalah widget yang tampilannya dapat berubah secara dinamis selama siklus hidup aplikasi.

meskipun class StatefulWidget bersifat immutable, widget ini memiliki pasangan berupa class State yang menyimpan dan mengelola kondisi atau state saat ini.
Karakteristiknya:
- Dapat memiliki state yang berubah selama aplikasi berjalan.
- Membutuhkan method createState() untuk menghasilkan objek State.
- Perubahan state dapat memicu pembangunan ulang tampilan melalui setState().

Gunakan StatefulWidget ketika komponen membutuhkan perubahan tampilan berdasarkan interaksi pengguna atau perubahan data selama aplikasi berjalan.

5. BuildContext adalah objek yang merepresentasikan posisi suatu widget di dalam widget tree Flutter. Setiap widget memiliki BuildContext yang dapat digunakan untuk mengakses informasi dan layanan yang tersedia dari widget-widget di atasnya dalam struktur tree.
BuildContext penting karena membantu widget berinteraksi dengan lingkungan atau konfigurasi aplikasi di sekitarnya.

Beberapa penggunaannya adalah:
1. Mengakses tema aplikasi: Menggunakan Theme.of(context) untuk mendapatkan konfigurasi tema yang diwariskan dari parent widget.
2. Navigasi halaman: Menggunakan Navigator.of(context) untuk berpindah atau kembali dari suatu halaman.
3. Menampilkan notifikasi: Menggunakan ScaffoldMessenger.of(context) untuk menampilkan SnackBar.
4. Mengakses konfigurasi widget: Memungkinkan widget mendapatkan informasi dari ancestor atau parent tertentu.

InheritedWidget memungkinkan suatu informasi diteruskan ke widget-widget turunannya. Salah satu contohnya adalah Theme, yang dapat diakses menggunakan Theme.of(context). Proses tersebut memanfaatkan BuildContext.

6. Hot reload merupakan fitur Flutter yang memungkinkan developer melihat perubahan kode secara langsung tanpa harus menjalankan ulang seluruh aplikasi dari awal. fitur ini didukung oleh Dart JIT (Just-in-Time) compiler yang memungkinkan perubahan kode dimuat ke dalam Dart Virtual Machine secara cepat.

Terdapat tiga jenis proses pembaruan aplikasi yang perlu dibedakan:
a. Hot Reload
Hot reload bekerja dengan memuat perubahan kode ke dalam VM dan membangun ulang widget tree, tetapi tetap mempertahankan state aplikasi yang sedang berjalan.

Karakteristik:
- Perubahan kode dapat langsung terlihat.
- Tidak menjalankan ulang main().
- Tidak menjalankan ulang initState().
- State aplikasi tetap dipertahankan.

Gunakan hot reload ketika hanya mengubah tampilan UI, seperti warna, ukuran teks, padding, atau susunan widget.

b. Hot Restart
Hot restart memuat perubahan kode sekaligus menjalankan ulang aplikasi Flutter.

Karakteristik:
- Aplikasi dimulai kembali dari awal.
- State aplikasi sebelumnya akan hilang.
- Method main() dijalankan kembali.
- Lebih lambat dibandingkan hot reload, tetapi umumnya lebih cepat daripada full restart.

Gunakan hot restart ketika perubahan membutuhkan aplikasi untuk menjalankan ulang proses inisialisasi, atau ketika hot reload tidak menghasilkan perubahan yang diharapkan. Contohnya, perubahan pada nilai awal state atau variabel global yang sudah diinisialisasi sebelumnya.

c. Full Restart
Full restart merupakan proses menghentikan dan menjalankan kembali aplikasi secara keseluruhan.

Karakteristik:
- Aplikasi dihentikan dan dijalankan kembali.
- Proses kompilasi ulang dilakukan jika diperlukan.
- Membutuhkan waktu lebih lama dibandingkan hot reload dan hot restart.
- Pada platform native, proses ini juga dapat melibatkan kompilasi ulang kode native seperti Java, Kotlin, Objective-C, atau Swift.

Gunakan full restart ketika melakukan perubahan yang membutuhkan pembangunan ulang aplikasi atau perubahan pada konfigurasi native, seperti konfigurasi Android/iOS atau plugin tertentu.

### Tugas 8 
Pada Tugas 8, saya mengembangkan aplikasi portfolio Flutter dengan menambahkan halaman form untuk mengelola data Experience. Selain itu, saya juga melakukan beberapa penyesuaian pada tampilan homepage dan navigasi agar fitur baru dapat diakses dengan mudah.

Beberapa penambahan fitur yang ditambahkkan adalah : 
1. Project Form dan Experience Form
2. Validate Form
3. Menampilkan data dengan alertdialog
4. Menambahkan navigasi experienceform dan projectform
5. Menyesuaikan konsistensi tampilan

Pengujian
Saya melakukan pengujian terhadap fitur ProjectForm dan ExperienceForm, termasuk:
Memastikan seluruh field wajib diisi.
Memastikan validasi minimal karakter berjalan.
Memastikan Start Date dan End Date harus diisi.
Memastikan End Date tidak boleh lebih awal daripada Start Date.
Memastikan AlertDialog menampilkan seluruh data yang dimasukkan.
Memastikan form kembali kosong setelah dialog ditutup.
Memastikan navigasi melalui homepage dan drawer berjalan dengan baik.

Jawaban Pertanyaan Reflektif : 
1. Navigasi (push, pushReplacement, pop) dan Drawer
- Navigator.push() menumpuk halaman baru di atas halaman aktif (dipakai untuk membuka form dari kartu aksi agar pengguna bisa kembali ke halaman sebelumnya).
- Navigator.pushReplacement() mengganti halaman aktif saat ini dengan halaman tujuan (dipakai pada opsi Home di drawer agar tumpukan rute tidak menumpuk berulang).
- Navigator.pop() menutup halaman paling atas dan kembali ke halaman sebelumnya (atau menutup dialog).

2. Konsistensi Struktur (Scaffold, AppBar, Drawer) & Warna Tema
Kombinasi Scaffold, AppBar, dan Drawer menjaga struktur dan akses navigasi tetap seragam di tiap halaman. Contohnya, warna pink Color(0xFFF35F9B) pada AppBar dipakai konsisten di halaman utama maupun halaman form (ProjectFormPage dan ExperienceFormPage) untuk mempertahankan identitas visual portofolio.

3. Tata Letak Formulir & Validasi Input
Susunan Form + Column dipilih agar alur input dan tombol Simpan rapi dan mudah dijangkau. Widget pengatur jarak (Padding, SizedBox) mencegah elemen saling berdempetan, sedangkan SingleChildScrollView menjaga semua input dan tombol tetap bisa di-scroll saat layar sempit atau keyboard muncul.

Saat tombol Simpan ditekan, GlobalKey<FormState> mengakses state form untuk memanggil validate(), yang menjalankan fungsi validator pada tiap field. Misalnya, input kosong atau hanya spasi ("   ") akan ditolak. Jenis input atau tipe keyboard saja tidak cukup karena hanya mempermudah cara mengetik dan tidak memvalidasi aturan isi data (seperti wajib isi, panjang minimal, atau urutan tanggal).