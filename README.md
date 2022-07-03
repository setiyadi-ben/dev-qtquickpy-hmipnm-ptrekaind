
## Screenshots

![App Screenshot](https://i.ibb.co/gFyr1qd/hmiptrekaind.png)


# Mengenai Project HMI Display ini

Project ini merupakan sebuah proyek kerjasama antara PT Rekaindo Global Jasa (PT REKA) dengan Politeknik Negeri Madiun (PNM) yang sedang dikembangkan oleh PT REKA dengan mahasiswa magang dengan tujuan untuk membuat software yang berisi modul pembelajaran komponen kereta api (modul ajar) serta berisi dengan fasilitas monitoring dan control.


## Used By

Project ini merupakan sebuah *raw product*, yang sedang dikembangkan
oleh para Mahasiswa magang dan Institusi yang terkait adalah :

- PT Rekaindo Global Jasa **(PT REKA)** sebagai produsen
- Politeknik Negeri Madiun **(PNM)** sebagai client


## Fitur dari Software

- Modul pembelajaran komponen kereta api
- Monitoring komponen kereta api
- Controlling komponen kereta api



## System Requirements

Sebelum memulai melakukan kegiatan developing software program,
ada baiknya untuk melihat spesifikasi teknis yang perlu disiapkan agar
dapat melakukannya tanpa terhalang oleh harware yang usang. Berikut
spesifikasi yang harus dipenuhi :

- Memiliki setup second atau triple monitor **(Opsional)**
- OS : Windows 10 atau yang lebih baru
- Prosesor : Intel i5 Gen-6 keatas, atau AMD Ryzen 2000 series keatas
- RAM : DDR3 atau DDR4 ukuran **minimum 8GB (wajib)**
- Koneksi internet yang stabil

## 🛠 Skills
Jika kalian melanjutkan kedepannya melanjutkan pengerjaan ini, kemampuan yang akan diperoleh
berupa :

- QMLJS dan sedikit Javascript
- Python (backend)
- Logika desain interface (GUI)
- Transmisi data dengan Modbus 

## Instalasi

1. Software yang dibutuhkan untuk melakukan development program,
diantaranya :

- Phyton 3.10
- PySide2
- Qt Creator 5.12 (Sediakan kapasitas 20GB free disk)

2. Langkah selanjutnya adalah instalasi **Phyton**, download dari situs 
resminya di [sini.](https://www.python.org/downloads/)

![App Screenshot](https://www.dataquest.io/wp-content/uploads/2022/01/python-installer-img4.webp)

3. Masuk ke command prompt (CMD) dan ketikkan perintah berikut :
```sh
  pip install PySide2
```
4. Unduh aplikasi Qt Creator 5.12 di [sini.](https://www.qt.io/offline-installers)

![App Screenshot](https://i.ibb.co/ByRQ43D/installer-offline-qt.png)

5. Sambil menunggu proses download selesai silahkan daftar akun
Qt terlebih dahulu, ini diperlukan untuk melakukan autentikasi
saat melakukan proses instalasi berlangsung nanti.

![App Screenshot](https://i.ibb.co/vHQMhPJ/regis-qt.png)

6. Pastikan untuk mencentang semua pilihan yang ada di saat instalasi. Ini diperlukan
untuk menghindari error saat instalasi.

![App Screenshot](https://i.ibb.co/N9Bj0TJ/install-option-qt.png)

## Running Tests

Setelah berhasil melakukan proses instalasi, saatnya kita melakukan
pengetesan dengan membuat sebuah "Hello, Za Warudo!" dalam
Aplikasi Qt Creator.

1. Mulailah dengan membuat project baru dengan mengeklik tombol New
dan pilih **"Qt Quick Application"**.
![App Screenshot](https://i.ibb.co/hLYh0LL/getting-started-qt-phyton.png)

2. Namailah nama project kalian dan pilih lokasi yang akan dipilih. Yang digaris kotak merupakan
opsional karena itu merupakan set default direktori project.

![App Screenshot](https://i.ibb.co/5sT7v0V/create-name-file.png)

Kalian bisa pilih diantara ini, bebas :

![App Screenshot](https://i.ibb.co/jgzXJs1/pyside2-choose.png)

Klik finish

![App Screenshot](https://i.ibb.co/jMBBBLn/done.png)

3. Setelah itu masuk ke menu **project** yang ada di sebelah kiri. Pastikan 
untuk interpreternya terpilih **Phyton 3.10**.
![App Screenshot](https://i.ibb.co/P9Xkwrw/project-intrepreter.png)

4. Kemudian masuk ke menu **Design** dan pastekan kode tersebut di text
editor.

```javascript
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQml 2.3 //class yg dibutuhkan untuk QtObject

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#BF40BF"
    title: qsTr("Hello World")

        Item {
            id: container
            x: 0
            width: 640
            height: 200
            anchors.verticalCenter: parent.verticalCenter



            Rectangle {
                id: myRect
                width: 200; height: 175
                color: "black"
                radius: 10
            }

            Text {
                color: "#ffffff"
                text: "Hello, Za Warudo !"
                font.bold: true
                textFormat: Text.RichText
                font.pointSize: 10
                anchors.centerIn: myRect

            }

            states: State {
                name: "reanchored"
                AnchorChanges { target: myRect; anchors.right: container.right }
            }

            transitions: Transition {
                // smoothly reanchor myRect and move into new position

                AnchorAnimation {
                    duration: 2000
                    loops: Animation.Infinite
                }


            }

            Component.onCompleted: container.state = "reanchored"
        }
    
}
```

![App Screenshot](https://i.ibb.co/1bMvsZ1/code-pasting-qml.png)

5. Klik Run dengan mengeklik tombol play berwarna hijau di tepi tepi kiri.

![App Screenshot](https://i.ibb.co/mJSknZV/run-command.png)



## [Nice!](https://www.youtube.com/watch?v=ffQmb-cNFuk) Kalian ready to go untuk menjadi seorang coder

![App Screenshot](https://www.kindpng.com/picc/m/703-7031106_transparent-joseph-joestar-png-transparent-joseph-joestar-nice.png)
## Authors

<table>
  <tr>
    <td align="center"><a href="https://github.com/setiyadi-ben"><img src="https://avatars.githubusercontent.com/u/106580966?v=4" width="100px;" alt=""/><br /><sub><b>Benny Hartanto S</b></sub></a></td>
    <td align="center"><a href="https://github.com/Satrioriha"><img src="https://avatars.githubusercontent.com/u/106947962?v=4" width="100px;" alt=""/><br /><sub><b>Satrio Riha</b></sub></a></td>
    <td align="center"><a href="https://github.com/wiroooS"><img src="https://avatars.githubusercontent.com/u/63798404?v=4" width="100px;" alt=""/><br /><sub><b>Akbar Januar</b></sub></a></td>
    
  </tr>
</table>

## Lessons Learned

What did you learn while building this project? What challenges did you face and how did you overcome them?


## FAQ

#### Kenapa penjelasan mengenai program di dalam repo tidak dijelaskan?

Karena di repo ini hanya sebagai dokumentasi pekerjaan yang telah dilakukan saat melakukan
magang di PT Rekaindo Global Jasa (PT REKA). Misalkan ikut di dokumentasikan disini, akan
menghambat proses developing program ini dikarenakan **Saya buat dari 0, "create from scratch"**.

#### Apakah ada rencana untuk membuat tutorial dengan Bahasa Indonesia?

Sudah sempat dipikirkan, setelah ada waktu dan tempat yang memadai Kalian bisa pantau melalui
[playlist ini.]()

#### Dimana tempat untuk mempelajari project yang semisal dengan ini?

Untuk sumber belajar Saya dapatkan berawal dari beberapa Channel di YouTube, diantaranya ini :

[![youtube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/playlist?list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-)
[![youtube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/playlist?list=PL6CJYn40gN6hdNC1IGQZfVI707dh9DPRc)



## 🔗 Find out More (Single Links)
[![linktree](https://img.shields.io/badge/linktree-39E09B?style=for-the-badge&logo=linktree&logoColor=white)](https://linktr.ee/setiyadi_ben)

