//
//  SignInViewController.swift
//  FirstAssignment
//
//  Created by 정윤선 on 2022/10/06.
//

import UIKit

class SignInViewController: UIViewController {
    
    private let startKakaotalkLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 93, y: 135, width: 250, height: 30))
        label.text = "카카오톡을 시작합니다"
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    private let ifHasAccountLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 50, y: 175, width: 300, height: 60))
        label.numberOfLines = 2
        label.text = "사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해 주세요."
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 17)
        label.textColor = .gray
        return label
    }()
    
    private let emailOrNumberTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 22, y: 298, width: 350, height: 40))
        // 사실 attributedPlaceholder 까지는 공식문서 보고 이해했는데 NSAttributedString은 공식문서 봐도 잘 모르겠더라고요...
        textField.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호", attributes: [.foregroundColor : UIColor.lightGray])
        textField.font = .systemFont(ofSize: 20, weight: .medium)
        return textField
    }()
    
    private let dividingLineView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 350, width: 350, height: 1))
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 22, y: 361, width: 350, height: 40))
        // 사실 attributedPlaceholder 까지는 공식문서 보고 이해했는데 NSAttributedString은 공식문서 봐도 잘 모르겠더라고요...
        textField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor : UIColor.lightGray])
        textField.font = .systemFont(ofSize: 20, weight: .medium)
        // 비밀번호 입력값 가리고 키패드를 비밀번호에 사용되는 문자들로 제한함
        textField.isSecureTextEntry = true
        textField.textContentType = .password
        return textField
    }()
    
    private let dividingLineView2: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 410, width: 350, height: 1))
        view.backgroundColor = .lightGray
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 449, width: 350, height: 54))
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        button.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 515, width: 350, height: 54))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        button.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        return button
    }()
    
    private let findAccountOrPasswordButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 95, y: 580, width: 200, height: 30))
        button.setTitle("카카오계정 또는 비밀번호 찾기", for: .normal)
        button.setTitleColor(UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14.5)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [startKakaotalkLabel, ifHasAccountLabel, emailOrNumberTextField, dividingLineView, passwordTextField, dividingLineView2, signInButton, signUpButton, findAccountOrPasswordButton]
        components.forEach {
            view.addSubview($0 as! UIView)
        }
    }
    
}
