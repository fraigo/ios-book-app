//
//  ViewController.swift
//  ios-multiview
//
//  Created by Francisco on 2018-10-05.
//  Copyright © 2018 franciscoigor. All rights reserved.
//

import UIKit

class BookTitleController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var bookTitle : String?{
        didSet {
            if (titleLabel != nil){
                titleLabel.text = bookTitle
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if (titleLabel != nil){
            titleLabel.text = bookTitle
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

