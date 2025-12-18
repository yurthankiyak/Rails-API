# Backend Ödevi Uygulama Planı (Rails API)

Tahtadaki yönergelere ve "backend" gereksinimlerine uygun olarak Ruby on Rails 8+ ile bir API geliştireceğiz.

## Hedef
Öğrenci ve Kurs yönetimini sağlayan, ilişkilendirilmiş 5 modellik bir RESTful API oluşturmak.

## Kullanıcı İncelemesi Gerekli
- Tahtada "Context", "Analysis", "Report", "Video", "Subject" anahtar kelimeleri geçiyor. Bu kelimeleri model isimleri olarak kullanacağım.
- Veritabanı olarak varsayılan SQLite kullanacağım (kurulum kolaylığı için).

## Önerilen Değişiklikler

### [backend_assignment_rails]

#### [NEW] [Rails Projesi]
- `api_only` modunda yeni Rails projesi.

#### [NEW] [Modeller & İlişkiler]
Aşağıdaki 5 model oluşturulacak:

1.  **User**: (Öğrenci/Eğitmen)
    - `name`, `email`
    - `has_many :enrollments`
    - `has_many :courses, through: :enrollments`
2.  **Subject** (Konu/Kategori):
    - `name`, `description`
    - `has_many :courses`
3.  **Course** (Kurs):
    - `title`, `description`
    - `belongs_to :subject`
    - `has_many :lessons` (Video yerine Lesson daha kapsayıcı olabilir ama tahtada Video yazıyor) -> Biz **Video** kullanalım.
4.  **Video** (Ders İçeriği):
    - `title`, `url`, `duration`
    - `belongs_to :course`
5.  **Analysis** (Rapor/Analiz):
    - `content`, `score`
    - `belongs_to :user`
    - `belongs_to :course` (Bir kullanıcının bir kurstaki performansı)

*(Alternatif olarak `Enrollment` birleştirme tablosu olarak kullanılabilir ama 5 model şartı için Analysis mantıklı)*

#### [NEW] [Endpoints]
- `/v1/users`
- `/v1/courses`
- `/v1/users/:id/courses` (Öğrencinin kursları)
- `/v1/courses/:id/videos`

## Doğrulama Planı
### Otomatik Testler
- Rails testleri (`rails test`) ile model ilişkilerini doğrulama.
### Manuel Test
- `curl` veya Postman ile uç noktalara istek atıp JSON yanıtı alma.
