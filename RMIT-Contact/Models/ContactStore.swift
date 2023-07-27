//
//  ContactStore.swift
//  RMIT-Contact
//
//  Created by Trung Nguyen on 28/07/2023.
//

import Foundation

@MainActor
class ContactStore: ObservableObject {
    private static let JSON_PATH = "contacts.json"
    
    @Published var contacts: [Contact] = []
    
    func loadContactsFromJson() {
        // TODO: use task to load file async
        guard let file = Bundle.main.url(forResource: Self.JSON_PATH, withExtension: nil)
        else {
            fatalError("Couldn't find \(Self.JSON_PATH) in main bundle.")
        }
        
        
        
        do {
            let data = try Data(contentsOf: file)
            
            let decoder = JSONDecoder()
            
            contacts = try decoder.decode([Contact].self, from: data)
        } catch {
            fatalError("Couldn't parse \(Self.JSON_PATH) as Contact")
        }
    }
    
    init() {
        loadContactsFromJson()
    }
}
