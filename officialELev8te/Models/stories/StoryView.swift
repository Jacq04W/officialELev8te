//
//  StoryView.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/13/23.
//

import SwiftUI

struct StoryView: View {
    @State private var showPt2 = false
    var body: some View {
        // creates background
        ZStack{
            Image("story1")
                .resizable()
                .ignoresSafeArea()
            
            // where we are putting buttton for next page
            VStack{
                Spacer()
                Button("Continue →"){
                    // w/e we pres the continue button make "showPt2" true
                    showPt2.toggle()
                }
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                // if "showPt2" is true make the next page show up
                .sheet(isPresented: $showPt2) {
                    StoryPt2()
                }
               

                
            }
        }
        
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
