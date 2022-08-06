//
//  ViewController.swift
//  appGatos
//
//  Created by Luis Mindiola Gonzalez on 6/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ClienteHttp.shared.getGatos{ (gatos) in
            print(gatos)
        } failure: { error in
            print(error.debugDescription)
        }
    }


}

