//
//  main.swift
//  RockPaperScissors
//
//  Created by agreyson on 8/26/19.
//  Copyright © 2019 agreyson. All rights reserved.
//

import Foundation

class RockPaperScissorsGame {
    var wins: Int
    
    init(){
        wins = 0
    }
    
    func play() {
        var goAgain = "Y"
        let choices = ["rock", "paper", "scissors"]
        print("Let's play Rock-Paper-Scissors!")
        while goAgain == "Y" {
            let computerChoice = choices.randomElement()
            print("Enter rock, paper, or scissors: [computer: \(computerChoice!)]")
            if let userChoice = readLine(){
                print("You chose \(userChoice) and computer chose \(computerChoice!).")
                if userChoice == computerChoice {
                    print("It's a tie!")
                } else if (userChoice == "rock" && computerChoice == "scissors") ||
                          (userChoice == "paper" && computerChoice == "rock") ||
                          (userChoice == "scissors" && computerChoice == "paper"){
                    wins += 1
                    print("You win! You've won \(wins) games so far.")
                } else if (userChoice == "rock" && computerChoice == "paper") ||
                          (userChoice == "paper" && computerChoice == "scissors") ||
                          (userChoice == "scissors" && computerChoice == "rock"){
                    print("You lose!")
                } else {
                    print("Your entry was invalid.")
                }
                print("Enter Y to play again.")
                goAgain = readLine()!
            }
        }
        print("Good-bye!")
    }
}

RockPaperScissorsGame().play()
