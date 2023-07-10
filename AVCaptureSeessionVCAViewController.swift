//
//  AVCaptureViewController.swift
//  YOUR JOKER
//
//  Created by Sumayyah AHmad on 16/12/1444 AH.
//

import UIKit

class AVCaptureSessionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        class ViewController: UIViewController {
            
            
            class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
                let imagePicker = UIImagePickerController()
                @IBOutlet weak var imageViewer: UIImageView!
                override func viewDidLoad() {
                    super.viewDidLoad()
                    // Do any additional setup after loading the view, typically from a nib.
                }
                override func didReceiveMemoryWarning() {
                    super.didReceiveMemoryWarning()
                    // Dispose of any resources that can be recreated.
                }
                func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
                   imageViewer.image = image
                }
                @IBAction func presentImagePicker(sender: AnyObject) {
                    
                    if UIImagePickerController.isCameraDeviceAvailable( UIImagePickerController.CameraDevice.front) {
                        
                        imagePicker.delegate = self
                        imagePicker.sourceType = UIImagePickerController.SourceType.camera
                      
                        
                    }
                }
                
                
                
                
                
                
                
                
                
                
            }
        }
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    }
}
