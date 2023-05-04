//
//  HomeViewController.swift
//  Workshop1
//
//  Created by omer kantar on 6/4/23.
//

import UIKit

public final class HomeViewController: UIViewController {
    
    @IBOutlet private var categoryStackView: UIStackView!
    
    // MARK: - Life Cycle
    public override func loadView() {
        super.loadView()
        print(#function)

    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        let categoryPresentations = [CategoryPresentation(emoji: "🍔", name: "Fast Food"),
                                     CategoryPresentation(emoji: "🍺", name: "Drinks"),
                                     CategoryPresentation(emoji: "🍦", name: "Ice Cream"),
                                     CategoryPresentation(emoji: "🍜", name: "Soup"),
                                     CategoryPresentation(emoji: "🎂", name: "Cake"),
                                     CategoryPresentation(emoji: "🎂", name: "Cake"),
                                     CategoryPresentation(emoji: "🎂", name: "Cake") ]
        
        for categoryPresentation in categoryPresentations {
            let categoryComponent = CategoryComponent.make()
            categoryComponent.configure(with: categoryPresentation)
            categoryStackView.addArrangedSubview(categoryComponent)
            
        }
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
 }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    
    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }

    public override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        print(#function)

    }
    
    // MARK: - prepare
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case let recipeCollectionViewController as RecipeCollectionViewController:
            recipeCollectionViewController.build(for: 0)
        default:
            break
        }
    }
    

}

