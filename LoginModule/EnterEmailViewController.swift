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
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //화면을 켰을때 커서 위치 세팅
        emailTextField.becomeFirstResponder()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //네비게이션 바 보이기
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
    }
    
}

extension EnterEmailViewController: UITextFieldDelegate {
    //입력후 키보드 사라짐
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    //이메일, 비밀번호가 값일 있을때 버튼 활성화
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == ""
        let isPasswordEmpty = passwordTextField.text == ""
        nextBtn.isEnabled = !isEmailEmpty && !isPasswordEmpty
    }
}
