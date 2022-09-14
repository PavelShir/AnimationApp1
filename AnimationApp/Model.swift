//
//  Model.swift
//  AnimationApp
//
//  Created by 19543442 on 14.09.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Foundation

struct AnimatingTypes {
    
    let preset: String
    let curve: String
    let force: String
    let duration: String
    let delay: String

}

extension AnimatingTypes {

    static func getAnimationSetup() -> [AnimatingTypes] {
            
            var persons = [Person]()
            let data = DataManager()
            
            let namesShuffled = data.names.shuffled()
            let surnameShuffled = data.surnames.shuffled()
            let phonesShuffled = data.phoneNambers.shuffled()
            let emailsShuffled = data.emails.shuffled()
            
            for index in 0..<data.names.count {
            
                persons.append(Person(
                    name: namesShuffled[index],
                    surname: surnameShuffled[index],
                    phoneNumber: phonesShuffled[index],
                    email: emailsShuffled[index]))
            }
         return persons
        }
