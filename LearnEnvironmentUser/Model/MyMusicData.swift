//
//  MyMusicData.swift
//  LearnEnvironmentUser
//
//  Created by pnkbksh on 14/12/23.
//

import Foundation

struct MyMusic{
    var id:String = UUID().uuidString
    var singerName:String
    var musicName:String
    
    
   static func listOfSingerAndMusic()->[MyMusic]{
        
        var musicList:[MyMusic] = []
        
        let mustafaMusicData:[MyMusic] = [
            MyMusic( singerName: "mustafa", musicName: "Toh fir aao"),
            MyMusic( singerName: "mustafa", musicName: "Maula"),
            MyMusic( singerName: "mustafa", musicName: "tera mera rista"),
            MyMusic( singerName: "mustafa", musicName: "teri yado se"),
            MyMusic(singerName: "mustafa", musicName: "Tere bina"),
            MyMusic(singerName: "mustafa", musicName: "Toh fir aao:- remix"),
            MyMusic(singerName: "mustafa", musicName: "Jo tere sang kati rate"),
            MyMusic( singerName: "mustafa", musicName: "Mehrbani teri"),
            MyMusic( singerName: "mustafa", musicName: "Na kar deewana")
        ]

        
        let arijitMusicData:[MyMusic] = [
            MyMusic(singerName: "Arijit Singh", musicName: "Tum Hi Ho"),
            MyMusic(singerName: "Arijit Singh", musicName: "Channa Mereya"),
            MyMusic(singerName: "Arijit Singh", musicName: "Agar Tum Saath Ho"),
            MyMusic(singerName: "Arijit Singh", musicName: "Phir Le Aaya Dil"),
            MyMusic(singerName: "Arijit Singh", musicName: "Janam Janam")
        ]

        
        let atifMusicData:[MyMusic] = [
            MyMusic(singerName: "Atif Aslam", musicName: "Tera Hone Laga Hoon"),
            MyMusic(singerName: "Atif Aslam", musicName: "Jeene Laga Hoon"),
            MyMusic(singerName: "Atif Aslam", musicName: "Tere Bin"),
            MyMusic(singerName: "Atif Aslam", musicName: "Pehli Dafa"),
        ]
        
       let shreyaMusicData: [MyMusic] = [
           MyMusic(singerName: "Shreya Ghoshal", musicName: "Bairi Piya"),
           MyMusic(singerName: "Shreya Ghoshal", musicName: "Sun Raha Hai Na Tu"),
           MyMusic(singerName: "Shreya Ghoshal", musicName: "Deewani Mastani"),
           MyMusic(singerName: "Shreya Ghoshal", musicName: "Agar Tum Mil Jao")
       ]
       
       
       let lataMusicData: [MyMusic] = [
           MyMusic(singerName: "Lata Mangeshkar", musicName: "Lag Ja Gale"),
           MyMusic(singerName: "Lata Mangeshkar", musicName: "Tere Bina Zindagi Se"),
           MyMusic(singerName: "Lata Mangeshkar", musicName: "Tujhe Dekha To"),
           MyMusic(singerName: "Lata Mangeshkar", musicName: "Aap Ki Nazron Ne Samjha")
       ]
       
       
       let sonuMusicData: [MyMusic] = [
           MyMusic(singerName: "Sonu Nigam", musicName: "Kal Ho Naa Ho"),
           MyMusic(singerName: "Sonu Nigam", musicName: "Abhi Mujh Mein Kahin"),
           MyMusic(singerName: "Sonu Nigam", musicName: "Tum Jo Mil Gaye Ho"),
           MyMusic(singerName: "Sonu Nigam", musicName: "Satrangi Re")
       ]

       
       musicList.append(contentsOf: mustafaMusicData)
       musicList.append(contentsOf: arijitMusicData)
       musicList.append(contentsOf: atifMusicData)
       musicList.append(contentsOf: shreyaMusicData)
       musicList.append(contentsOf: lataMusicData)
       musicList.append(contentsOf: sonuMusicData)
       
       
        return musicList
    }
}
