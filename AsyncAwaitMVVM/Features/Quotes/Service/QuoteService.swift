//
//  QuoteService.swift
//  AsyncAwaitMVVM
//
//  Created by Danh Tu on 10/10/2021.
//

import Foundation

protocol QuoteService {
    func fetch() async throws -> [Quote]
}

final class QuoteServiceImpl: QuoteService {
    func fetch() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
