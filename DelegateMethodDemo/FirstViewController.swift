//
//  ViewController.swift
//  DelegateMethodDemo
//
//  Created by Ramanan D2V on 13/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CommentsDelegate {
    
    
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var addressTV: UITextView!
    @IBOutlet weak var remarksTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "User Details"
        
    }
    
    
    @IBAction func selectAddressAction(_ sender: Any) {
        
        let commentVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController_ID") as! SecondViewController
        commentVC.cmtDelegate = self
        let aNav = UINavigationController(rootViewController: commentVC)
        self.present(aNav, animated: true, completion: nil)
    }
    //MARK: Implement Address delagete

    func commentData(addrs: String) {
        print(addrs)
        self.addressTV.text = addrs
    }
    

}

