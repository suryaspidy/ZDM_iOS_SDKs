//
//  ViewController.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 10/12/22.
//

import UIKit
import SwiftUI
import SSOKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoreDataManager.shared.loadData()
        CoreDataManager.shared.getFavtSDK()
//        @StateObject var manager = CDManager()
        let swiftUIView = SDKListScreen()
        self.navigationController?.setViewControllers([UIHostingController(rootView: swiftUIView)], animated: true)
//        getCoreDataDBPath()
//        CoreDataManager.shared.addStaticData()
        
        /*ZSSOKit.getOAuth2Token { token, err in
            print(token)
            /*let url = "https://cmtools.csez.zohocorpin.com/api/v1/buildlogs?id=105325&product_id=3420&checkout_label=master_distribution"
            loadJson(fromURLString: url) { data in
                switch data {
                case .success(let success):
                    let str = String(decoding: success, as: UTF8.self)
                    print(str)
                case .failure(let failure):
                    print(failure)
                }
            }*/
            startBuild(token: token)
//            getProductDetail(token: token)
        }*/
//        startBuild(token: "39MUFp-_BRsWNcnPncMs")
        
        func startBuild(token: String?) {
            let header = ["PRIVATE-TOKEN": token!]
            let param = ["id":"12109","product_id":"3212","checkout_label":"master_distribution"]
            let mainurl = "https://cmtools.csez.zohocorpin.com/api/v1/buildlogs"
            
            var urlComp = URLComponents(string: mainurl)
            var queryItems = [URLQueryItem]()
            
            for (key, value) in param {
                queryItems.append(URLQueryItem(name: key, value: value))
            }
            
            urlComp?.queryItems = queryItems
            
            var request = URLRequest(url: (urlComp?.url)!)
            request.httpMethod = "GET"

            for (key, value) in header {
                request.setValue(value, forHTTPHeaderField: key)
            }

            let task = URLSession.shared.dataTask(with: request) { (data, response, error) -> Void in
                if let data = data {
                    let str = String(decoding: data, as: UTF8.self)
                    print(str)
                }
            }
            task.resume()
        }
        
        func getProductDetail(token: String?) {
            let header = ["PRIVATE-TOKEN": token!]//3420
            let param = ["id":"105325"]//12109//105325
            let mainurl = "https://cmtools.csez.zohocorpin.com/api/v1/products"
            
            var urlComp = URLComponents(string: mainurl)
            var queryItems = [URLQueryItem]()
            
            for (key, value) in param {
                queryItems.append(URLQueryItem(name: key, value: value))
            }
            
            urlComp?.queryItems = queryItems
            
            var request = URLRequest(url: (urlComp?.url)!)
            request.httpMethod = "GET"

            for (key, value) in header {
                request.setValue(value, forHTTPHeaderField: key)
            }

            let task = URLSession.shared.dataTask(with: request) { (data, response, error) -> Void in
                if let data = data {
                    let str = String(decoding: data, as: UTF8.self)
                    print(str)
                }
            }
            task.resume()
        }
        //https://cmtools.csez.zohocorpin.com/api/v1/products?name=xxx&repository_url=http://build/xxx/xxxxx
        //https://cmtools.csez.zohocorpin.com/api/v1/products
        
        func loadJson(fromURLString urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
            if let url = URL(string: urlString) {
                let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                    if let error = error { completion(.failure(error)) }
                    if let data = data { completion(.success(data)) }
                }
                urlSession.resume()
            }
        }
    }
    
    func getCoreDataDBPath() {
        let path = FileManager
            .default
            .urls(for: .applicationSupportDirectory, in: .userDomainMask)
            .last?
            .absoluteString
            .replacingOccurrences(of: "file://", with: "")
            .removingPercentEncoding
        
        print("Core Data DB Path :: \(path ?? "Not found")")
    }
}

