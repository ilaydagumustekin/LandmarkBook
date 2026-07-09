//
//  ContentView.swift
//  LandmarkBook
//
//  Created by İlayda Gümüştekin on 9.07.2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            List(landmarkListesi) { landmark in
                
                NavigationLink {
                    
                    DetaySayfa(landmark: landmark)
                    
                } label: {
                    
                    HStack(spacing: 15) {
                        
                        Image(landmark.gorselAdi)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 10)
                            )
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(landmark.isim)
                                .font(.headline)
                            
                            Text("\(landmark.sehir), \(landmark.ulke)")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Kent Simgeleri")
        }
    }
}

#Preview {
    ContentView()
}
