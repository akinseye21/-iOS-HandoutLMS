//
//  SignUp.swift
//  HandoutLMS
//
//  Created by Yomi on 3/10/23.
//

import SwiftUI

struct SignUp: View {
    
    @State var fullName: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var university: String = ""
    
    var body: some View {
        ZStack(alignment: .leading){
            //background
            Color("Background")
                .ignoresSafeArea()
            
            //outlines
            ScrollView{
                VStack (alignment: .leading) {
                    Text("Create \nAccount")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                    
                    TextField("Full Name", text: $fullName)
                        .padding(20)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.vertical, 10)
                        .accentColor(Color("Background"))
                    
                    TextField("Email address", text: $email)
                        .padding(20)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.vertical, 10)
                    
                    TextField("Phone Number", text: $phone)
                        .padding(20)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.vertical, 10)
                    
                    SecureField("Password", text: $password)
                        .padding(20)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.vertical, 10)
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding(20)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .foregroundColor(Color("Background"))
                        .padding(.vertical, 10)
                    
                    Picker(
                        selection: $university) {
                            Text("Select your University").tag("Most recent")
                            Text("Ambrose Ali University").tag("Ambrose Ali University")
                            Text("University of Lagos").tag("University of Lagos")
                            Text("University of Calabar").tag("University of Calabar")
                            Text("Ondo State University").tag("Ondo State University")
                            Text("Federal University of Technology Minna").tag("Federal University of Technology Minna")
                        } label: {
                            Text("Select University")
                                
                    }
                    .padding(20)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color("AccentColor"))
                    .cornerRadius(30)
                    .foregroundColor(Color("Background"))
                    .padding(.vertical, 10)
                    .pickerStyle(MenuPickerStyle())
                    .accentColor(Color("Background"))
                    
                    NavigationLink {
                        
                    } label: {
                        Text("Sign up")
                            .bold()
                            .font(.headline)
                            .frame(width: 150, height: 5)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("Custom_Orange"))
                            .cornerRadius(20)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 30)
                    .buttonStyle(.plain)            // removes the gray bg on the navlink

                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Already have an account?")
                            .foregroundColor(.white)
                            .font(.caption)
                            .italic()
                        NavigationLink {
                            Login()
                        } label: {
                            Text("Login")
                                .foregroundColor(Color("Custom_Orange"))
                                .font(.caption)
                                .bold()
                                .italic()
                        }
                        .buttonStyle(.plain)            // removes the gray bg on the navlink
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 10)
                    
                    Spacer()
                }
                .padding(30)
            }
            
            
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUp()
        }
    }
}
