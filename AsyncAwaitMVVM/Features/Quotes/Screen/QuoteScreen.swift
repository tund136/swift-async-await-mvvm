//
//  QuoteScreen.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import SwiftUI

struct QuoteScreen: View {
    @StateObject private var vm = QuoteViewModelImpl (service: QuoteServiceImpl())
    
    var body: some View {
        Group {
            if vm.quotes.isEmpty {
                LoadingView(text: "Fetching Quotes")
            } else {
                List {
                    ForEach(vm.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuoteScreen()
    }
}
