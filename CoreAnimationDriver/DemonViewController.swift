//
//  DemonViewController.swift
//  CoreAnimationDriver
//
//  Created by Zakk Hoyt on 3/20/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

import UIKit

class DemonViewController: UIViewController {

    @IBOutlet weak var demonView: DemonView!
    var player = AudioClipPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        demonView.addAmbientAnimation()
//        let player = AudioClipPlayer()
        player.playAudioFile("heartbeat")

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func biteButtonAction(sender: AnyObject) {
        demonView.removeAmbientAnimation()
        demonView.addBiteAnimation { (Bool completed) -> Void in
            if completed {
                self.demonView.addAmbientAnimation()
            }
//            let player = AudioClipPlayer()
            self.player.playAudioFile("growl_bite")
        }
    }
    @IBAction func walkButtonAction(sender: AnyObject) {
//        let player = AudioClipPlayer()
        player.playAudioFile("bite_apple")
        
    }
    @IBAction func jumpButtonAction(sender: AnyObject) {
        
//        let player = AudioClipPlayer()
        player.playAudioFile("chewing")
    }
}
