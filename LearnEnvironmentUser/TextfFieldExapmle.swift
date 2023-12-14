//
//  TextfFieldExapmle.swift
//  LearnEnvironmentUser
//
//  Created by pnkbksh on 14/12/23.
//

import Foundation
import SwiftUI

struct TextFieldExample: View {
    @State private var title: String = ""
    @State private var category: String = ""
    @State private var type: String = ""
    
    
    var body: some View {
        VStack {
            
            Text("DevTechie Courses")
                .font(.largeTitle)
            
            VStack(alignment: .leading) {
                Text("Enter new course title")
                    .font(.title3)
                
                TextField("Course title", text: $title)
                    .padding(5)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange) )
                
                TextField("Course category",text: $category)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.teal))
                
                TextField("Course type", text: $type)
                    .padding(5)
                    .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.pink) )
                
            }.padding(.top, 20)
            
        }.padding()
        
    }
    
}


struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
