//
//  ChapterController.swift
//  ios-multiview
//
//  Created by Francisco on 2018-10-05.
//  Copyright © 2018 franciscoigor. All rights reserved.
//

import UIKit

class ChapterController: UIViewController {

    @IBOutlet weak var chapterLabel: UILabel!
    @IBOutlet weak var chapterContent: UITextView!
    var chapterName: String? {
        didSet {
            if (chapterLabel != nil){
                chapterLabel.text = chapterName
            }
        }
    }
    var chapterText: String?{
        didSet {
            if (chapterText != nil){
                chapterContent.text = chapterText
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chapterLabel.text = chapterName
        if (chapterText != nil){
            chapterContent.text = chapterText
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
