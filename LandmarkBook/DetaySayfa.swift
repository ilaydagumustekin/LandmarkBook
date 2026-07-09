import SwiftUI

struct DetaySayfa: View {

    let landmark: Landmark

    var body: some View {
        GeometryReader { geometry in

            let ekranGenisligi = geometry.size.width
            let yatayBosluk: CGFloat = 16
            let kartArasiBosluk: CGFloat = 12

            let kartGenisligi =
                (ekranGenisligi
                 - (yatayBosluk * 2)
                 - kartArasiBosluk) / 2

            ScrollView {
                VStack(spacing: 0) {

                    // MARK: - Büyük Görsel
                    Image(landmark.gorselAdi)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: ekranGenisligi,
                            height: 280
                        )
                        .clipped()

                    // MARK: - Başlık
                    Text(landmark.isim)
                        .font(.system(size: 32, weight: .bold))
                        .multilineTextAlignment(.center)
                        .frame(
                            width: ekranGenisligi - 32
                        )
                        .padding(.vertical, 24)

                    // MARK: - Şehir ve Ülke Kartları
                    HStack(spacing: kartArasiBosluk) {

                        bilgiKarti(
                            ikon: "building.2.fill",
                            baslik: "Şehir",
                            bilgi: landmark.sehir,
                            genislik: kartGenisligi
                        )

                        bilgiKarti(
                            ikon: "globe.europe.africa.fill",
                            baslik: "Ülke",
                            bilgi: landmark.ulke,
                            genislik: kartGenisligi
                        )
                    }
                    .frame(width: ekranGenisligi - 32)

                    // MARK: - Hakkında Kartı
                    VStack(alignment: .leading, spacing: 12) {

                        HStack(spacing: 8) {
                            Image(systemName: "info.circle.fill")
                                .foregroundStyle(.blue)
                                .font(.title3)

                            Text("Hakkında")
                                .font(.headline)
                                .fontWeight(.bold)
                        }

                        Text(landmark.aciklama)
                            .font(.body)
                            .foregroundStyle(.secondary)
                            .lineSpacing(5)
                            .fixedSize(
                                horizontal: false,
                                vertical: true
                            )
                            .frame(
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                    }
                    .padding(16)
                    .frame(
                        width: ekranGenisligi - 32,
                        alignment: .leading
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(
                                Color(.secondarySystemBackground)
                            )
                    )
                    .padding(.top, 20)

                    Spacer(minLength: 30)
                }
                .frame(width: ekranGenisligi)
            }
        }
        .navigationTitle(landmark.isim)
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Bilgi Kartı
    private func bilgiKarti(
        ikon: String,
        baslik: String,
        bilgi: String,
        genislik: CGFloat
    ) -> some View {

        VStack(spacing: 8) {

            Image(systemName: ikon)
                .font(.system(size: 24))
                .foregroundStyle(.blue)

            Text(baslik)
                .font(.caption)
                .foregroundStyle(.secondary)

            Text(bilgi)
                .font(.headline)
                .fontWeight(.semibold)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
        }
        .frame(
            width: genislik,
            height: 110
        )
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    Color(.secondarySystemBackground)
                )
        )
    }
}

#Preview {
    NavigationStack {
        DetaySayfa(
            landmark: landmarkListesi[0]
        )
    }
}
