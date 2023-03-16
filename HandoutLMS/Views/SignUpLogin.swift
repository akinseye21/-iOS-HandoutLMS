//
//  SignUpLogin.swift
//  HandoutLMS
//
//  Created by Yomi on 3/10/23.
//

import SwiftUI

struct SignUpLogin: View {
    var body: some View {
        ZStack{
            //Background
            Image("ic3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            //Content
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                HStack(spacing: 20, content: {
                    Text("Virtual.")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text("Social.")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text("Learn.")
                        .foregroundColor(Color.white)
                        .font(.headline)
                })
                Spacer()
                HStack(spacing: 20){
                    NavigationLink {
                        SignUp()
                    } label: {
                        Text("Sign Up")
                            .bold()
                            .font(.headline)
                            .frame(width: 70, height: 5)
                            .foregroundColor(.black)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                    }
                    .buttonStyle(.plain)            // removes the gray bg on the navlink

                    Text("/")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title3)
                    
                    NavigationLink {
                        Login()
                    } label: {
                        Text("Login")
                            .bold()
                            .font(.headline)
                            .frame(width: 60, height: 5)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("Custom_Orange"))
                            .cornerRadius(20)
                    }
                    .buttonStyle(.plain)            // removes the gray bg on the navlink

                    
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 4){
                    Text("By signing up, you agree to our")
                        .foregroundColor(.white)
                        .font(.caption)
                    Text("Terms of Service")
                        .foregroundColor(.white)
                        .font(.caption)
                        .bold()
                        .underline()
                    Text("and")
                        .foregroundColor(.white)
                        .font(.caption)
                    Text("Privacy Policy")
                        .foregroundColor(.white)
                        .font(.caption)
                        .bold()
                        .underline()
                }
                .padding(.horizontal, 5)
                .multilineTextAlignment(.center)
                
            }
            .padding(.bottom, 160)
            .padding(.top, 60)
            
        }
    }
}

struct SignUpLogin_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUpLogin()
        }
    }
}
