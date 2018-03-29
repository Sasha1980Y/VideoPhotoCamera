//
//  ViewController.swift
//  VideoPhotoCamera
//
//  Created by Alexander Yakovenko on 3/29/18.
//  Copyright © 2018 Alexander Yakovenko. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    
    //
    var playerView = AVPlayer()
    var playerController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //playVideo()
        
        
        /*
        guard let url = URL(string: "https://www.youtube.com/watch?v=_qCrK6ppQZ4") else {
            return
        }
        let player = AVPlayer(url: url)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        viewForPlayer.layer.addSublayer(playerLayer)
        player.play()
        */
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(_ sender: Any) {
        playVideo()
    }
    

    func playVideo() {
        
        // https://drive.google.com/open?id=12Xx9n8FKqUtYhTXAYybaIclfQ1ZkKZF3
        
        let videoURL = URL(string: "https://drive.google.com/open?id=12Xx9n8FKqUtYhTXAYybaIclfQ1ZkKZF3")
        
        var myUrl = "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v"
        myUrl = myUrl.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)!
        
        let url = URL(string: myUrl)
        
        playerView = AVPlayer(url: url! as URL)
        
        playerController.player = playerView
        
        self.present(playerController, animated: true) {
            self.playerController.player?.play()
        }
        
        //self.addChildViewController(playerController)
        
        //**Add your view Frame**
        //playerController.view.frame = viewForPlayer.frame
        playerController.view.frame = view.bounds
        
        //**Add sub view in your view**
        view.addSubview(playerController.view)
        
        //player.play()
    }
    


}

