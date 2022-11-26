//
//  Book.swift
//  JananPages
//
//  Created by Njoud saud Al-Najem on 12/04/1444 AH.
//

import SwiftUI

struct Book: View {
    @State private var date = Date()
    var body: some View {
        NavigationView{
            ZStack{
                
                Color("Color1")
                    .ignoresSafeArea()
                VStack {
                    
                    
                    
                    HStack{
                        ZStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("bpink"))
                                .frame(width: 370, height: 150)
                            HStack{
                                Image("alex")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 100 ,height: 100)
                                VStack(alignment: .leading){
                                    Text("Alex")
                                        .bold()
                                        .multilineTextAlignment(.leading)
                                    Text("Degree: Master.")
                                    Text("Experence:child development.")
                                }
                            }
                            
                        }
                    }
                    VStack{
                        VStack(alignment: .leading){
                            Text("About expert")
                                .padding()
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("bpink"))
                            
                                .frame(width: 370)
                            .overlay(Text("7Y at child development."))}
                        Spacer()
                        DatePicker("Start Date", selection: $date,displayedComponents: [.date])
                            .datePickerStyle(.graphical)
                            .frame(width: 330)
                            //.background(.white)
                            
                        Button("Make an appointement") {
                            
                        }
                        .padding()
                        .background(Color("Color2"))
                        .clipShape(Capsule())
                        // .clipShape(RoundedRectangle)
                        .foregroundColor(.white)
                    }
                    
                }
                .navigationTitle("Book Appointement")
                //  .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        Book()
    }
}
