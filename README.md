# Rails API Backend 
Bu proje Ruby on Rails 8.1.1 ile oluşturulmuş, öğrenci ve kurs yönetimini sağlayan bir RESTful API'dir.

## Kurulum ve Çalıştırma

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları izleyin. Bilgisayarınızda Ruby ve Rails'in kurulu olması gerekmektedir.

1.  **Bağımlılıkları Yükleyin:**
    Terminalde proje dizininde şu komutu çalıştırın:
    `ash
    bundle install
    `

2.  **Veritabanını Hazırlayın:**
    Veritabanı tablolarını oluşturmak için:
    `ash
    rails db:migrate
    `

3.  **Sunucuyu Başlatın:**
    API sunucusunu ayağa kaldırmak için:
    `ash
    rails server
    `
    Sunucu http://localhost:3000 adresinde çalışacaktır.
