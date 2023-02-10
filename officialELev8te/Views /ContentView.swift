//
//  ContentView.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    // array of images
   static var players = ["camper","archer","sniper","zombie","storm trooper","purp"]
    @State private var isAnimted = false
    @State private var tapToPlay = false

    
    var body: some View {
            if tapToPlay{
                ChoosePlayer()
            } else {
                frontPage
            }
            
            
        
    }
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    // custom varibales
// creates the Ui for the front page / home Screen ↓
    
    var frontPage : some View{
    ZStack{
        Image("bg3")
            .resizable()
            .scaledToFill()
        VStack(spacing:40){
            Spacer()
            Spacer()
            Spacer()

            
            Image("logo")
                .resizable()
                .frame(width: 330,height:280)
            Image("wealthMindsetWords 2")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height:100)
            
            ForEach (1..<4){ space in
                Spacer()
            }
            
            Button() {
                tapToPlay = true
            } label:{
                
            Text("Tap here to play") }
            .font(.title)
            .fontWeight(.black)
            .frame(width: isAnimted ? 200 : 250,
               height: 60)
        .background(.yellow)
        .foregroundColor(.black)
        .cornerRadius(9)
            Spacer()
            Spacer()
                .shadow(radius: /*@START_MENU_TOKEN@*/50/*@END_MENU_TOKEN@*/)
        }
    }
        
}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
