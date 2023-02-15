//
//  StoryPt3.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/14/23.
//

import SwiftUI

struct StoryPt3: View {
    @State private var showPt4 = false
    @State private var beginPath = false

    var body: some View {
        
        if beginPath{
            BeginPath()
            
        } else {
            ZStack{
                Image("story3")
                    .resizable()
                    .ignoresSafeArea()
                
                // buttons to next page for next page
                VStack{
                    Spacer()
                    Button("Continue →"){
                        // w/e we pres the continue button make "showPt2" true
                        showPt4.toggle()
                        beginPath.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    
                    
                }
                
            }
            
        }
    }
}

struct StoryPt3_Previews: PreviewProvider {
    static var previews: some View {
        StoryPt3()
    }
}
