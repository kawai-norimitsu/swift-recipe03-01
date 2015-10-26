//
//  ViewController.swift
//  sample03-01
//
//  Created by 河合 徳光 on 2015/10/26.
//  Copyright © 2015年 norimitsu kawai. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSound(sender: AnyObject) {
        let soundURL = NSBundle.mainBundle().URLForResource("sound", withExtension: "mp3")
        do {
            player = try AVAudioPlayer(contentsOfURL: soundURL!)
            player?.play()
        } catch {
            print("error...")
        }
    }

}

