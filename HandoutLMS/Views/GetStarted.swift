//
//  GetStarted.swift
//  HandoutLMS
//
//  Created by Yomi on 3/10/23.
//

import SwiftUI

struct GetStarted: View {
    var body: some View {
        ZStack{
            //Background
            Image("ic2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            
            
            VStack {
                VStack(alignment: .leading){
                    
                    Rectangle()
                        .fill(Color("Custom_Orange"))
                        .frame(width: 50, height: 10)
                        .padding(.top, 150)
                    Text("Welcome to")
                        .foregroundColor(Color.white)
                        .font(.body)
                    Text("HANDOUT.")
                        .bold()
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .padding(.top, 0)
                    
                    
                    
                    HStack(spacing: 20, content: {
                        Text("Virtual.")
                            .foregroundColor(Color.white)
                            .font(.caption)
                        Text("Social.")
                            .foregroundColor(Color.white)
                            .font(.caption)
                        Text("Learn.")
                            .foregroundColor(Color.white)
                            .font(.caption)
                    })
                    
                    
                    HStack {
                        Image("ic1")
                            .resizable()
                        .frame(width: 300, height: 220)
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                        .padding()
                        .frame(width: 300, height: 200, alignment: .center)
                    
                    
                    Spacer()
                    
                        
                    
                }
                
                
                NavigationLink {
                    SignUpLogin()
                } label: {
                    Text("Get started")
                        .bold()
                        .font(.caption)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color("Custom_Orange"))
                                .padding(.horizontal, -20)
                                .frame(width: 150, height: 40)
                        )
                        .foregroundColor(Color.white)
                }
                .padding(.bottom, 100)
                .buttonStyle(.plain)            // removes the gray bg on the navlink
            }
        }
    }
}

struct GetStarted_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GetStarted()
        }
        
    }
}
