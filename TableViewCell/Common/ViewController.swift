//
//  ViewController.swift
//  TableViewCell
//
//  Created by Jarae on 28/3/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    //MARK: - Variables
    
    private let images: [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!,
        UIImage(named: "7")!
    ]
    private let info: [[String]] = [
        ["CELL1", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL2", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL3", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL4", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL5", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL6", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."],
        ["CELL7", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard."]
    ]
    
    //MARK: - UI Components
    private let tableView: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = .systemBackground
        tableview.allowsSelection = true
        tableview.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableview
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        setupUI()
    }


    //MARK: - Setup UI
    private func setupUI() {
        view.backgroundColor = .systemBlue
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.bottom.top.leading.trailing.equalToSuperview()
        }
    }
    

}
extension ViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("error")
        }
        
        let image = images[indexPath.row]
        
        cell.configure(with: image, and: info[indexPath.row][0], and: info[indexPath.row][1])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            200
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.configure(with: images[indexPath.row], and: info[indexPath.row][0], and: info[indexPath.row][1])
        self.navigationController?.pushViewController(vc, animated: true)
                    
    }
    
    
}



