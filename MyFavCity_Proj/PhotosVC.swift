//
//  PhotosVC.swift
//  MyFavCity_Proj
//
//  Created by Edward Garcia on 8/21/16.
//  Copyright © 2016 Edward Garcia. All rights reserved.
//

import UIKit

class PhotosVC: UIViewController {
    
    var mainPageVC: MainPageVC!
    
    @IBOutlet weak var scroller: UIScrollView!
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroller.backgroundColor = UIColor.blackColor()
        
        let myImages = ["image1.jpeg", "image2.jpeg", "image3.jpeg", "image4.jpeg", "image5.jpeg", "image6.jpeg"]
        
        let imageWidth: CGFloat = 300
        let imageHieght: CGFloat = 250
        var yPostion: CGFloat = 0
        var scrollViewContentSize: CGFloat = 0
       
        
        for x in 0..<myImages.count {
            let myImage: UIImage = UIImage(named: myImages[x])!
            let myImageView: UIImageView = UIImageView()
            myImageView.image = myImage
            myImageView.contentMode = UIViewContentMode.ScaleToFill
            
            myImageView.frame.size.width = imageWidth
            myImageView.frame.size.height = imageHieght
            myImageView.frame.origin.x = 0
            //myImageView.center = self.view.center
            myImageView.frame.origin.y = yPostion
            myImageView.layer.cornerRadius = 30.0
            
            scroller.addSubview(myImageView)
            
            let spacer:CGFloat = 15
            yPostion += imageHieght + spacer
            scrollViewContentSize += imageHieght + spacer
            
            scroller.contentSize = CGSize(width: imageWidth, height: scrollViewContentSize)
            
        }

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnTapped(sender: AnyObject) {
        mainPageVC = MainPageVC(nibName: "MainPageVC", bundle: nil)
        self.presentViewController(mainPageVC, animated: true, completion: nil)
        
    }
    
}



