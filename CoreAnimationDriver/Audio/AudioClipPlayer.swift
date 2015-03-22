//
//  AudioClipPlayer.swift
//  CoreAnimationDriver
//
//  Created by Zakk Hoyt on 3/21/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//
//  Audio file resources:
//  http://answers.unity3d.com/questions/7743/where-can-i-find-music-or-sound-effects-for-my-gam.html
//  http://soundbible.com
//
//
//


import UIKit
import AVFoundation

class AudioClipPlayer: NSObject {
    var theAudio: AVAudioPlayer! = nil

    class func playFile(file:String) -> AudioClipPlayer{
        let player = AudioClipPlayer()
        player.playAudioFile(file)
        return player
    }
    
    deinit{
        println("Audio player has been deinitialized")
    }
    
    func playAudioFile(file:String) {
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "mp3")
        let url = NSURL(fileURLWithPath: path!)
        theAudio = AVAudioPlayer(contentsOfURL: url, error: nil)
        theAudio.volume = 1.0
        theAudio.delegate = self
        theAudio.prepareToPlay()
        theAudio.play()
    }
    
//    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
//        println("Finished playing audio file")
//        theAudio = nil;
//    }
//    
//    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
//        println("A decode error occured while playing audio file");
//    }

}


extension AudioClipPlayer: AVAudioPlayerDelegate{
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        println("Finished playing audio file")
        theAudio = nil;
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        println("A decode error occured while playing audio file");
    }
   
}