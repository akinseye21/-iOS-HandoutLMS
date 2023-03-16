//
//  Login.swift
//  HandoutLMS
//
//  Created by Yomi on 3/10/23.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            //background
            Color("Background")
                .ignoresSafeArea()
            
            //outline
            ScrollView{
                VStack(alignment: .leading){
                    Text("Hey,\nWelcome\nBack!")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                    Image("ic4")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 30)
                    TextField("Email address", text: $email)
                        .padding(30)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.top, 40)
                    SecureField("Password", text: $password)
                        .padding(30)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.top, 20)
                    Text("Forgot Password?")
                        .font(.headline)
                        .italic()
                        .foregroundColor(Color("Custom_Orange"))
                        .padding(.top, 20)
                        .frame(maxWidth: .infinity)
                        .frame(alignment: .trailing)
                    NavigationLink {
                        
                    } label: {
                        Text("Login")
                            .bold()
                            .font(.headline)
                            .frame(width: 150, height: 5)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("Custom_Orange"))
                            .cornerRadius(20)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 10)
                    .buttonStyle(.plain)            // removes the gray bg on the navlink
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Don't have an account?")
                            .foregroundColor(.white)
                            .font(.caption)
                            .italic()
                        NavigationLink {
                            SignUp()
                        } label: {
                            Text("Sign up")
                                .foregroundColor(Color("Custom_Orange"))
                                .font(.caption)
                                .bold()
                                .italic()
                        }
                        .buttonStyle(.plain)            // removes the gray bg on the navlink
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 10)
                        
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Login()
        }
    }
}
