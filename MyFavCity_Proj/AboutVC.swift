//
//  AboutVC.swift
//  MyFavCity_Proj
//
//  Created by Edward Garcia on 8/19/16.
//  Copyright © 2016 Edward Garcia. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {
    
    var mainPageVC: MainPageVC!
    
    @IBOutlet weak var scroller: UIScrollView! // Portrait View Scroller
    @IBOutlet weak var scrollerLandscapeFive: UIScrollView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroller.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 1380, right: 0)
       // scrollerLandscapeFive.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 500, right: 0)

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackBtnTapped(sender: AnyObject) {
        let mainPageVC = MainPageVC(nibName: "MainPageVC", bundle: nil)
        self.presentViewController(mainPageVC, animated: true, completion: nil)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.scroller.frame = self.view.bounds
        self.scroller.contentSize.height = 1380
        self.scroller.contentSize.width = 0
        
//        self.scrollerLandscapeFive.frame = self.view.bounds
//        self.scrollerLandscapeFive.contentSize.height = 500
//        self.scrollerLandscapeFive.contentSize.width = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
