//
//  ViewController.swift
//  MyFavCity_Proj
//
//  Created by Edward Garcia on 8/19/16.
//  Copyright © 2016 Edward Garcia. All rights reserved.
//

import UIKit

class MainPageVC: UIViewController {
    
    var aboutBtn: AboutVC!
    var photoBtn: PhotosVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onAboutBtnTapped(sender: AnyObject) {
        let aboutBtn = AboutVC(nibName: "AboutVC", bundle: nil)
        self.presentViewController(aboutBtn, animated: true, completion: nil)
    }

    @IBAction func onPhotosBtnTapped(sender: AnyObject) {
        let photoBtn = PhotosVC(nibName: "PhotosVC", bundle: nil)
        self.presentViewController(photoBtn, animated: true, completion: nil)
        
    }
}

