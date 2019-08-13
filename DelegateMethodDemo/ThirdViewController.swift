//
//  ThirdViewController.swift
//  DelegateMethodDemo
//
//  Created by Ramanan D2V on 13/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit

protocol AddressDelegate {
    
    func addressData(addrs: String)
}

class ThirdViewController: UIViewController {
    


    @IBOutlet weak var dsTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var pincodeTF: UITextField!
    
    var addDelegate: AddressDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNav()
    }
    
    func setupNav() {
        self.title = "Manual Address"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissVC))

    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func continueAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        let address = "\(dsTF.text!),\(cityTF.text!),\(stateTF.text!),\(pincodeTF.text!)"
        addDelegate?.addressData(addrs: address)

    }
    
}
