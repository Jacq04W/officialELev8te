//
//  IconSelected.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/9/23.
//

import SwiftUI

struct PlayerSelected: View {
   @State private var selectPlayers  = ["purp"]
    @State private var goBack  = false

    var body: some View {
        ZStack{
            
            if goBack {
                ChoosePlayer()
            } else {
                // makes the background color
                ZStack{
                    Image("orange")
                    Image("bg2")
                    selectedIcon
                    SelectedPlayerLayout(selectedPlayer: "sniper")
                    
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Spacer()
                        HStack(spacing:60){
                            Spacer()
                            
                            Button("Back"){
                                goBack = true
                            }.frame(width: 72.0, height: 36.0) .background(.yellow).foregroundColor(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .cornerRadius(9)
                            
                            
                            Button("Next"){
                                
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