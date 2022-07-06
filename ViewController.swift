//
//  ViewController.swift
//  AroomMobile
//
//  Created by Morita Keiji on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
    }
    
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "classroom",
                                          ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        
        var result: Result?
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
            
            if let result = result {
                print(result)
            } else {
                print("failed to parse")
            }
            return
        }
        catch {
            print("Error: (error)")
        }
    }

}

struct Result: Codable{
    let data: [ResultItem]
}

struct ResultItem: Codable{
    let whichday: String
    let when: [String]
    let rooms: [String]
}
