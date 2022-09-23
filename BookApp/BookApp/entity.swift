//
//  Book.swift
//  BookApp
//
//  Created by Furkan Ademoğlu on 22.09.2022.
//

import Foundation

struct Book {
    let id:Int
    let bookName:String
    let author:String
    let price:Int
    var count:Int
    
    mutating func decreaseCount()
      {
          self.count -= 1 
      }
}

struct User{
    let username:String?
    let number:String?
}
