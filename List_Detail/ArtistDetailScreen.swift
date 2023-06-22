//
//  ArtistList.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI


struct ArtistDetailScreen: View {
    let artist: Artist
    let artists: [Artist]
    @State private var selectedButtonArtist: Artist?
    
    var selectedArtistDetails: Artist {
        selectedButtonArtist ?? artist
    }
    
    var body: some View {
        VStack {
            ScrollView {
                // Display artist details
                VStack(alignment: .leading, spacing: 20) {
                    if let image = UIImage(named: selectedArtistDetails.image) {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                    } else {
                        Text("Image Not Found")
                    }
                    
                    Text("Description:")
                        .font(.headline)
                    Text(selectedArtistDetails.description)
                        .font(.subheadline)
                    
                    Text("Awards:")
                        .font(.headline)
                    Text(selectedArtistDetails.awards)
                        .font(.subheadline)
                }
                .padding()
            }
            
            // Display grid of artist icons
            HStack(spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 16) {
                        ForEach(artists) { artist in
                            Button(action: {
                                selectedButtonArtist = artist
                            }) {
                                Image(artist.image)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .frame(height: 50)
            .padding()
        }
        .navigationBarTitle(selectedButtonArtist?.name ?? artist.name)
    }
}
