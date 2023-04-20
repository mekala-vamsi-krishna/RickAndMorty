//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Mekala Vamsi Krishna on 19/04/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character)
        print(request.url)
    }
    

}
