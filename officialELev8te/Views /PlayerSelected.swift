//
//  IconSelected.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/9/23.
//

import SwiftUI

struct PlayerSelected: View {
   @State private var selectPlayers  = ["purp"]
        // start off false and if true go to differnt page ↓
    @State private var goBack  = false
    @State private var next  = false


    var body: some View {
        ZStack{
            // if go back = true show this ↓
            if next{
                StoryView()
            }
            else if
                goBack {
                ChoosePlayer()
                
            } else {
                    // makes the background color ↓
                ZStack{
                    Image("orange")
                    Image("bg2")
                    selectedIcon
                    SelectedPlayerLayout(selectedPlayer: "purp")
                    VStack {
                        // spacers to push buttons to bottom of screen
        ForEach (0..<4){ space in Spacer()
            
        }
                        HStack(spacing:60){
                            Spacer()
                            
                            Button("Back"){
                                goBack = true
                            }.frame(width: 72.0, height: 36.0) .background(.yellow).foregroundColor(.black).fontWeight(.bold)
                                .cornerRadius(9)
                            
                            
                            Button("Next"){
                                next.toggle()
                            }.frame(width: 72.0, height: 36.0) .background(.black).foregroundColor(.yellow).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .cornerRadius(9)
                            Spacer()
                            
                        }// hstack
                        Spacer()
                        Spacer()
                        
                    }
                    
                    
                }
                
                
            }
        }
        
        
    }
    // custom variblas
    var selectedIcon : some View{
        VStack{
            //spacers for to make it go where i want
            ForEach(0..<5){ i in
                Spacer()
            }
            
            Image("selected icon")
                .resizable()
                .frame(width: 263.0, height: 36)
            //spacers for to make it go where i want
            ForEach(0..<8){ i in
                Spacer()
            }
            
        }
        
    }
    
}

struct IconSelected_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSelected()
    }
}
