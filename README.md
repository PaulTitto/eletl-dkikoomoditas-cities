# 🌾 Jakarta Commodity Price Forecasting & Intelligence System
## End-to-End Data Engineering & Analytics Pipeline

📋 Latar Belakang Masalah
DKI Jakarta merupakan wilayah urban dengan kepadatan bangunan tinggi dan keterbatasan lahan pertanian. Kondisi ini memaksa Jakarta bergantung hampir 100% pada pasokan pangan dari luar daerah. Akibatnya, Jakarta memiliki kerentanan tinggi terhadap volatilitas harga, gangguan rantai pasok, dan inflasi pangan.

Tanpa sistem pemantauan yang real-time dan prediktif, pemangku kepentingan (pemerintah & pelaku bisnis) terlambat dalam merespons lonjakan harga yang mendadak.

Proyek ini bertujuan untuk membangun sistem End-to-End Data Pipeline yang mengintegrasikan proses ekstraksi data otomatis, penyimpanan terstruktur, pemodelan prediktif, hingga visualisasi interaktif.
1. **Automated Monitoring**: Memantau pergerakan harga komoditas harian di seluruh pasar Jakarta secara otomatis.
2. **Early Warning System**: Memberikan prediksi harga di masa depan untuk mitigasi risiko lonjakan harga.
3. **Decision Support**: Menyediakan insight visual bagi pengambil keputusan terkait stabilitas harga pangan.

### 🛠️ Arsitektur & Metodologi

Sistem ini terdiri dari tiga modul utama:

1. **Automated ETL Pipeline (Extract, Transform, Load)**
Membangun pipeline data yang tangguh untuk menjamin ketersediaan data harian.
* Extract: Mengembangkan custom scraper berbasis Python (curl_cffi) dengan teknik anti-detect untuk mengambil data harian dari API Info Pangan Jakarta (IPJ).
* Transform: Melakukan pembersihan data (data cleaning), penanganan tipe data, dan standardisasi format.
* Load: Menyimpan data ke dalam Data Warehouse berbasis PostgreSQL dengan skema Star Schema (Fact & Dimension tables) untuk performa query yang optimal.


2. **Predictive Modeling (Machine Learning)**
Menerapkan algoritma Long Short-Term Memory (LSTM) untuk memprediksi tren harga komoditas.
* Menggunakan data historis untuk melatih model prediksi harga harian per komoditas dan per wilayah kota.
* Menghasilkan forecast harga untuk 7-30 hari ke depan guna mendeteksi potensi anomali atau lonjakan harga.


3. **Visual Analytics (Business Intelligence)**
Mengembangkan dashboard interaktif menggunakan Tableau untuk menyajikan hasil analisis.
* Price Trend Analysis: Visualisasi tren kenaikan/penurunan harga.
* Regional Disparity: Peta persebaran harga untuk melihat ketimpangan harga antar wilayah (Jakarta Selatan vs Jakarta Utara, dll).
* Forecasting Visualization: Grafik perbandingan data aktual vs data prediksi.


### 💻 Tech Stack
1. Language: Python (Pandas, Requests)
2. Database: PostgreSQL
3. Visualization: Tableau Public / Desktop
4. Source: Info Pangan Jakarta API
<hr>



### Jakarta Commodity Price Forecasting by Cities
Proyek ini bertujuan untuk mengembangkan sistem prediksi harga komoditas pangan harian di berbagai wilayah DKI Jakarta menggunakan data historis yang bersumber dari Info Pangan Jakarta (IPJ).

Sebagai wilayah padat bangunan dengan keterbatasan lahan pertanian, Jakarta sangat rentan terhadap fluktuasi dan volatilitas harga. Model ini berfungsi untuk memberikan prediksi yang akurat guna meningkatkan kesiapsiagaan dan efektivitas stabilitas harga di wilayah tersebut.
