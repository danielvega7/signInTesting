//
//  ViewController.swift
//  signInTesting
//
//  Created by DANIEL VEGA on 9/12/22.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseAuthCombineSwift
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButtonAction(_ sender: UIButton) {
        GIDSignIn.sharedInstance.signIn(
           with: signInConfig,
           presenting: self
       ) { user, error in
           guard error == nil else { return }
           guard let user = user else { return }

           // Your user is signed in!
       }
    }
    
    
    
    /*guard let clientID = FirebaseApp.app()?.options.clientID else { return }

    // Create Google Sign In configuration object.
    let config = GIDConfiguration(clientID: clientID)

    // Start the sign in flow!
    GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in

      if let error = error {
        // ...
        return
      }

      guard
        let authentication = user?.authentication,
        let idToken = authentication.idToken
      else {
        return
      }

      let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                     accessToken: authentication.accessToken)

      // ...
    }
    */
}

