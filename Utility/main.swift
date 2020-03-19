//
//  main.swift
//  Utility
//
//  Created by admin on 13/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

print("Hello, World!")


/*struct User1 {
    var name: String
    var username: String
    var phoneNumber: String
}
struct User2: Codable {
    var name: String
    var username: String
    var phoneNumber: String
}*/
struct Device: Codable
{
    var name: String
    var manufacturer: String
}

struct User: Encodable
{
    var name: String
    var username: String
    var phoneNumber: String
    var devices: [Device]
    
    enum CodingKeys: String, CodingKey {
        case name
        case username
        case phoneNumber = "phone_number"
        case devices
    }
}
func decode(data: Data) throws -> User? {
    do {
        let decoder = JSONDecoder()
        let user = try decoder.decode(User.self, from: data)
        return user
    } catch let error {
        print(error)
        return nil
    }
}

func encode(user: User) -> Data? {
    do {
        let encoder = JSONEncoder()
        let data = try encoder.encode(user)
        return data
    } catch let error {
        print(error)
        return nil
    }
}

func loadUser() -> User? {
    guard let fileURL = Bundle.main.url(forResource: "user", withExtension: "json") else {
        print("couldn't find the file")
        return nil
    }
    
    do {
        let content = try Data(contentsOf: fileURL)
        let user = try decode(data: content)
        return user

    } catch let error {
        print(error)
        return nil
    }
}


// We can decode a User from a json document
if let user = loadUser() {
    print(user.name)
    
    for device in user.devices
    {
        print(device.name)
    }
    
    // We can encode the user
    if let data = encode(user: user) {
        print(data)
    }
}
