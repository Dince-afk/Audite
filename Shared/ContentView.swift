//
//  ContentView.swift
//  Shared
//
//  Created by Dino Curic on 25.06.21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(dummyData, id: \.self) { textFile in
                    NavigationLink(
                        destination: TextView(textFile: textFile),
                        label: {
                            TextFileRow(textFile: textFile)
                        })
                }
                
                
            }
            .navigationTitle("My Texts")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {}, label: {
                    Image(systemName: "gear")
                }))
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button("Add New Text") {
                        
                    }
                    Spacer()
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
