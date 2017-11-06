//
//  PlaySoundsViewController.swift
//  Pitch perfect
//
//  Created by Alma Chelouche on 10/28/17.
//  Copyright © 2017 Alma Chelouche. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
  
    var recordAudioURL : URL!

    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var dartVadorButton: UIButton!
    @IBOutlet weak var birdButton: UIButton!
    @IBOutlet weak var soundWavesButton: UIButton!
    @IBOutlet weak var StopButton: UIButton!
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb}
    
    @IBAction func playSoundForButton(_ sender: UIButton){
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    @IBAction func stopButtonPressed (_sender: UIButton){
        print("stop audio button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        snailButton.contentMode = .center
        snailButton.imageView?.contentMode = .scaleAspectFit
        rabbitButton.contentMode = .center
        rabbitButton.imageView?.contentMode = .scaleAspectFit
        chipmunkButton.contentMode = .center
        chipmunkButton.imageView?.contentMode = .scaleAspectFit
        dartVadorButton.contentMode = .center
        dartVadorButton.imageView?.contentMode = .scaleAspectFit
        birdButton.contentMode = .center
        birdButton.imageView?.contentMode = .scaleAspectFit
        soundWavesButton.contentMode = .center
        soundWavesButton.imageView?.contentMode = .scaleAspectFit
        StopButton.contentMode = .center
        StopButton.imageView?.contentMode = .scaleAspectFit
        setupAudio()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    
}
