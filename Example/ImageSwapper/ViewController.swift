//
//  ViewController.swift
//  ImageSwapper
//
//  Created by  Serg Tsarikovskiy  on 11/22/2017.
//  Copyright (c) 2017 tsarikovskiy. All rights reserved.
//

import UIKit
import ImageSwapper

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - Actions
    @IBAction func swapPressed(_ sender: Any) {
        ImageSwapper.waterDrop(image: imageView, toImage: #imageLiteral(resourceName: "beer.png"))
    }
}

