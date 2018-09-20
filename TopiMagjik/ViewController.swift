//
//  ViewController.swift
//  TopiMagjik
//
//  Created by Hektor Kastrati on 9/20/18.
//  Copyright © 2018 Hektor Kastrati. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var foto: UIImageView!
    let fotoHyrese:[String] = ["topi1", "topi2", "topi3", "topi4", "topi5"]
    var audioPlayer:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnLuaj(_ sender: Any) {
        
        let randomNumber:Int = Int(arc4random_uniform(UInt32(fotoHyrese.count)))
        
        let fotoH:String = fotoHyrese[randomNumber]
        
        foto.image = UIImage.init(named: fotoH)
        
        var audioFileLocation:URL = Bundle.main.url(forResource: "pergjigja", withExtension: "wav")!
        
        audioPlayer = try! AVAudioPlayer(contentsOf: audioFileLocation)
        
        audioPlayer.play()
        
    }
    

}

