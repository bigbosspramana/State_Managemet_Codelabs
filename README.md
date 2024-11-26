# Stateless vs Stateful Flutter App

## Deskripsi Proyek

Proyek ini merupakan contoh aplikasi Flutter yang menunjukkan perbedaan antara `StatelessWidget` dan `StatefulWidget` dengan membuat aplikasi penghitung (counter) sederhana.

Aplikasi ini memiliki dua versi:

1. **StatelessCounterApp** - Menggunakan `StatelessWidget`, di mana nilai penghitung tidak dapat berubah karena widget bersifat stateless.
2. **StatefulCounterApp** - Menggunakan `StatefulWidget`, di mana nilai penghitung dapat berubah dengan interaksi pengguna, yakni setiap kali tombol "Increment" diklik.

### Fitur Utama:
- **StatelessCounterApp**:
  - Menggunakan `StatelessWidget` untuk menampilkan penghitung dengan nilai yang tetap 0, karena tidak ada perubahan status.
  - Menampilkan tombol untuk menambah penghitung, tetapi tidak akan ada perubahan karena aplikasi ini tidak mendukung perubahan status.
  
- **StatefulCounterApp**:
  - Menggunakan `StatefulWidget` untuk menampilkan penghitung yang dapat berubah berdasarkan interaksi pengguna.
  - Ketika tombol "Increment" diklik, nilai penghitung akan bertambah satu setiap kali, dan tampilan akan diperbarui sesuai dengan nilai penghitung yang baru.

### Desain Aplikasi:
- **AppBar**: Aplikasi ini memiliki `AppBar` dengan latar belakang berwarna biru yang berbeda untuk kedua versi. Teks di dalam `AppBar` menampilkan nama aplikasi yang sesuai.
- **Counter Value**: Menampilkan nilai penghitung yang dapat berubah pada versi `StatefulWidget`, sementara pada versi `StatelessWidget`, nilai penghitung tetap 0.
- **Tombol Increment**: Tombol untuk menambah nilai penghitung. Pada versi `StatefulWidget`, tombol ini akan memperbarui tampilan penghitung ketika ditekan.

### Penjelasan Widget:
- **StatelessWidget**: Pada `StatelessWidget`, nilai penghitung tetap dan tidak bisa diubah. Aplikasi hanya menampilkan teks dan tombol tanpa perubahan status atau interaksi dinamis.
- **StatefulWidget**: Pada `StatefulWidget`, nilai penghitung dapat diubah dengan interaksi pengguna. Tombol "Increment" akan menambah nilai penghitung setiap kali ditekan, dan UI akan diperbarui menggunakan `setState()`.

## Cara Menjalankan Aplikasi

1. Clone atau unduh repositori ini ke dalam lingkungan pengembangan Flutter Anda.
2. Pastikan Anda sudah menginstal Flutter dan memiliki perangkat atau emulator yang terhubung.
3. Jalankan aplikasi menggunakan perintah `flutter run` di terminal.
4. Secara default, aplikasi akan menampilkan versi `StatefulCounterApp`. Jika Anda ingin beralih ke `StatelessCounterApp`, buka file `main.dart` dan ubah komentar pada baris `runApp(MyStatefulWidgetApp());` dengan mengaktifkan `runApp(MyStatelessApp());` dan sebaliknya.
5. Anda dapat melihat dua versi aplikasi dan membandingkan perilaku masing-masing.

## Perbedaan Antara `StatelessWidget` dan `StatefulWidget`

- **StatelessWidget**:
  - Tidak memiliki status internal yang dapat berubah.
  - UI tidak dapat diperbarui setelah widget dibangun.
  - Cocok digunakan untuk widget yang hanya menampilkan data statis yang tidak akan berubah.

- **StatefulWidget**:
  - Memiliki status internal yang dapat berubah.
  - UI dapat diperbarui berdasarkan perubahan status menggunakan metode `setState()`.
  - Cocok digunakan untuk widget yang memerlukan interaksi pengguna atau perubahan status dinamis.

