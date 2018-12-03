//
//  ViewController.swift
//  PaceBot
//
//  Created by Alec Rodgers on 12/1/18.
//  Copyright © 2018 Alec Rodgers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapStartButton(_ sender: Any) {
        
        let url = URL(string: "http://127.0.0.1:5000/start")!
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                print(error.debugDescription)
                return
            }
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            if let responseString = responseString {
                print(responseString)
            }
        }
        task.resume()
    }
    
    @IBAction func didTapStopButton(_ sender: Any) {
        let url = URL(string: "http://127.0.0.1:5000/stop")!
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                print(error.debugDescription)
                return
            }
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            if let responseString = responseString {
                print(responseString)
            }
        }
        task.resume()
    }
}

