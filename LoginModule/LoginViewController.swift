//
//  LoginViewController.swift
//  LoginModule
//
//  Created by lavaspoon on 2022/09/27.
//

import UIKit

class LoginViewController : UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //네비게이션바 숨김
        navigationController?.navigationBar.isHidden = true
    }
}
