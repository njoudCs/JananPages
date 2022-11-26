//
//  ContentView.swift
//  blog
//
//  Created by Nourah on 08/04/1444 AH.
//

import SwiftUI

struct Blog: View {
    @State private var homepage = 0
    var body: some View {
        NavigationView{
            
            VStack{
                ScrollView{
                Button("Add new blog") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            
                
               
                    
                    
                    
                    VStack{
                        HStack{
                            Text("Featured Posts")
                                .font(.title)
                            Spacer()
                            
                        }
                        LazyVStack{
                            ForEach(featuredposts){post in
                                //  Text(post.name)
                                NavigationLink(destination: BlogPostView(blogPost: post)){
                                    BlogPostCardMain(blogPost: post)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 30)
                    
                    
                    VStack{
                        HStack{
                            Text("Latest Posts")
                                .font(.title)
                            Spacer()
                        }
                        LazyVStack{
                            ForEach(featuredposts){post in
                                //  Text(post.name)
                                NavigationLink(destination: BlogPostView(blogPost: post)){
                                    BlogPostCardMain(blogPost: post)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 30)
                    
                    
                    
                }
                   // .toolbarBackground(Color("light pink"), for:.navigationBar)
                    .background(Color("Color1"))
                
                
                
                
            }
        }
    }
    
    struct Blog_Previews: PreviewProvider {
        static var previews: some View {
            Blog()
        }
    }
    
}
