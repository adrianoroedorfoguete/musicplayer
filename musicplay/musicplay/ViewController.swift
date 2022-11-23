//
//  ViewController.swift
//  musicplay
//
//  Created by ICMMAC03-BEBA on 23/11/22.
//
import AVFoundation
import UIKit

class ViewController: UIViewController{
    @IBOutlet var play:UIButton!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func apertar(_ sender: Any) {
        print("Ok")
        if let player = player , player.isPlaying{
            print("tocar")
            play.setTitle("play", for: .normal)
            player.stop()
        }else{
            print("nao tocar")
            // set up player, and play
            
            play.setTitle("stop", for: .normal)
            let urlString = Bundle.main.path(forResource: "66-clipe-oficial", ofType: "mp3")
            
            
            do{
                
                
                
                
                
                try     AVAudioSession.sharedInstance().setMode(.default)
                
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                guard let urlString = urlString  else{
                    return
                }
                
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
             
                guard let player = player else{
                    return
                }
                player.play()
            }
            catch{
                print("something went wrong")
            }
        }
           
    }
    
    
    
}


