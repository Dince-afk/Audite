//
//  TextView.swift
//  Speech
//
//  Created by Dino Curic on 25.06.21.
//

import SwiftUI



struct TextView: View {
    
    @State var textFile: TextFile
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) { // Text body.
                VStack(alignment: .leading) { // Title and Authors.
                    Text(textFile.title)
                        .font(.title3)
                    Text("by \(textFile.author)")
                        .foregroundColor(.secondary)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top)
                
                
                TextEditor(text: $textFile.textContent)
                    .padding(.horizontal)
                    .padding(.bottom)
                    .frame(height: 1000)
                
            }
            
            
        }
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            
            ToolbarItemGroup(placement: .navigationBarTrailing) {
               
                Menu {
                    picker
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }

            }
            
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                Button(action: {
                    SpeechService.shared.speak(text: textFile.textContent, voiceType: returnSelectedVoice()) {
                        
                    }
                }, label: {
                    Label("Read", systemImage: "play.fill")
                })
                Spacer()
                Button(action: {
                    SpeechService.shared.pause()
                }, label: {
                    Label("Pause", systemImage: "pause.fill")
                })

                Spacer()
            }
        }
        .gesture(DragGesture().onChanged { _ in
            UIApplication.shared.windows.forEach { $0.endEditing(false) }
        })
    }
    
    
    var picker: some View {
        Picker(selection: $textFile.language,
               label:
Label(
    title: { Text("Language \(returnCorrectFlagIcon())") },
    icon: { Image(systemName: "") }
)
                ,
               content: {
                Text("🇬🇧 Male Voice").tag("🇬🇧male")
                Text("🇬🇧 Female Voice").tag("🇬🇧female")
                Text("🇩🇪 Male Voice").tag("🇩🇪male")
                Text("🇩🇪 Female Voice").tag("🇩🇪female")
               })
            .pickerStyle(MenuPickerStyle())
        
    }
    
    func returnSelectedVoice() -> VoiceType {
        switch textFile.language {
        case "🇬🇧male":
            return VoiceType.wavenetEnglishMale
        case "🇬🇧female":
            return VoiceType.wavenetEnglishFemale
        case "🇩🇪male":
            return VoiceType.wavenetGermanMale
        case "🇩🇪female":
            return VoiceType.wavenetGermanFemale
        default:
            return VoiceType.wavenetEnglishMale
        }
    }
    
    func returnCorrectFlagIcon() -> String {
        switch textFile.language {
        case "🇬🇧male", "🇬🇧female":
            return "🇬🇧"
        case "🇩🇪male", "🇩🇪female":
            return "🇩🇪"
        default:
            return "🇬🇧"
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextView(textFile: dummyData[0])
        }
    }
}
