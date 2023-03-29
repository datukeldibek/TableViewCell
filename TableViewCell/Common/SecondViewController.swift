//
//  SecondViewController.swift
//  TableViewCell
//
//  Created by Jarae on 28/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    private var imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "fish")
        iv.tintColor = .label
        return iv
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        label.text = "ERROR"
        return label
    }()
    private var detailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.text = "ERROR"
        return label
    }()

    public func configure(with image: UIImage, and lbl: String, and detail: String){
        imageView.image = image
        label.text = lbl
        detailLabel.text = detail
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    private func setupUI() {
        view.backgroundColor = .systemBlue
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.left.right.equalToSuperview().inset(30)
            make.height.equalTo(150)
        }
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(30)
            make.left.right.equalToSuperview().inset(50)
            
        }
        view.addSubview(detailLabel)
        detailLabel.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(60)
        }
        
    }
    


}
