//
//  ViewController.swift
//  SloweApp
//
//  Created by Joseph Izatt on 27/11/2018.
//  Copyright © 2018 Joseph Izatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    final let url = URL(string: "http://www.slowe.club/slowe?category=News&format=json-pretty")
    private var items = [News]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        tableView.tableFooterView = UIView()
        
        }
    
    func downloadJson() {
        guard let downloadURL = url else { return }
        
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
                
            }
            print("downloaded")
            
            do
            {
                let decoder = JSONDecoder()
                let downloadedItems = try decoder.decode(Items.self, from: data)
                self.items = downloadedItems.items
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } catch {
                print("something wrong after downloaded")
            }
            
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsCell else { return UITableViewCell() }
        
        cell.titleLbl.text = items[indexPath.row].title
        cell.copyLbl.text = items[indexPath.row].excerpt
        
        cell.contentView.backgroundColor = UIColor.darkGray
        cell.backgroundColor = UIColor.lightGray
        
        if let assetUrl = URL(string: items[indexPath.row].assetUrl) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: assetUrl)
                if let data = data {
                    let assetUrl = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.imgView.image = assetUrl
                    }
                    
                }
            }
        }
            
        return cell
        
    }

}
