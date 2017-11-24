//
//  LoginViewController.swift
//  Hop
//
//  Created by Nicholas Jones on 2017-11-24.
//  Copyright © 2017 Hop. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginViewController: UIViewController {

    @IBAction func FacebookLoginTapped(_ sender: Any) {
        
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions: [.publicProfile], viewController: self) { result in
            
            switch result {
                
            case.failed(let error):
                print(error.localizedDescription)
                
            case.cancelled:
                print("Cancelled")
                
            case.success(let grantedPermissions, _, let userInfo):
                
                print("Login Successfull")
                
                //self.whateverlable.text = userInfo.whatevertokenprobablynameorpicture
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        // Do any additional setup after loading the view.
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
