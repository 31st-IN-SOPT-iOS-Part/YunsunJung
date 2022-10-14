//
//  FriendsListViewController.swift
//  SecondAssignment
//
//  Created by 정윤선 on 2022/10/14.
//

import UIKit
import SnapKit

class FriendsListViewController: UIViewController {

    private let friendsLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 22)
        label.text = "친구"
    
        return label
    }()
    
    private let settingsImageView = UIImageView()
    
    private let profileImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = .white
        configImageView()
        setLayout()
    }
    
}

// MARK: - Extensions
extension FriendsListViewController {
    
    // MARK: - Layout Helpers
    
    private func setLayout() {
        [friendsLabel, settingsImageView, profileImageView].forEach {
            view.addSubview($0)
        }
    
        friendsLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(self.view.safeAreaLayoutGuide).offset(14)
        }
        
        settingsImageView.snp.makeConstraints { make in
            make.top.equalTo(self.friendsLabel)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(14)
            make.width.equalTo(21)
            make.height.equalTo(21)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(self.friendsLabel.snp.bottom).offset(26)
            make.leading.equalTo(self.friendsLabel)
            make.width.equalTo(58)
            make.height.equalTo(58)
        }

    }
    
    // MARK: - General Helpers
    
    private func configImageView() {
        settingsImageView.image = UIImage(named: "settings 1")
        profileImageView.image = UIImage(named: "friendtab_profileImg")
    }
}
