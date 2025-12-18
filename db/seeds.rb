User.destroy_all
Subject.destroy_all
Course.destroy_all
Video.destroy_all
Analysis.destroy_all
puts "Eski veriler temizlendi."

ingilizce = Subject.create!(name: "İngilizce", description: "Yabancı dil eğitimi")
yazilim = Subject.create!(name: "Yazılım", description: "Programlama ve kodlama dersleri")
matematik = Subject.create!(name: "Matematik", description: "Sayısal analiz ve problemler")
puts "Konular oluşturuldu."

sozlu_iletisim = Course.create!(title: "Sözlü İletişim Teknikleri", description: "İngilizce konuşma pratiği", subject: ingilizce)
ruby_on_rails = Course.create!(title: "Ruby on Rails ile Backend", description: "API geliştirme temelleri", subject: yazilim)
python_giris = Course.create!(title: "Python'a Giriş", description: "Veri bilimi için Python", subject: yazilim)
puts "Kurslar oluşturuldu."

Video.create!(title: "Tanışma ve Selamlaşma", url: "https://video.example.com/1", duration: 120, course: sozlu_iletisim)
Video.create!(title: "Rails Kurulumu", url: "https://video.example.com/2", duration: 300, course: ruby_on_rails)
Video.create!(title: "Değişkenler ve Döngüler", url: "https://video.example.com/3", duration: 250, course: python_giris)
puts "Videolar eklendi."

ali = User.create!(name: "Ali Yılmaz", email: "ali@example.com")
ayse = User.create!(name: "Ayşe Demir", email: "ayse@example.com")
mehmet = User.create!(name: "Mehmet Kaya", email: "mehmet@example.com")
puts "Öğrenciler oluşturuldu."

Analysis.create!(content: "Ali'nin telaffuzu gelişmiş.", score: 85, user: ali, course: sozlu_iletisim)
Analysis.create!(content: "Ayşe backend mantığını hızlı kavradı.", score: 95, user: ayse, course: ruby_on_rails)
Analysis.create!(content: "Mehmet değişkenler konusunda pratik yapmalı.", score: 60, user: mehmet, course: python_giris)
puts "Analizler girildi. Veri yükleme tamamlandı!"