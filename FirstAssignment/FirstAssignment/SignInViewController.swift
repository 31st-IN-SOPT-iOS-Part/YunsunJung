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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [startKakaotalkLabel, ifHasAccountLabel, emailOrNumberTextField, dividingLineView, passwordTextField, dividingLineView2]
        components.forEach {
            view.addSubview($0 as! UIView)
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
