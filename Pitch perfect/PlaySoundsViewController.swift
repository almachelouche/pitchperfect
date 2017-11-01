//
//  PlaySoundsViewController.swift
//  Pitch perfect
//
//  Created by Alma Chelouche on 10/28/17.
//  Copyright © 2017 Alma Chelouche. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {
   

    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var dartVadorButton: UIButton!
    @IBOutlet weak var birdButton: UIButton!
    @IBOutlet weak var soundWavesButton: UIButton!
    @IBOutlet weak var StopButton: UIButton!
    
    var recordAudioURL : URL!
    
    @IBAction func playSoundForButton(_sender: UIButton){
        print("Play sound button pressed")
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
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
