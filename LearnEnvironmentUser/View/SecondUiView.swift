//
//  SecondUiView.swift
//  LearnEnvironmentUser
//
//  Created by pnkbksh on 14/12/23.
//

import SwiftUI

struct SecondUiView: View {
    @State var selctedSingerName:String
    @State var musicArray : [MyMusic]
    
    var body: some View {
        NavigationView {
            List{
                let searchResults = searchMusic(for: selctedSingerName) // User's search input
                
                Section(selctedSingerName) {
                    NavigationLink("Sarch about Singer", destination: ThirdUiView(searchContent: "\(selctedSingerName)"))
                    
                    ForEach(searchResults , id:\.id) { musicData in
                        Text(musicData.musicName)
                    }
                }
            }
            .navigationBarTitle("List of songs", displayMode: .inline)
        }


    }
    
    
    func searchMusic(for searchString: String) -> [MyMusic] {
        let minimumMatchCount = 4 // Minimum number of characters to match

        // Filter musicList based on singerName matching the search string
        let filteredMusic = musicArray.filter { musicData in
            // Check if the search string exists in singerName and meets the minimum match count
            if let singerName = musicData.singerName.lowercased().range(of: searchString.lowercased()) {
                let matchedCharacters = singerName.upperBound.utf16Offset(in: musicData.singerName)
                return matchedCharacters >= minimumMatchCount
            }
            return true//show all the music
        }

        return filteredMusic
    }
}


struct SecondUiView_Previews: PreviewProvider {
    static var previews: some View {
        SecondUiView(selctedSingerName: "Default-data", musicArray: [MyMusic( singerName: "Default", musicName: "My Music is not able to search anything")])
    }
}
