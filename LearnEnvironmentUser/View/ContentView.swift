//
//  ContentView.swift
//  LearnEnvironmentUser
//
//  Created by pnkbksh on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State  private var myName:String = ""
    
//    let musicData:[MyMusic] = [
//        MyMusic(id: 1, singerName: "mustafa", musicName: "Toh fir aao"),
//        MyMusic(id: 2, singerName: "mustafa1", musicName: "Maula"),
//        MyMusic(id: 3, singerName: "mustafa1", musicName: "tera mera rista"),
//        MyMusic(id: 4, singerName: "mustafa1", musicName: "teri yado se"),
//        MyMusic(id: 5, singerName: "mustafa", musicName: "Tere bina"),
//        MyMusic(id: 6, singerName: "mustafa", musicName: "Toh fir aao:- remix"),
//        MyMusic(id: 7, singerName: "mustafa", musicName: "Jo tere sang kati rate"),
//        MyMusic(id: 8, singerName: "mustafa", musicName: "Mehrbani teri"),
//        MyMusic(id: 9, singerName: "mustafa1", musicName: "Na kar deewana")
//    ]
    
    let musicData:[MyMusic] = MyMusic.listOfSingerAndMusic()
    var body: some View {
        
        NavigationView{
            VStack {
                Spacer()              
                Text("Hey enter you fav Singer Name")
                    .bold()
                    .font(Font.largeTitle)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .lineLimit(5)
                    .padding()
                
                if myName.isEmpty{
                    Text("")
                        .padding()
                }
                else{
                    Text( myName.count < 3 ? "" : "Your fave Singer is :- \(myName)")
                        .padding()
                }
                
                TextField("Enter Your Fave Singer Name", text: $myName)
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.gray) )
                    .padding()
                Spacer()
               
                Spacer()
                NavigationLink("Second", destination: SecondUiView(selctedSingerName: myName, musicArray: musicData))
            }
            .navigationTitle("Main View")
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
