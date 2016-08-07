//
//  AddPostTableViewController.swift
//  Galleree
//
//  Created by Natalie Lim on 7/28/16.
//  Copyright © 2016 Dianatalie. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {

    var image: UIImage?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var captionTextView: UITextView!

    
    @IBAction func addPostTapped(sender: AnyObject) {
        
        if let image = image,
            let caption = captionTextView.text,
            let title = titleTextField.text {
            
            PostController.sharedController.createPost(image, caption:  caption, completion: {
                
            self.dismissViewControllerAnimated(true, completion: nil)
        
                })
            
        } else {
            
            let alertController = UIAlertController(title: "Missing Information", message: "Check your title, image, and description and try again.", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
            
            presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonTapped(sender: AnyObject) {
    
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "embedPhotoSelect" {
            
            let embedViewController = segue.destinationViewController as? PhotoSelectViewController
            embedViewController?.delegate = self
        }
    }
}

extension AddPostTableViewController: PhotoSelectViewControllerDelegate {
    
    func photoSelectViewControllerSelected(image: UIImage) {
        
        self.image = image
    }
}