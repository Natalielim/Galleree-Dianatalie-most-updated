//
//  ProfileViewController.swift
//  Galleree
//
//  Created by Natalie Lim on 8/3/16.
//  Copyright © 2016 Dianatalie. All rights reserved.
//

import UIKit

class Profile: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//commenting out all code for picking out profile image --> there is a static image view , same for all users
    
   /* @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        */
      /*  imageView.layer.borderWidth = 10
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.whiteColor().CGColor
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true*/
    }
    
  /*  let imagePicker = UIImagePickerController()
    
    // MARK: - Capture Image
    
    @IBAction func butLibraryAction(sender: AnyObject) {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        imagePicker.modalPresentationStyle = UIModalPresentationStyle.Popover
        imagePicker.popoverPresentationController?.sourceView = imageView
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func butPhotoAction(sender: AnyObject) {
    
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    // Mark: - Update Image View
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }*/

 /*   @IBOutlet weak var nameTextField: UITextField!
}*/

   