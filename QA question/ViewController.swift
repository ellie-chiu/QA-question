//
//  ViewController.swift
//  QA question
//
//  Created by TINA on 2021/1/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionSlider: UISlider!
    @IBOutlet weak var number: UILabel!
    
    
    var questions = [Question] ()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let question1 = Question(description: "你知道船速單位嗎？", answer: "節 Knot (Kn)")
        questions.append(question1)
        
        let questions2 = Question(description: "你喜歡內艙房,海景房,陽台房？", answer: "陽台房")
        questions.append(questions2)
        
        let question3 = Question(description: "你知道船的內裝偏好什麼顏色嗎？", answer: "暖色調")
        questions.append(question3)
        
        let question4 = Question(description: "船底漆的作用？", answer: "避免微生物附著")
        questions.append(question4)
        
        let question5 = Question(description: "你知道船名喜歡用偏女性名？", answer: "這..我就不知道了")
        questions.append(question5)
        
        questionLabel.text = questions[index].description
        answerLabel.text = ""
        
        questionSlider.setThumbImage(UIImage(named: "boat"), for: .normal)
    }

    @IBAction func nextquestion(_ sender: UIButton) {
        if index < questions.count - 1 {
            index = index + 1
            questionLabel.text = questions[index].description
            answerLabel.text = ""
            number.text = "\(index+1)/5"
            questionSlider.value = Float(index)
    }
}
    
    @IBAction func showanswer(_ sender: UIButton) {
        answerLabel.text = questions[index].answer
    }
}

