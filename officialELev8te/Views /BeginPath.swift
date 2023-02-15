//
//  BeginPath.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/15/23.
//

import SwiftUI

struct BeginPath: View {
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 9)
      // create background
        ZStack{
           // bg
            Image("bg5")
            ZStack{
                shape
                    .frame(width: 300, height: 375)
                    .background(.ultraThinMaterial)

                
            // image here for header
                VStack(spacing:20){
                    savingsButton
                    decisonMakingButton
                    budgetingButton
                    buildCreditButton
                }
                VStack {
                 
                  



                    nextButton
                    Spacer()

                  
                }
            }
        }
        
    }
    
    
    
    
    
    // custom variables
    
    var savingsButton : some View {
        VStack{
            Button(){
                // what do we want the button to do
            }
            label : {
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .frame(width: 150,height: 59)
                        .foregroundColor(.orange)

                    Text("Savings")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    // new code ⚡️
    var decisonMakingButton : some View {
        VStack{
            Button(){
                // what do we want the button to do
            }
            label : {
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .frame(width: 150,height: 59)
                        .foregroundColor(.orange)

                    Text("Decison Making")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    // new code ⚡️
    var budgetingButton: some View {
        VStack{
            Button(){
                // what do we want the button to do
            }
            label : {
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .frame(width: 150,height: 59)
                        .foregroundColor(.orange)

                    Text("Budgeting")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    // new code ⚡️
    var buildCreditButton : some View {
        VStack{
            Button(){
                // what do we want the button to do
            }
            label : {
                ZStack{
                    RoundedRectangle(cornerRadius: 9)
                        .frame(width: 150,height: 59)
                        .foregroundColor(.orange)
 
                    Text("Build Credit")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
    
    var nextButton: some View  {
        VStack{
            
            ForEach (0..<7){
                space in Spacer()
            }
            Button(){
            
            }
            label : {
                Text("Next") }
            .fontWeight(.bold)
            .frame(width: 72,
                   height: 36)
            .background(.yellow)
            .foregroundColor(.black)
            .cornerRadius(9)
            Spacer()
        }
    }
    
    
    
    
}

struct BeginPath_Previews: PreviewProvider {
    static var previews: some View {
        BeginPath()
    }
}
