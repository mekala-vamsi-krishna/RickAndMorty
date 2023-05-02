//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Mekala Vamsi Krishna on 01/05/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String  {
        character.name.uppercased()
    }
}
