import Foundation

struct Landmark: Identifiable {
    let id = UUID()
    let isim: String
    let sehir: String
    let ulke: String
    let gorselAdi: String
    let aciklama: String
}

let landmarkListesi = [
    Landmark(
        isim: "Ayasofya",
        sehir: "İstanbul",
        ulke: "Türkiye",
        gorselAdi: "ayasofya",
        aciklama: "İstanbul'un en önemli tarihi yapılarından biri olan Ayasofya, Bizans ve Osmanlı dönemlerinin izlerini taşıyan eşsiz bir kültürel mirastır."
    ),

    Landmark(
        isim: "Eyfel Kulesi",
        sehir: "Paris",
        ulke: "Fransa",
        gorselAdi: "eyfel",
        aciklama: "Paris'in simgesi olan Eyfel Kulesi, 1889 yılında tamamlanmış ve dünyanın en tanınmış mimari yapılarından biri hâline gelmiştir."
    ),

    Landmark(
        isim: "Kolezyum",
        sehir: "Roma",
        ulke: "İtalya",
        gorselAdi: "kolezyum",
        aciklama: "Antik Roma döneminden günümüze ulaşan Kolezyum, gladyatör mücadeleleri ve büyük halk etkinlikleri için kullanılan tarihi bir amfitiyatrodur."
    ),

    Landmark(
        isim: "Tac Mahal",
        sehir: "Agra",
        ulke: "Hindistan",
        gorselAdi: "tacmahal",
        aciklama: "Tac Mahal, Babür İmparatoru Şah Cihan tarafından eşi Mümtaz Mahal'in anısına yaptırılmış dünyaca ünlü bir anıt mezardır."
    )
]
