# Office Politics – Kurumsal Hayatta Kalma Teknikleri

Bu repo, kurumsal iş hayatını satirik ve analitik biçimde inceleyen bir kitap projesidir.

## Hızlı başlangıç

### Bölümleri birleştir
```bash
make merge
```

### PDF üret
```bash
make pdf
```

## Dizinler

- `chapters/` → kitap bölümleri
- `figures/` → görseller
- `notes/` → fikirler ve gözlemler
- `resources/` → araştırma kaynakları
- `templates/` → yazım şablonları
- `prompts/` → Copilot / LLM promptları
- `skills/` → tekrar kullanılabilir analiz-yazım kalıpları
- `tools/` → build ve yayın araçları
- `build/` → üretilen çıktılar
- `.github/workflows/` → otomatik PDF üretim pipeline’ı

## Önerilen yazım akışı

1. Yeni fikirleri önce `notes/` içine ekle.
2. Bölüm taslağını `templates/chapter-template.md` kullanarak oluştur.
3. Hazır olmayan metinleri `drafts/` içinde tut.
4. Olgunlaşan bölümleri `chapters/` altına taşı.
5. `make pdf` ile çıktı al.
6. GitHub Actions ile otomatik PDF build kullan.

## Copilot kullanımı

Copilot Chat içinde örnek komutlar:

- `Use prompts/writing/chapter-generation.md and draft a new section for chapter 3`
- `Use skills/satirical-writing.md to improve the tone of this paragraph`
- `Check consistency with meta/style-guide.md`

## Lisans

Bu repo için varsayılan lisans dosyası örnek olarak eklenmiştir. Gerekirse değiştir.
