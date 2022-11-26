//
//  ContentView.swift
//  JananPages
//
//  Created by Njoud saud Al-Najem on 01/04/1444 AH.
//

import SwiftUI

struct SigninView: View {
   // @State private var name = ""
    @State private var email = ""
    @State private var password = ""
  // @State private var Password = ""
    var body: some View {
        
        GeometryReader{ geo in
            NavigationView {
                ZStack {
                    //Backgraound BEGIN
                    Image("Backgraoun")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width , height: geo.size.height, alignment: .center)
                    //Backgraound END
                    
                    //Main view
                    VStack(spacing:20){
                        
                        
                        
                        TextField("Email", text: $email, prompt: Text("Enter email..."))
                            .font(.title2)
                        //.textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                            .padding(.all, 5)
                        // .background(Color.red)
                            .cornerRadius(10)
                        
                        SecureField("Password", text: $password, prompt: Text("Enter password..."))
                            .font(.title2)
                        
                        //Button
                        VStack(spacing: 16){
                         
                           /*
                                NavigationLink{
                                    SignupView()
                                }label: {
                                    Text("hhhi")
                                }
                            */
                         /*   Button {
                                print("TODO: Forgot Password")
                                
                            } */
                        
                            NavigationLink(destination: ForgorPasswordView()){
                                Text("Forgot Password?").underline()
                                    .offset(x: 110 , y: -10)
                                //.frame(maxWidth: .infinity)
                                    .foregroundColor(Color("Color3"))
                                
                            }
                                        
                           /* label: {
                                Text("Forgot Password?").underline()
                                    .offset(x: 110 , y: -10)
                                //.frame(maxWidth: .infinity)
                                    .foregroundColor(Color("Color3"))
                                
                            } */
                            
                            //.padding()
                            
                           
                            Button{
                                print("email: \(email)")
                                print("password: \(password)")
                                
                            }label: {
                                Text("Sign in")
                                    .bold()
                                    .frame(width: 200 , height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10 , style: .continuous)
                                            .foregroundColor(Color("Color2"))
                                    ).foregroundColor(.white)
                                
                            }
                            
                        }
                        
                        
                       // .padding(.top)
                        //.offset(y: 100)
                        Text("Don't have an account?").padding(-10).foregroundColor(Color("Color3"))
                     
                        
                        NavigationLink(destination: SignupView()){
                            Text("\n Sign up")
                                .underline().bold()
                                .foregroundColor(Color("Color3"))
                                .padding(-11)
                            
                        }
                          /*                       label: {
                            Text("\n Sign up")
                                .underline().bold()
                                .foregroundColor(Color("Color3"))
                                .padding(-11)
                            
                        } */
                        
                        
                    }
                    .frame(width: 350)
                }.navigationTitle("")

            }
            .ignoresSafeArea()
            // .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

