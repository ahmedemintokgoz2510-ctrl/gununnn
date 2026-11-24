GUNUN SORUSU - Flutter Android uygulamasi

GitHub Actions:
- Projeyi GitHub reposunun ana dizinine yukleyin.
- main dalina push yapin veya Actions sekmesinden "Build Flutter APK" is akisini calistirin.
- Basarili derlemeden sonra Actions > ilgili calisma > Artifacts bolumunden gunun-sorusu-release-apk dosyasini indirin.

Yerelde derlemek icin Flutter SDK kurulu olmalidir:
  flutter create . --platforms=android --org com.sansar --project-name gunun_sorusu --no-pub
  flutter pub get
  flutter analyze
  flutter build apk --release

Sorular uygulamadaki "Sorular > Soru Ekle" ekranindan veya lib/data/builtin_questions.dart dosyasindan eklenebilir.
