//
//  RegisterPageViewController.swift
//  UserLogin
//
//  Created by Bryan Posso on 3/11/16.
//  Copyright © 2016 Bryan Posso. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    
    @IBOutlet weak var userUsernameTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userUsername =       userUsernameTextField.text;
        let userEmail =          userEmailTextField.text;
        let userPassword =       userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        
    //Check for empty fields
    if (userUsername!.isEmpty || userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty)
    {
        //Display alert message
        displayMyAlertMessage("All fields are required");
        return;
    }
    
    //Check if password match
     if(userPassword != userRepeatPassword)
     {
        //Display alert message
        displayMyAlertMessage("Passwords do not match");
        return;
     }
        
    
        
        
        //Send user data to server side
        
        
        
        
        
        
        
        
    //Store Data: storing locally
        
        NSUserDefaults.standardUserDefaults().setObject(userUsername, forKey: "userUsername");
        
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail");
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword");
        NSUserDefaults.standardUserDefaults().synchronize();
        
    //
    
    //Display alert message with confirmation
    let myAlert = UIAlertController(title: "Alert", message: "Registration is successful, Thank you!", preferredStyle: UIAlertControllerStyle.Alert);
        
    let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.Default){ action in
        self.dismissViewControllerAnimated(true, completion: nil);
            
        }
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated: true, completion: nil);
         
    //
        
        
        
        
        
    }

    
    
    
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion:nil);
    }
    


}
