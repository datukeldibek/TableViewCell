//
//  CustomCell.swift
//  TableViewCell
//
//  Created by Jarae on 28/3/23.
//

import UIKit

class CustomCell: UITableViewCell {

    static let identifier = "CustomCell"
    
    private var myImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "fish")
        iv.tintColor = .label
        iv.layer.cornerRadius = 16
        return iv
    }()
    
    private var myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        label.text = "ERROR"
        return label
    }()
    private var mySecondLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.text = "detail erroe"
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func configure(with image: UIImage, and label: String, and detailLabel: String){
        myImageView.image = image
        myLabel.text = label
        mySecondLabel.text = detailLabel
    }
    private func setupUI() {
        
        contentView.addSubview(myImageView)
        myImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.width.equalTo(200)
            make.height.equalTo(150)
        }
        
        contentView.addSubview(myLabel)
        myLabel.snp.makeConstraints { make in
            make.right.equalTo(myImageView.snp.left).offset(-30)
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(10)
        }
        
        contentView.addSubview(mySecondLabel)
        mySecondLabel.snp.makeConstraints { make in
            make.right.equalTo(myImageView.snp.left).offset(-30)
            make.top.equalTo(myLabel.snp.bottom).offset(20)
            
            make.left.equalToSuperview().offset(10)
        }
    }

    
}
