//
//  StudyingView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI

struct StudyingView: View {
    var body: some View {
        VStack{
            Text("汚染")
                .padding()
            Text("ここは汚染のステージです")
                .padding()
            Text("5問全問正解でクリア")
                .padding()
            Text("クリアすると良いことがあるかも・・・？")
                .padding()
        }
        
    }
}

struct StudyingView_Previews: PreviewProvider {
    static var previews: some View {
        StudyingView()
    }
}
