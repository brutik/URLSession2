//
//  ViewController.swift
//  URLSession2
//
//  Created by Aleh Kuchynski on 19/07/2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func getRequest(_ sender: Any) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let response = response else { return }
        }
    }
    
    @IBAction func postRequest(_ sender: Any) {
    }
    
}

