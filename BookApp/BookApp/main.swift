//
//  main.swift
//  BookApp
//
//  Created by Furkan Ademoğlu on 22.09.2022.
//

import Foundation


print("Enter register for register.")
print("Enter login for login.")
print("Enter username for login.")
print("Enter list for listing books")
print("Enter buy for buy the book.")
print("Enter quit for quit.")

var books = [Book]()
var users = [User]()

books.append(Book(id: 1, bookName: "Nations Fall", author: "Daron Acemoglu", price: 10,count: 10))
users.append(User(username: "FurkanAdemoglu", number: "11111"))

while let input = readLine() {
    guard input != "quit" else {
        print("Thank you for visiting app. See you next time ....")
        break
    }
    
   
    
    switch input{
    case "list": listBooks()
    case "register": register()
    case "buy": buyBook()
    case "login": login()
    default: print("You entered wrong command!")
    }
    
    
}

func validUsername(username:String) -> Bool{
    if username=="FurkanAdemoglu"{
        return true
    }else{
        return false
    }
}

func listBooks(){
    for book in books{
        print("\(book.bookName) \(book.author) \(book.price)")
    }

}

func register(){
    print("Please enter username")
    guard let username=readLine() else { return }
    
    print("Please enter number")
    guard let number = readLine() else { return }
    
    users.append(User(username: username, number: number))
    print("Registered Successfully :)")
}

func buyBook(){
    print("Enter book id which is you want")
    if let bookId = readLine() {
      if let num = Int(bookId) {
          
          var filteredBook = books.filter{ book in
              book.id == num
          }
          if filteredBook.isEmpty{
              print("There is no books with this Id.")
          }else{
              filteredBook[0].decreaseCount()
              print("You buy the book successfully. Have a nice readings....")
          }
      }
    }
}

func login(){
    print("Enter username for login...")
    if let username = readLine(){
        let usernameValid=validUsername(username: username)
        if usernameValid == true{
            print("Welcome Book Store")
            listBooks()
        }else{
            print("Check username")
        }
    }
    
}

