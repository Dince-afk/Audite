//
//  TextFileRow.swift
//  Speech
//
//  Created by Dino Curic on 25.06.21.
//

import SwiftUI

struct TextFileRow: View {
    
    var textFile: TextFile
    
    var body: some View {
        
        
        HStack {
            Image(systemName: "photo")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(textFile.title)
                    .font(.callout)
                    .foregroundColor(.primary)
                Text(textFile.author)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack {
                Text("25 min left")
                    .font(.caption)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
        }
        .frame(height: 60)
        
    }
}

struct TextFileRow_Previews: PreviewProvider {
    static var previews: some View {
        TextFileRow(textFile: dummyData[0])
    }
}
