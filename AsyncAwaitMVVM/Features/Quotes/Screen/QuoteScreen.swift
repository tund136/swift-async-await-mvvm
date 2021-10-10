//
//  QuoteScreen.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import SwiftUI

struct QuoteScreen: View {
    var body: some View {
        List {
            ForEach(Quote.dummyData, id: \.anime) { item in
                QuoteView(item: item)
            }
        }
    }
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuoteScreen()
    }
}
