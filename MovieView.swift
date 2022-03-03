//
//  MovieView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI
import AVKit

struct MovieView: View {
    
    @State var showingDetail1 = false
    @State var showingDetail2 = false
//    let player = URL(fileURLWithPath: Bundle.main.path(forResource:"movie",ofType: "mp4")!)
    
     
     
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.sheet(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.sheet(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }
        }
        
                
                
//        ScrollView{
//            VStack{
//                HStack{
//                    VStack{
//                        Text("節水1")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                            //.offset(x:-80)
//                    }.padding()
//                    VStack{
//                        Text("節水2")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }
//                }
//                HStack{
//                    VStack{
//                        Text("歴史1")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }.padding()
//                    VStack{
//                        Text("歴史2")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }
//                }
//                HStack{
//                    VStack{
//                        Text("水循環1")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }.padding()
//                    VStack{
//                        Text("水循環2")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }
//                }
//                HStack{
//                    VStack{
//                        Text("SDGｓ1")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }.padding()
//                    VStack{
//                        Text("SDGｓ2")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }
//                }
//                HStack{
//                    VStack{
//                        Text("熊本の水1")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//
//                    }.padding()
//                    VStack{
//                        Text("熊本の水2")
//                        VideoPlayer(player: AVPlayer(url: player))
//                            .frame(width: 350, height: 200)
//                    }
//                }
//            }
//        }
    }
}
struct moviestart: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
    struct moviestart1: View{
        
         private let player1 = AVPlayer(url: Bundle.main.url(forResource:"mov_hts-samp001",withExtension: "mp4")!)
        
         var body: some View{
            VideoPlayer(player: player1)
                .onAppear(){
                    player1.play()
                    
                }
                .onDisappear(){
                    player1.pause()
                }
            }
        }
}



struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
