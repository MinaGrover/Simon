//
//  ViewController.swift
//  Simon
//
//  Created by Aamina Munzir on 8/21/18.
//  Copyright © 2018 Aamina Munzir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var topLeftImageView: UIImageView!       //green image == 1
    @IBOutlet weak var topRightImageView: UIImageView!      //red image == 2
    @IBOutlet weak var bottomLeftImageView: UIImageView!    //yellow image == 3
    @IBOutlet weak var bottomRightImageView: UIImageView!   //blue image == 4
    
    
    
    var sequence = Array<Int>()
    var userSequence = Array<Int>()
    
    var playMode = false
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func playButtonPressed(_ sender: UIButton)
    {
        titleLabel.text = "Ready?"
        //delay 1.5 sec (? subject to change)
        titleLabel.text = "Set?"
        //delay 1.5 sec (? subject to change)
        titleLabel.text = "GO!"
        //delay 1.5 sec (? subject to change)
        titleLabel.text = "Simon's turn!"
        playGame()
    }
    
    
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        
    }
    
    
    func playGame()
    {
        simonSaysTheThing()
        titleLabel.text = "Your turn!"
        userSequence = Array<Int>()
        playMode = true
        
    }
    
    
    func simonSaysTheThing()
    {
        for number in sequence
        {
            selectedAnimate() // give int
        }
    }
    
    
    func selectedAnimate() //takes int
    {
        
    }
    
    
    
    
    
    
    /*
     
     
     
     
     play button pressed
        "ready" ... "set" ... "go!"
        random 3 #s into sequence array
        playGame()
     
     
     
     playGame()
        simonSaysTheThing()
        "your turn!"
        clear userSequence
        CAN touch pics
        for length of array
            countdown 3 sec
            if an image is tapped
                add tapped image # to userSequence
                selectedAnimate(image #)
                if userSequence[length of userSequence] != sequence[length of userSequence]
                    fail()
            else if countdown is 0
                fail()
        add random next # to sequence
        can't touch pics
        playGame()
     
     
     
     simonSaysTheThing()
        for length of sequence array
            selectedAnimate(i)
     
     
     fail()
        "awe too bad!" ... "score: \(sequence length - 1)" ... "play again?"
        clear sequence
        clear userSequence
        can't touch pics
     
     
     selectedAnimate(int)
        change to light up pic
        play corosponding sound
        wait 0.5 sec
        change pic back
     
     
     
     */
    
    
    
    
    
}

