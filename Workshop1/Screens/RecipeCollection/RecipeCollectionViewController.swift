//
//  RecipeCollectionViewController.swift
//  Workshop1
//
//  Created by omer kantar on 13/4/23.
//

import UIKit

public final class RecipeCollectionViewController: UIViewController {


    @IBOutlet private weak var contentView: RecipeCollectionContentView!
    private var provider: RecipeNetworkProviderProtocol = RecipeNetworkProvider()

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func build(for categoryId: Int) {
        // TODO: -> Network isteği atılacak. Sonra model gelecek...
        provider.recipes()
        let recipeList = [RecipeModel(id: 1, name: "Humus", imageUrl: nil, likeCount: 99, createdAt: ""),
                          RecipeModel(id: 2, name: "Falafel", imageUrl: nil, likeCount: 89, createdAt: ""),
                          RecipeModel(id: 3, name: "Vegan Kebap", imageUrl: nil, likeCount: 179, createdAt: ""),
                          RecipeModel(id: 4, name: "Mantı", imageUrl: nil, likeCount: 69, createdAt: ""),
                          RecipeModel(id: 5, name: "Burger", imageUrl: nil, likeCount: 59, createdAt: "")]
        
        let presentation = RecipeCollectionContentPresentation(recipeList: recipeList)
        DispatchQueue.main.async {
            self.contentView.configure(with: presentation)
        }
        
    }
    

}

public class RecipeCollectionContentPresentation: RecipeCollectionContentViewDataSource {
    public var title: String = "Günün Menüsü"
    
    public var cellData: [RecipeCollectionViewCellDataSource]
    
    public init(recipeList: [RecipeModel]) {
        cellData = recipeList.map { recipe in RecipeCollectionCellPresentation(recipe: recipe) }  // {RecipeCollectionCellPresentation(recipe: $0)}
    }
    
    public var moreButtonIsHidden: Bool {
        cellData.count < 5
    }
}

public class RecipeCollectionCellPresentation: RecipeCollectionViewCellDataSource {
    public var image: UIImageView.Resource?
    
    public var title: String
    
    public var subtitle: String = ""
    
    public init(recipe: RecipeModel) {
        title = recipe.name
        image = UIImageView.Resource(recipe.imageUrl)   //.init(recipe.imageUrl)
    }
}
