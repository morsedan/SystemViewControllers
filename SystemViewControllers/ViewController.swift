//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by morse on 10/6/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        
        let imageData = image.jpegData(compressionQuality: 0.1)
        guard let safeImageData = imageData else { return }
//        print(image)
        let activityController =
            UIActivityViewController(activityItems: [safeImageData],
        applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView
        = sender

        present(activityController, animated: true, completion: nil)
    }
    
//    @IBAction func shareButtonTapped(_ sender: UIButton) {
//
//        guard let image = imageView.image else { return }
//        print(image)
//
//        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
//        activityController.popoverPresentationController?.sourceView = sender
//
//        present(activityController, animated: true, completion: nil)
//    }
    
    @IBAction func safariButtonTapped(_ sender: Any) {
    }
    
    @IBAction func photosButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
//        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (<#UIAlertAction#>) in
//            <#code#>
//        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        alertController.popoverPresentationController?.sourceView = sender
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func emailButtonTapped(_ sender: Any) {
    }
    
    
}

