//
//  MovieView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI
import AVKit

struct MovieView: View {
    
    let player = URL(fileURLWithPath: Bundle.main.path(forResource:"movie",ofType: "mp4")!)
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("節水")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }.padding()
                VStack{
                    Text("地下水")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }
            }
            HStack{
                VStack{
                    Text("世界の水")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }.padding()
                VStack{
                    Text("歴史")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }
            }
            HStack{
                VStack{
                    Text("水循環")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }.padding()
                VStack{
                    Text("SDGｓ")
                    VideoPlayer(player: AVPlayer(url: player))
                        .frame(width: 350, height: 200)
                        .offset(x:-80)
                }
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
