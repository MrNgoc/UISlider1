//
//  ViewController.swift
//  UISlider1
//
//  Created by Admin on 5/31/16.
//  Copyright © 2016 MrNgoc. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var bt_Play: UIButton!
    var audio = AVAudioPlayer()
    var check: Int!
    
    @IBOutlet weak var slider_Volume: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        check = 0
        audio = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath :NSBundle.mainBundle().pathForResource("music", ofType: ".mp3")!))
        audio.prepareToPlay()
        addThumImgForSlider()
    }
    
    
    func addThumImgForSlider() {
        slider_Volume.setThumbImage(UIImage(named:"thumb.png"), forState: .Normal)
        slider_Volume.setThumbImage(UIImage(named:"thumbHightLight.png"), forState: .Highlighted)
    }
    @IBAction func action_Play(sender: AnyObject) {
        
        if check == 0 {
            audio.play()
            bt_Play.setImage(UIImage(named:"pause.png"), forState: .Normal)
            check = 1
            
        } else {
        audio.pause()
            bt_Play.setImage(UIImage(named:"play.png"), forState: .Normal)
            
        check = 0
    }
    }
    @IBAction func Slider(sender: UISlider) {
        audio.volume = sender.value
    }
 


}