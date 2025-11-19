# Sales Analytics Proje Özeti

Bu depo, satış verisi üzerine yapılan analitik çalışmayı içerir.  
Projede SQL kullanılarak veritabanı modeli oluşturulmuş, veri analizi yapılmış ve ardından Power BI ile bir görselleştirme raporu (`staj.pbix`) hazırlanmıştır.

## İçerik  
- **database/** — Veritabanı oluşturma, tabloların tanımı ve başlangıç verilerinin yüklenmesine yönelik dosyalar.  
- **sql/** — Analiz yapmak için hazırlanan SQL sorgu dosyaları. Bu sorgular; satış verisinin özetlenmesi, ürün performansı, müşteri davranışları gibi analizleri içeriyor.  
- **staj.pbix** — Power BI rapor dosyası; SQL analizi sonucu elde edilen metriklerin görselleştirilmesi ve dashboard olarak sunulması amacıyla hazırlanmıştır.

## Kullanılan Teknikler  
- SQL ile tablo tanımlamaları, veri yükleme, birleştirme (JOIN), toplama (SUM, COUNT, AVG) işlemleri.  
- Koşullu ifadeler, gruplama ve filtreleme: hangi ürün ne kadar satmış, hangi müşteri ne kadar harcamış gibi.  
- Power BI’da veri modeli oluşturma ve görselleştirme ile KPI’ların izlenmesi.

### 📊 Power BI Sipariş Analizi Ekranı

Aşağıdaki ekran görüntüsü, satış siparişlerinin detaylı olarak incelenmesini sağlayan Power BI rapor sayfasını göstermektedir. Bu dashboard, kullanıcıların belirli bir **SalesOrderID** seçerek o siparişe ait müşteri bilgilerini, ürün satırlarını ve toplam tutarı görüntülemesine olanak tanır.

<img width="1110" height="577" alt="image" src="https://github.com/user-attachments/assets/2de76bf4-ef6a-4e55-99bc-65fc8d5594c5" />

#### 🔹 Sipariş ID Seçimi (Slicer)
Sol üstte yer alan slicer, kullanıcıya bir veya birden fazla **Sipariş ID** seçme imkânı sunar. Seçilen siparişler, rapordaki tüm diğer görselleri dinamik olarak filtreler.

#### 🔹 Müşteri ve Sipariş Özeti
Sipariş seçildiğinde, rapor ilgili siparişi veren müşteriyi ve siparişe ait özet verileri gösterir:
- **Müşteri Adı**
- **Toplam Sipariş Tutarı (Sum of LineTotal)**
- **SalesOrderID**
- **CustomerID**

Bu özet bölümü, siparişin genel durumunu hızlıca değerlendirmek için kullanılır.

#### 🔹 Sipariş Detay Tablosu
Sağ tarafta yer alan tablo, seçilen siparişe ait tüm ürün satırlarını listeler:
- Ürün adı  
- Satır toplamı (LineTotal)  
- Ürün bazında maliyet  

Tablonun en altında siparişin **genel toplam tutarı** gösterilir. Bu yapı sayesinde kullanıcı siparişte hangi ürünlerin olduğunu ve her bir ürünün sipariş toplamına katkısını detaylı şekilde inceleyebilir.

#### 🔹 Dinamik Filtreleme Mantığı
Seçilen sipariş ID’si:
- Ürün listesini,
- Müşteri özetini,
- Toplam satış tutarını
otomatik olarak günceller. Bu yapı, sipariş bazlı detay analizi yapılmasını kolaylaştırır.

