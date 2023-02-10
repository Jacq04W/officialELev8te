//
//  ChoosePlayer.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/8/23.
//

import SwiftUI

struct ChoosePlayer: View {
    var players = ["camper","archer","sniper","zombie","storm trooper","purple dude"]
    // bool for animations
    @State private var isAnimted = false
    @State private var nextPage  = false

    var body: some View {
        
        if nextPage{
            PlayerSelected()
        } else {
            ZStack{
                // makes the background color
                Image("orange")
                Image("bg2")
                
                topLogo
                selectIcon
                PlayerLayout()
                
                
                
                
                
                nextButton
                
             
                
            }
        }
    }
        
        
        
        
        
        
        
        
        // custom variables
    var nextButton: some View  {
        VStack{
            Spacer()
            Spacer()

            Button(){
                nextPage = true }
            label : {
                Text("Next") }
            .font(.title)
            .fontWeight(.bold)
            .frame(width: isAnimted ? 72 : 72,
                   height: 36)
            .background(.yellow)
            .foregroundColor(.black)
            .cornerRadius(9)
            Spacer()
            
        }
    }
        
        
        
        // new code 
        // put logo in top left corner
        var topLogo: some View{
            VStack {
                Spacer()
                Spacer()
                
                HStack(alignment: .top){
                    ForEach (1..<5){
                        space in
                        Spacer()
                    }
                    // logo in top left
                    Image("lil logo")
                        .resizable()
                        .frame(width:100,height:100)
                    // pushes logo to left
                    ForEach (1..<7){
                        space in
                        Spacer()
                    }
                }
                // pushes logo up
                ForEach (1..<6){
                    space in
                    Spacer()
                    
                }
                
                
            }
        }
        
    
    // new code 
        var selectIcon : some View{
            VStack{
                //spacers for to make it go where i want
                ForEach(0..<5){ i in
                    Spacer()
                }
                
                Image("select your icon")
                    .resizable()
                    .frame(width: 263.0, height: 36)
                //spacers for to make it go where i want
                ForEach(0..<8){ i in
                    Spacer()
                }
                
            }
            
        }
        
        
        
        
        
    }


struct ChoosePlayer_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlayer()
    }
}
