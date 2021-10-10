//
//  LoadingView.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Quotes")
    }
}
