//
//  ViewController.swift
//  FirstAssignment
//
//  Created by 정윤선 on 2022/10/06.
//

import UIKit

import UIKit

class ViewController: UIViewController {

    private let testLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 400, width: 300, height: 100))
        label.text = "아요미들🍎"
        label.font = .boldSystemFont(ofSize: 40)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(testLabel)
    }
}

