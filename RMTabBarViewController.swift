//
//  ViewController.swift
//  YOUR JOKER
//
//  Created by Sumayyah AHmad on 16/12/1444 AH.
//

import UIKit
import MapKit
import ImageCaptureCore
import CoreAudio
import SwiftUI

final class RMTabBarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        view.backgroundColor = .darkText
        
        
        
        func setupTabs(){
            
            setapTabs()
        }
         func setapTabs() {
               let locationVC = RMLocationViewController()
               let caputreVC  = AVCaptureSessionViewController()
               let recorderVC = AVAoudioRecorderViewController()
               let AlarmVC    = AlarmViewController()
               
               locationVC.navigationItem.largeTitleDisplayMode = .automatic
               caputreVC.navigationItem.largeTitleDisplayMode = .automatic
               recorderVC.navigationItem.largeTitleDisplayMode = .automatic
             AlarmVC.navigationItem.largeTitleDisplayMode  =  .automatic
               
               
               
               
               let nav1 = UINavigationController(rootViewController: locationVC)
               let nav2 = UINavigationController(rootViewController: caputreVC)
               let nav3 = UINavigationController(rootViewController: recorderVC)
               let Nav4 = UINavigationController(rootViewController: AlarmVC)
               
        nav1.tabBarItem = UITabBarItem(title: "location", image: UIImage(systemName: "location"), tag:1 )
        nav2.tabBarItem = UITabBarItem(title: "caputre", image: UIImage(systemName: "camera"), tag:2 )
        nav3.tabBarItem = UITabBarItem(title: "recorder", image: UIImage(systemName: "recordingtape.circle.fill"), tag:3 )
             Nav4.tabBarItem = UITabBarItem(title: "alarm", image: UIImage(systemName: "alarm"), tag: 4)
               
               
               
             
           
                     
             
               for nav in [nav1, nav2, nav3, Nav4] {
                   nav.navigationBar.prefersLargeTitles = true
                   
               }
         
                  
               
               
               
               
               
               
               
               
               
               
               
               
           }
       }
   }

                    
                    
                
                
      
                    
     
                  
                
                       
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        

func viewWillAppear(_ animated: Bool) {
        print(" viewWillAppear")
    }
    
    
func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
weak var imageView: UIImageView!
weak var lable: UIImageView!
func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
func btCamera(_ sender: Any) {
    }
func btLocation(_ sender: Any) {
    }
func btRecorder(_ sender: Any) {
    }
func btAarm(_ sender: Any) {
        
        
        
        
        
        

    }

