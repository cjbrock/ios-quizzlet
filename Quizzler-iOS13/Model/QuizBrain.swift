//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Corinna Moore on 5/30/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "In The Little Mermaid, Ariel almost had a dolphin sidekick, instead of Flounder.", a: "True"),
        Question(q: "Mickey Mouse was almost named Marty.", a: "False"),
        Question(q: "In Peter Pan, Nana originally was going to go with the kids to Neverland.", a: "True"),
        Question(q: "In Beauty and the Beast, Belle is the only one in her village that wears blue.", a: "True"),
        Question(q: "In Alice in Wonderland, the White Rabbit's watch always reads 12:00.", a: "False"),
        Question(q: "In Sleeping Beauty, Aurora is only onscreen for 18 minutes.", a: "True"),
        Question(q: "Cinderella was the first-ever Disney princess", a: "False"),
        Question(q: "In 'Snow White and the Seven Dwarfs,' the Evil Queen recites the line, 'Magic mirror on the wall, who is the fairest one of all?'", a: "True"),
        Question(q: "The name of Princess Jasmine's tiger is Rajah.", a: "True"),
        Question(q: "Released in 1991, 'Beauty and the Beast' was the last Disney movie that Walt Disney oversaw.", a: "False"),
        Question(q: "The three fairies in 'Sleeping Beauty' are known as Flora, Fauna, and Fiona.", a: "False"),
        Question(q: "The title character of every single Disney film ever produced has had spoken lines.", a: "False")
    ]
    
    var qn = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[qn].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
       return quiz[qn].text
    }
    
    func getProgress() -> Float {
        return Float(qn + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        let ql = quiz.count-1
        
        if qn >= ql {
            qn = 0
            score = 0
        } else {
            qn += 1
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
