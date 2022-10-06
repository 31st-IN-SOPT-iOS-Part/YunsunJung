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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let components: [Any] = [startKakaotalkLabel, ifHasAccountLabel]
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
