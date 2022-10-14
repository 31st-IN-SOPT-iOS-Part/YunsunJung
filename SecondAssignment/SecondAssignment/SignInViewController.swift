//
//  SignInViewController.swift
//  SecondAssignment
//
//  Created by 정윤선 on 2022/10/13.
//

import UIKit
import SnapKit

final class SignInViewController: UIViewController {
     
    // MARK: - UIComponents
    
    private let startKakaotalkLabel: UILabel = {
        let label = UILabel()
        label.text = "카카오톡을 시작합니다"
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    private let ifHasAccountLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해 주세요."
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 17)
        label.textColor = .gray
        return label
    }()
    
    private let emailOrNumberTextField: UITextField = {
        let textField = UITextField()
        // 사실 attributedPlaceholder 까지는 공식문서 보고 이해했는데 NSAttributedString은 공식문서 봐도 잘 모르겠더라고요...
        textField.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호", attributes: [.foregroundColor : UIColor.lightGray])
        textField.font = .systemFont(ofSize: 20, weight: .medium)
        return textField
    }()
    
    private let dividingLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        // 사실 attributedPlaceholder 까지는 공식문서 보고 이해했는데 NSAttributedString은 공식문서 봐도 잘 모르겠더라고요...
        textField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor : UIColor.lightGray])
        textField.font = .systemFont(ofSize: 20, weight: .medium)
        // 비밀번호 입력값 가리고 키패드를 비밀번호에 사용되는 문자들로 제한함
        textField.isSecureTextEntry = true
        textField.textContentType = .password
        return textField
    }()
    
    private let dividingLineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        button.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        button.addTarget(self, action: #selector(touchupLogInButton), for: .touchUpInside)
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        button.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        button.addTarget(self, action: #selector(touchupSignUpButton), for: .touchUpInside)
        return button
    }()
    
    private let findAccountOrPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("카카오계정 또는 비밀번호 찾기", for: .normal)
        button.setTitleColor(UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14.5)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setLayout()
    }
    
    private func presentToHasLoggedInVC() {
        let hasLoggedInVC = HasLoggedInViewController()
        hasLoggedInVC.modalPresentationStyle = .formSheet
        
        if let emailOrNumber = emailOrNumberTextField.text {
            hasLoggedInVC.dataBind(emailOrNumber: emailOrNumber)
        }
        
        self.present(hasLoggedInVC, animated: true)
    }
    
    private func pushToSignUpVC() {
        let signUpVC = SignUpViewController()
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @objc
    private func touchupLogInButton() {
        presentToHasLoggedInVC()
    }
    
    @objc
    private func touchupSignUpButton() {
        pushToSignUpVC()
    }

}


// MARK: - Extensions
extension SignInViewController {
    
    // MARK: - Layout Helpers
    
    private func setLayout() {
        [startKakaotalkLabel, ifHasAccountLabel, emailOrNumberTextField, dividingLineView, passwordTextField, dividingLineView2, signInButton, signUpButton, findAccountOrPasswordButton].forEach {
            view.addSubview($0)
        }
        
        startKakaotalkLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(60)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        ifHasAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(self.startKakaotalkLabel.snp.bottom).offset(10)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        emailOrNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(self.ifHasAccountLabel.snp.bottom).offset(65)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(20)
        }
        
        dividingLineView.snp.makeConstraints { make in
            make.top.equalTo(self.emailOrNumberTextField.snp.bottom).offset(14)
            make.leading.equalTo(self.emailOrNumberTextField)
            make.width.equalTo(350)
            make.height.equalTo(1)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.dividingLineView.snp.bottom).offset(17)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(20)
        }
        
        dividingLineView2.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(14)
            make.leading.equalTo(self.passwordTextField)
            make.width.equalTo(350)
            make.height.equalTo(1)
        }
        
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(self.dividingLineView2.snp.bottom).offset(40)
            make.leading.equalTo(self.dividingLineView2)
            make.width.equalTo(350)
            make.height.equalTo(55)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(self.signInButton.snp.bottom).offset(10)
            make.leading.equalTo(self.dividingLineView2)
            make.width.equalTo(350)
            make.height.equalTo(55)
        }
        
        findAccountOrPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(self.signUpButton.snp.bottom).offset(10)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
}
