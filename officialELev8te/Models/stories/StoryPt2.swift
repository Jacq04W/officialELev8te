//
//  StoryPt2.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/14/23.
//

import SwiftUI

struct StoryPt2: View {
    @State private var showPt3 = false

    var body: some View {
        ZStack{
            Image("story2")       
                .resizable()
                .ignoresSafeArea()
            
            // where we are putting buttton for next page
            VStack{
                Spacer()
                Button("Continue →"){
                    // w/e we pres the continue button make "showPt2" true
                    showPt3.toggle()
                }
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                // if "showPt2" is true make the next page show up
                .sheet(isPresented: $showPt3) {
                    StoryPt3()
                }
               

                
            }
        }    }
}

struct StoryPt2_Previews: PreviewProvider {
    static var previews: some View {
        StoryPt2()
    }
}
