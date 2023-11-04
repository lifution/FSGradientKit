//
//  ViewController.swift
//  FSGradientKit
//
//  Created by Sheng on 11/04/2023.
//  Copyright (c) 2023 Sheng. All rights reserved.
//

import UIKit
import SnapKit
import FSGradientKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = FSGradientView()
        gradientView.colors = [.blue, .cyan, .red]
        gradientView.locations = [0, 0.5, 1.0]
        gradientView.startPoint = .init(x: 0, y: 0)
        gradientView.endPoint = .init(x: 1.0, y: 1.0)
        view.addSubview(gradientView)
        gradientView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 200.0, height: 100.0))
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100.0)
        }
        
        let gradientLabel = FSGradientLabel()
        gradientLabel.text = "FSGradientLabel"
        gradientLabel.font = .boldSystemFont(ofSize: 30.0)
        gradientLabel.colors = [.brown, .orange, .green]
        gradientLabel.locations = [0, 0.5, 1.0]
        gradientLabel.startPoint = .init(x: 0, y: 0.5)
        gradientLabel.endPoint = .init(x: 1.0, y: 0.5)
        view.addSubview(gradientLabel)
        gradientLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(gradientView.snp.bottom).offset(20.0)
        }
    }
}

