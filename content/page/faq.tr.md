---
title: "SSS"
date: 2018-12-28 10:21:06
draft: false
---

# Sık Sorulan Sorular

* [İzleyici nedir?](#izleyiciler)
* [İzinler nelerdir? Ciddiyet seviyesi nasıl belirlenir?](#izinler)
* [Raporlarınızdaki renkler (yeşil / sarı / kırmızı) nasıl belirleniyor?](#renkler)
* [Uygulamalar nasıl analiz ediliyor?](#analiz)
* [Peki ya iOS uygulamaları?](#ios)
* [Raporlarınızda yanlış pozitifler ve/veya yanlış negatifler var mı?](#negatifler)
* [Size nasıl yardım edebilirim?](#yardım)
* [εxodus Android uygulamasında gömülü izleyiciler var mı?](#exodus)
* [Neden YouTube'un Google'a ait olmasına rağmen bir YouTube kanalınız var?](#youtube)

---

#### *İzleyici nedir?*  <a class="anchor" name="izleyiciler"></a>

İzleyici, sizin veya kullanımlarınız hakkında veri toplayan uygulama parçasıdır.

[εxodus](https://reports.exodus-privacy.eu.org/en/info/trackers/) üzerinde bu konu hakkında açıklayıcı bir sayfa ayrılmıştır.

---

#### *İzinler nelerdir? Ciddiyet seviyesi nasıl belirlenir?*  <a class="anchor" name="izinler"></a>

İzinler, uygulamaların telefonunuzda yapabileceği eylemlerdir.

[εxodus](https://reports.exodus-privacy.eu.org/en/info/trackers/) üzerinde bu konu hakkında açıklayıcı bir sayfa ayrılmıştır.

---

#### *Raporlarınızdaki renkler (yeşil / sarı / kırmızı) nasıl belirleniyor?*  <a class="anchor" name="renkler"></a>

Renkler, aşağıdaki ölçekteki izleyici ve izin sayısına göre belirleniyor:

* 0 izleyici / izin: yeşil
* < 5 izleyici / izin: sarı
* >= 5 izleyici / izin: kırmızı

---

#### *Uygulamalar nasıl analiz ediliyor?*  <a class="anchor" name="analiz"></a>

Uygulamaların kaynak kodlarını çözmüyorüz, ki buna zaten iznimiz yok. APK'ların statik analizini gerçekleştirir ve Java sınıfı adlarını bir izleyici listesiyle karşılaştırırız. Eğer bir eşleşme varsa, o zaman o izleyicinin mevcut olduğunu söyleyebiliriz. Daha fazla bilgiyi [bu gönderide](/en/post/exodus_static_analysis/) bulabilirsiniz.

---

#### *Peki ya iOS uygulamaları?*  <a class="anchor" name="ios"></a>

Apple'ın DRM'leri kesinlikle araştırmamızı yasaklıyor, bu yüzden söyleyemeyiz. Ancak, her iki işletim sisteminin uygulamaları genellikle aynı ekipler/ajanslar tarafından yapılır ve izleyicilerin SDK'ları genellikle hem Android hem de iOS için kullanılabilir. Bu nedenle, birinin izleyicilerinin diğerinde de olduğuna dair güçlü şüpheler var.

---

#### *Raporlarınızda yanlış pozitifler ve/veya yanlış negatifler var mı?*  <a class="anchor" name="negatifler"></a>

Statik algılama yöntemimiz, uygulamalarda tanımlanmış bir izleyici listesinin varlığına bakar. Analizde bir izleyicinin imzası tespit edilirse, varlığı raporda belirtilir. Bu, bu izleyicilerin etkinliğinin bir kanıtı değildir.

Ek olarak, uygulama henüz tanımlayamadığımız bir veya daha fazla izleyici içerebilir. Bu nedenle bu listenin eksiksiz olduğunu garanti etmiyoruz.

---

#### *Size nasıl yardım edebilirim?*  <a class="anchor" name="yardım"></a>

Bize yardım etmenin birçok yolu var, her şeyi ["Katkıda Bulunun"](/tr/page/contribute/) sayfasında açıkladık.

---

#### *εxodus Android uygulamasında gömülü izleyiciler var mı?*  <a class="anchor" name="exodus"></a>

Tabii ki hayır, [kendisinin raporuna](https://reports.exodus-privacy.eu.org/tr/reports/search/org.eu.exodus_privacy.exodusprivacy/) göz atabilirsiniz.

---

#### *Neden YouTube'un Google'a ait olmasına rağmen bir YouTube kanalınız var?*  <a class="anchor" name="youtube"></a>

Exodus Privacy'nin amacı, mümkün olduğu kadar çok kişiye, teknolojiden en az haberdar olan ve akıllı telefonlarında olup bitenleri görmezden gelmeye en yatkın kişilere ulaşmaktır. Bu kitleye ulaşmak için onların yanına gitmek gerekiyor çünkü bize gelmeyecekler. Bu yüzden bir YouTube kanalımız ve bir Facebook sayfamız var. Merak etmeyin Peertube kanalımız da var.

Farklı medyalarımızın linklerini [bu sayfada](/tr/page/what/#videos) bulabilirsiniz.

<style>
a.anchor {
  display: block;
  position: relative;
  top: -5.5rem;
  visibility: hidden;
}
</style>
