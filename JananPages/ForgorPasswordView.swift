import SwiftUI
struct ForgorPasswordView: View {
    @State private var email = ""
    var body: some View {
        NavigationView{
        GeometryReader{ geo in
          
ZStack {
                    //Backgraound BEGIN
                    Image("Backgraoun")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width , height: geo.size.height, alignment: .center)
                    //Backgraound END
                    
                    
// Main View
VStack {
                        
                        // Fields
VStack(spacing: 20) {
                            TextField("Email", text: $email, prompt: Text("Enter email..."))
                                .font(.title2)
                            //.textFieldStyle(.roundedBorder)
                                .autocapitalization(.none)
                                .padding(.all, 5)
                            // .background(Color.red)
                                .cornerRadius(10)
                        }
                        .padding()
                        .padding(.bottom, 8.0)
                        
                        
                        // Buttons
                        VStack(spacing: 16) {
                            
                                     // Create Account
                                     Button {
                                       print("email: \(email)")
                                       
                                     } label: {
                                       Text("Reset password")
                                             .bold()
                                             .frame(width: 200 , height: 40)
                                             .background(
                                                RoundedRectangle(cornerRadius: 10 , style: .continuous)
                                                    .foregroundColor(Color("Color2")))
                                     }
                                     .foregroundColor(.white).padding(6)
                            
                        }//End button Vstack
                        .padding()
                        
                    }//End mainViwe Vstack
                }.navigationTitle("")//End Zstack
            }.ignoresSafeArea() //End GEO
                
            }
        }
    }
           
struct ForgorPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgorPasswordView()
    }
}
