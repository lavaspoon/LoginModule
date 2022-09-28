//
//  EnterEmailViewController.swift
//  LoginModule
//
//  Created by spoon lava on 2022/09/29.
//

import UIKit

class EnterEmailViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextBtn.layer.cornerRadius = 10
        nextBtn.isEnabled = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //네비게이션 바 보이기
        navigationController?.navigationBar.isHidden = false
    }
}
