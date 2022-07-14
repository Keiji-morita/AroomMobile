//
//  data.swift
//  AroomMobile
//
//  Created by Morita Keiji on 2022/07/12.
//

import Foundation


let classesJson = """
{
"classes": [
  
  "monday": {

      "class1" : [
        "B-102",
        "G-103",
        "G-205",
        "G-223",
        "G-226",
        "G-307",
        "G-308",
        "G-309",
        "H-201",
        "H-303",
        "4別-401",
        "4別-402",
        "4別-403",
        "5別-308",
        "MR-201",
        "MR-202",
        "MR-203",
        "院1-102",
        "院1-205",
        "院1-207",
        "院1-208"
        ]
      
      
      "class2": [
        "H-303",
        "H-305",
        "4別-401",
        "4別-403",
        "5別-307",
        "MR-201",
        "院1-102",
        "院1-205",
        "院1-207"
         ]
      
      "class3": ["B-102", "4別-402", "院1-102", "院1-207"],
      
      "class4": [
        "G-107",
        "G-203",
        "G-206",
        "G-209",
        "G-307",
        "H-303",
        "5別-307",
        "MR-201",
        "院1-102",
        "院1-205",
        "院1-207"
       ]
      
       "class5": [
        "B-102",
        "B-201",
        "B-303",
        "G-103",
        "G-104",
        "G-105",
        "G-203",
        "G-206",
        "G-222",
        "G-223",
        "G-307",
        "G-308",
        "G-309",
        "H-303",
        "H-305",
        "5別-5",
        "5別-307",
        "5別-308",
        "MR-201",
        "MR-202",
        "MR-203",
        "院1-205",
        "院1-207",
        "院1-208"
       ]
      
    }
  
  
  "tuesday": {},
  
  "wednesday": {},
  
  "thurseday": {},
  
  "fryday": {},
]
}
""".data(using: .utf8)!



struct classes: Codable {
    let monday: [Monday]
    
    struct Monday: Codable {
        let class1 : String
        let class2 : String
        let class3 : String
        let class4 : String
        let class5 : String
    }
}


let decoder: JSONDecoder = JSONDecoder()

//do {
//    let classes: classes = try decoder.decode(classes.self, from: classesJson)
//    print(classes)
//} catch {
//    print("error:", error.localizedDescription)
//}
