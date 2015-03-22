//
//  PeckHelpViewController.swift
//  CoreAnimationDriver
//
//  Created by Zakk Hoyt on 3/20/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

import UIKit

class PeckHelpViewController: UIViewController {

    @IBOutlet weak var peckHelpView: PeckHelpShortView!
    var player = AudioClipPlayer()
    
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
        peckHelpView.addBirdsLandAnimation()
        self.player.playAudioFile("robin")
    }
    
    @IBAction func closeButtonAction(sender: AnyObject) {
        peckHelpView.addBirdsDepartAnimation()
    }
}
