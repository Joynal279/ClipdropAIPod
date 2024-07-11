//
//  ViewController.swift
//  ClipdropAIPod
//
//  Created by joynalcu7@gmail.com on 07/10/2024.
//  Copyright (c) 2024 joynalcu7@gmail.com. All rights reserved.
//

import UIKit
import ClipdropAIPod

class ViewController: UIViewController {
    
    private var apiKey: String = "YOUR_API_KEY_HERE"
    private var processedImage: UIImage?
    private var originalImage: UIImage?
    private var maskImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let frameworkBundle = Bundle(for: ClipDrop.self)
//        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
//        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
//        let image = UIImage(named: "worldIcon.png", in: resourcesBundle, compatibleWith: nil)
//        print(image)
        
        /// - `getCleanUpImage()`
        /// - `getInPaintingImage()`
        /// - `getReImagineImage()`
        /// - `getRemoveBgImage()`
        /// - `getRemoveTextImage()`
        /// - `getReplaceBgImage()`
        /// - `getSketchToImage()`
        /// - `getTextToImage()`
        /// - `getUnCropImage()`
        /// - `getUpScaleImage()`
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//MARK: - CLEAN UP IMAGE
extension ViewController {
    private func getCleanUpImage(){
        if let originalImage = originalImage, let maskImage = maskImage {
            ClipDrop.shared.cleanUpImageRequest(
                apiKey: apiKey,
                image: originalImage,
                mask: maskImage)
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - IN PAINTING IMAGE
extension ViewController {
    private func getInPaintingImage(){
        if let originalImage = originalImage, let maskImage = maskImage {
            ClipDrop.shared.paintImageRequest(
                apiKey: apiKey,
                image: originalImage,
                mask: maskImage,
                text: "A woman with a blue color shari")
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - RE-IMAGINE IMAGE
extension ViewController {
    private func getReImagineImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.reImagineImage(
                apiKey: apiKey,
                image: originalImage)
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - REMOVE BACKGROUND IMAGE
extension ViewController {
    private func getRemoveBgImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.removeBGRequest(
                apiKey: apiKey,
                image: originalImage)
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - REMOVE TEXT IMAGE
extension ViewController {
    private func getRemoveTextImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.removeBGRequest(
                apiKey: apiKey,
                image: originalImage)
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - REPLACE BACKGROUND IMAGE
extension ViewController {
    private func getReplaceBgImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.replaceBGRequest(
                apiKey: apiKey,
                image: originalImage,
                text: "YOUR_PROMPT_HERE")
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - SKETCH TO IMAGE
extension ViewController {
    private func getSketchToImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.sketchToImageRequest(
                apiKey: apiKey,
                image: originalImage,
                text: "YOUR_PROMPT_HERE")
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - TEXT TO IMAGE
extension ViewController {
    private func getTextToImage(){
        ClipDrop.shared.textToImageRequest(
            apiKey: apiKey,
            text: "YOUR_PROMPT_HERE")
        { success, message, imageData in
            if success { self.processedImage = imageData }
            else{ print(message as Any) }
        }
    }
}

//MARK: - UN-CROP IMAGE
extension ViewController {
    private func getUnCropImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.unCropImageRequest(
                apiKey: apiKey,
                image: originalImage)
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

//MARK: - UP-SCALLING IMAGE
extension ViewController {
    private func getUpScaleImage(){
        if let originalImage = originalImage {
            ClipDrop.shared.upScallingImageRequest(
                apiKey: apiKey,
                image: originalImage,
                width: "50",
                height: "50")
            { success, message, imageData in
                if success { self.processedImage = imageData }
                else{ print(message as Any) }
            }
        }
    }
}

