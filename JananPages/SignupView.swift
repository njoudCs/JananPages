//
//  NewAccountView.swift
//  LoginPage
//
//  Created by David Razmadze on 10/18/21.
//

import SwiftUI

struct SignupView: View {
    
    // MARK: - Properties
    
    // @State private var name = ""
     @State private var email = ""
     @State private var password = ""
    @State var passwordAgain: String = ""
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
                         
                         SecureField("Password", text: $passwordAgain, prompt: Text("Enter password again..."))
                             .font(.title2)
                         
                         ///////////////////////////////////////////////////////////////////
                         //Button
                         
                         VStack(spacing: 25){
                             Button {
                                 print("email: \(email)")
                                 
                                 print("password: \(password)")
                                 print("password: \(passwordAgain)")
                             } label: {
                                 Text("Sign Up")
                                     .bold()
                                     .frame(width: 200 , height: 40)
                                     .background(
                                        RoundedRectangle(cornerRadius: 10 , style: .continuous)
                                            .foregroundColor(Color("Color2")))
                             }.foregroundColor(.white).padding(6)
                             
                             
                         
                          /*
                             
                             Text("Already have an account?").padding(-10).foregroundColor(Color("Color3"))
                             
                             NavigationLink(destination: SigninView()){
                                 Text("Login").underline()
                                    // .offset(x: 110 , y: -10)
                                 //.frame(maxWidth: .infinity)
                                     .foregroundColor(Color("Color3"))
                                 
                             } */
                             /*
                             NavigationLink{
                                 SigninView()
                             }
                         label: {
                             Text("Login")
                                 .underline().bold()
                                 .foregroundColor(Color("Color3"))
                                 .padding(-11)
                         } */
                        // .padding()
                             
                             
                         }
                         
                         
                       //  .padding(.top)
                  
                         
                     }
                     .frame(width: 350)
                 }  .navigationTitle("")
                 
             }
             .ignoresSafeArea()
           

         }
         
     }
 }




struct NewAccountView_Previews: PreviewProvider {
  static var previews: some View {
    SignupView()
  }
}
