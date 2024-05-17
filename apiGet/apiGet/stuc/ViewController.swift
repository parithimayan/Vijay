//
//  ViewController.swift
//  apiGet
//
//  Created by ilamparithi mayan on 03/05/24.
//

import UIKit

class ViewController: UIViewController {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return json?.count ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "nakku", for: indexPath) as! taskTableViewCell
//        cell.label1.text = json?.te
//
//        return cell
//    }
    
    var json: WelcomeElement?
    
    @IBOutlet weak var Tblvw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        call()
        // Do any additional setup after loading the view.
    }

    
    func call(){
        
        let url = URL(string: "https://api.github.com/users/hadley/orgsd")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
                        print("response --> \(response!)")
            let decode = JSONDecoder()
            do{
                let result = try decode.decode(WelcomeElement.self, from: data!)
                DispatchQueue.main.async {
                    self.json = result
                }
            
            }catch{
                print(error)
            }
        }.resume()
        
        
    }
        
    
        

    
    
}

