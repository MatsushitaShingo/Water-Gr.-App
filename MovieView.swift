//
//  MovieView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI
import AVKit

struct MovieView: View {
    
    private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
    var body: some View {
        VStack{
                VideoPlayer(player: player)
                    .onAppear(){
                        player.play()
                    }
                    .onDisappear(){
                        player.pause()
                    }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
