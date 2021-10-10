//
//  QuoteViewModel.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import Foundation
import UIKit

protocol QuoteViewModel: ObservableObject {
    func getRandomQuotes() async
}

@MainActor
final class QuoteViewModelImpl: QuoteViewModel {
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuoteService
    
    init(service: QuoteService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error.localizedDescription)
        }
    }
}
