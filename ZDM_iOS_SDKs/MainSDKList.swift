//
//  MainSDKList.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 11/12/22.
//

import UIKit

class MainSDKList: UITableViewController {
    
    var data = sdks

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "MainSDKListCell", bundle: nil), forCellReuseIdentifier: "MainSDKListCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.separatorStyle = .none
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "SDKs"
        self.view.backgroundColor = .systemGray6
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainSDKListCell", for: indexPath) as! MainSDKListCell
        cell.renderData(data[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
