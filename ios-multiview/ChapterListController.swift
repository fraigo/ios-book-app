//
//  ChapterListController.swift
//  ios-multiview
//
//  Created by Francisco on 2018-10-05.
//  Copyright © 2018 franciscoigor. All rights reserved.
//

import UIKit

class ChapterListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let button = sender as! UIButton
        NSLog("Button \(button.tag) \(button.currentTitle ?? "" )")
        switch button.tag {
            case 0:
                let titleView = segue.destination as! BookTitleController
                titleView.bookTitle = button.currentTitle!
            case 1:
                let chapterView = segue.destination as! ChapterController
                chapterView.chapterName = button.currentTitle!
                chapterView.chapterText = nil
            default:
            NSLog("\(NSStringFromClass(self.classForCoder)) Button \(button.currentTitle ?? "" )")
        }
        
    }
   

}
