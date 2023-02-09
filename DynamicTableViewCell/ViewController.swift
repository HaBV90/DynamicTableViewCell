//
//  ViewController.swift
//  DynamicTableViewCell
//
//  Created by HaBV on 07/02/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var data: [Card] = [
        Card(avatar: UIImage(named: "Image")!, title: "Box Fan", detail: "Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Ceiling Fan", detail: "Box Fan", rightImage: UIImage(systemName: "chevron.right")),
        Card(avatar: UIImage(named: "Image")!, title: "Test 1 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 2 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 3 Fan", detail: "Box Fan", rightImage: UIImage(systemName: "chevron.right")),
        Card(avatar: UIImage(named: "Image")!, title: "Test 4 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 5 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 6 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 7 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 8 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 9 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 10 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 11 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 12 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 13 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 14 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 15 Fan", detail: "Box Fan", rightImage: nil),
        Card(avatar: UIImage(named: "Image")!, title: "Test 16 Fan", detail: "Box Fan", rightImage: UIImage(systemName: "chevron.right")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CardCellTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCardCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 96
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCardCell", for: indexPath) as! CardCellTableViewCell
        
        cell.titleLabel.text = data[indexPath.row].title
        cell.leftImage.image = data[indexPath.row].avatar
        cell.detailLabel.text = data[indexPath.row].detail
        cell.rightImage.image = data[indexPath.row].rightImage
        return cell
    }
}

extension ViewController: UITableViewDelegate {}
