# Görsel Şablonu

## Başlık
## Kullanılacağı bölüm
## Görsel türü
## Kompozisyon
## Stil notları
## Dosya adı

---

## Markdown'da Görsel Ekleme Sözdizimi

### Temel kullanım

```markdown
![Açıklama metni](figures/manga/image_1.png)
```

### Genişlik belirterek

```markdown
![Açıklama metni](figures/manga/image_1.png){width=80%}
```

### Ortalanmış ve boyutlandırılmış

```markdown
::: {style="text-align: center;"}
![Açıklama metni](figures/manga/image_1.png){width=60%}
:::
```

### Alt klasöre göre referans (kısa yol)

`book.yaml` dosyasındaki `resource-path` ayarı sayesinde,
`figures/` altındaki her alt klasör doğrudan aranır.
Dolayısıyla sadece dosya adı da kullanılabilir:

```markdown
![Açıklama metni](image_1.png){width=70%}
```

### Görsel dizinleri

| Alt klasör              | Kullanım amacı                     |
|-------------------------|------------------------------------|
| `figures/manga/`        | Manga / çizgi roman tarzı görseller |
| `figures/cartoons/`     | Karikatür ve çizimler               |
| `figures/diagrams/`     | Şema ve diyagramlar                 |
| `figures/covers/`       | Kapak ve bölüm başlığı görselleri   |

### Notlar

- Desteklenen formatlar: `.png`, `.jpg`, `.pdf`, `.svg`
- Görsel dosyasını ilgili alt klasöre ekledikten sonra `make pdf` komutunu çalıştır.
- `width` değeri olarak `50%`, `8cm` gibi ifadeler kullanılabilir.
- `\linewidth` gibi LaTeX değişkenleri yalnızca ham LaTeX bloğu içinde geçerlidir (aşağıdaki örneğe bak).
- Başlıksız görsel (figure ortamına alınmadan) eklemek için
  alternatif olarak ham LaTeX kullanılabilir:

```latex
\begin{center}
  \includegraphics[width=0.6\linewidth]{figures/manga/image_1.png}
\end{center}
```

