//
//  HomeViewController.swift
//  Workshop1
//
//  Created by omer kantar on 6/4/23.
//

import UIKit

public final class HomeViewController: UIViewController {

    
    // MARK: - Life Cycle
    public override func loadView() {
        super.loadView()
        print(#function)

    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
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
        
    }
    

}

