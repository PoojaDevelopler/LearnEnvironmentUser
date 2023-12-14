//
//  ThirdUiView.swift
//  LearnEnvironmentUser
//
//  Created by pnkbksh on 14/12/23.
//

import SwiftUI
import SafariServices

struct ThirdUiView: View {
    @State private var showSafari: Bool = false
    @State  var searchContent:String
    @State private var link = "https://www.google.com/search?q="

    var body: some View {
        NavigationView{
            
            Text("Searching your content")
                .padding()
                .multilineTextAlignment(.center)
            
            
                .onAppear(){
                    showSafari.toggle()
                }
                .fullScreenCover(isPresented: $showSafari, content: {
                    SFSafariViewWrapper(url: URL(string: "\(link)\(searchContent.replacingOccurrences(of: " ", with: ""))")!)
                })
                .navigationBarTitle("Your google search", displayMode: .inline)
        }
    }
}

struct ThirdUiView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdUiView(searchContent: "Arijit singh")
    }
}

struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}
