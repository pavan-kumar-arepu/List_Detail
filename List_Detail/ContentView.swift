//
//  ContentView.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let artistData = [
        Artist(name: "Artist 1", age: 30, awards: "Award 1" , shortDesc: "Short description 1", description: "/Users/pavankumararepu/Library/Developer/CoreSimulator/Devices/272DE056-263C-4149-8D13-6D871900ACBF/data/Containers/Bundle/Application/8B401D4A-45AC-4D79-B4FB-534F3FD53A1C/List_Detail.app 1", image: "Atal-Bihari"),
        Artist(name: "Artist 2", age: 35, awards: "Award 2" , shortDesc: "Short description 2", description: "/Users/pavankumararepu/Library/Developer/CoreSimulator/Devices/272DE056-263C-4149-8D13-6D871900ACBF/data/Containers/Bundle/Application/8B401D4A-45AC-4D79-B4FB-534F3FD53A1C/List_Detail.app 2", image: "Deve-Gowda"),
        Artist(name: "Artist 3", age: 30, awards: "Award 3", shortDesc: "Short description 1", description: "/Users/pavankumararepu/Library/Developer/CoreSimulator/Devices/272DE056-263C-4149-8D13-6D871900ACBF/data/Containers/Bundle/Application/8B401D4A-45AC-4D79-B4FB-534F3FD53A1C/List_Detail.app 3", image: "Guljari-Nanda"),
        Artist(name: "Artist 4", age: 35, awards: "Award 4", shortDesc: "Short description 2", description: "/Users/pavankumararepu/Library/Developer/CoreSimulator/Devices/272DE056-263C-4149-8D13-6D871900ACBF/data/Containers/Bundle/Application/8B401D4A-45AC-4D79-B4FB-534F3FD53A1C/List_Detail.app 4", image: "Nehru")
        // Add more artists here...
    ]
    var body: some View {
        ArtistListScreen(artists: artistData)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
