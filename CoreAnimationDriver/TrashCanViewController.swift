//
//  TrashCanViewController.swift
//  CoreAnimationDriver
//
//  Created by Zakk Hoyt on 3/20/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

import UIKit


class TrashCanViewController: UIViewController {
    var player = AudioClipPlayer()
    @IBOutlet weak var trashCanView: TrashCanView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func openButtonAction(sender: AnyObject) {
        trashCanView.addOpenLidAnimation()
        self.player.playAudioFile("robin")
    }
    
    @IBAction func closeButtonAction(sender: AnyObject) {
        trashCanView.removeCloseLidAnimation()  
    }
    
    
    
}
