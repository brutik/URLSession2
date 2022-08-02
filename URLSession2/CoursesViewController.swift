//
//  CoursesViewController.swift
//  URLSession2
//
//  Created by Aleh Kuchynski on 25/07/2022.
//

import UIKit

class CoursesViewController: UITableViewController {
    
    @IBOutlet var tableViewCont: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    func fetchData() {
        
//        let jasonUrlString = "https://swiftbook.ru//wp-content/uploads/api/api_course"
//        let jasonUrlString = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
        let jasonUrlString = "https://swiftbook.ru//wp-content/uploads/api/api_website_description"
        
        guard let url = URL(string: jasonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
                
                print("\(websiteDescription.websiteName ?? "") \(websiteDescription.websiteDescription ?? "")")
                
            }catch let error{
                print("Eroor serialization json",error)
            }
            
        }.resume()
    }
}
    
    

