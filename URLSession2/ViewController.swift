//
//  ViewController.swift
//  URLSession2
//
//  Created by Aleh Kuchynski on 23/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func getRecuest(_ sender: Any) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let response = response,
            let data = data
            else { return }
            print(response)
            print(data)
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }catch{
                print(error)
            }
        }.resume()
       }
    
    @IBAction func postRecuest(_ sender: Any) {
        
    }
    
}
