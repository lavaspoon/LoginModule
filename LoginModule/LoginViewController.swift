//
//  LoginViewController.swift
//  LoginModule
//
//  Created by lavaspoon on 2022/09/27.
//

import UIKit
import GoogleSignIn

class LoginViewController : UIViewController {
    @IBOutlet weak var emailLoginBtn: UIButton!
    @IBOutlet weak var googleLoginBtn: GIDSignInButton!
    @IBOutlet weak var appleLoginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //버튼 스타일 적용
        [emailLoginBtn, googleLoginBtn, appleLoginBtn].forEach {
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //네비게이션바 숨김
        navigationController?.navigationBar.isHidden = true
        
        //Google SignIn (Google SignIn에서 웹뷰를 띄울 컨트롤러는 LoginViewController 선언
        GIDSignIn.sharedInstance().presentingViewController = self
    }
    
    @IBAction func googleLoginBtnTapped(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signIn()
    }
    @IBAction func appleLoginBtnTapped(_ sender: UIButton) {
        
    }
}
