//
//  HasLoggedInViewController.swift
//  SecondAssignment
//
//  Created by 정윤선 on 2022/10/13.
//

import UIKit

class HasLoggedInViewController: UIViewController {

    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 23)
        
        // 줄간격 늘리는 코드.. 근데 갑자기 에러나서 주석처리했어요..
        /*
        let attrString = NSMutableAttributedString(string: label.text!)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 15
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
        label.attributedText = attrString
        */
        label.textAlignment = .center
        
        return label
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("확인", for: .normal)
        button.setTitleColor(UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 23)
        button.backgroundColor = UIColor(red: 0.98, green: 0.89, blue: 0.3, alpha: 1.0)
        button.addTarget(self, action: #selector(touchupConfirmButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setLayout()
    }
    
    func dataBind(emailOrNumber: String) {
        welcomeLabel.text = " \(emailOrNumber)님\n환영합니다"
    }
    
    @objc
       private func touchupConfirmButton() {
           dismiss(animated: true)
       }
    
}

// MARK: - Extensions
extension HasLoggedInViewController {
    
    // MARK: - Layout Helpers
    
    private func setLayout() {
        [welcomeLabel, signUpButton].forEach {
            view.addSubview($0)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(270)
            make.centerX.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(self.welcomeLabel.snp.bottom).offset(150)
            make.centerX.equalTo(self.welcomeLabel)
            make.width.equalTo(350)
            make.height.equalTo(55)
        }

    }
}
