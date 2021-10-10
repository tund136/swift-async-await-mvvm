//
//  QuoteView.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import SwiftUI

struct QuoteView: View {
    let item: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "tv")
                    .font(.caption.bold())
                
                Text(item.anime)
            }
            
            Text(makeAttribute(title: "Character", label: item.character))
            Text(makeAttribute(title: "Quotes", label: item.quote))
        }
        .padding()
        .foregroundColor(.black)
    }
    
    private func makeAttribute(title: String, label: String) -> AttributedString {
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .subheadline.bold()
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .subheadline
        }
        
        return string
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(item: Quote.dummyData.first!)
    }
}
