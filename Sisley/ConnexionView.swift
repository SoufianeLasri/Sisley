//
//  ConnexionView.swift
//  Sisley
//
//  Created by Soufiane Lasri on 04/01/2016.
//  Copyright © 2016 Soufiane Lasri. All rights reserved.
//

import UIKit

class ConnexionController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor( red: 1.0, green: 0.98, blue: 0.96, alpha: 1.0 )
        
        let title = CustomTitle( frame: CGRect( x: 0, y: 30, width: self.view.frame.width, height: 30 ), color: UIColor( red: 0.36, green: 0.37, blue: 0.53, alpha: 1.0 ) )
        title.text = "Connexion"
        title.font = UIFont( name: "Santana", size: 20.0 )
        title.textAlignment = .Center
        title.textColor = UIColor( red: 0.46, green: 0.51, blue: 0.66, alpha: 1.0 )
        self.view.addSubview( title )
        
        let imageView = UIImageView( frame: CGRect( x: 0, y: 155, width: 100, height: 100 ) )
        imageView.image = UIImage( named: "sisleyLogo.png" )
        imageView.center.x = self.view.center.x
        self.view.addSubview( imageView )
        
        let appName = UILabel( frame: CGRect( x: 0, y: 260, width: self.view.frame.width, height: 40 ) )
        appName.text = "L'O de Sisley"
        appName.font = UIFont( name: "Bellota", size: 25.0 )
        appName.textAlignment = .Center
        appName.textColor = UIColor( red: 0.89, green: 0.81, blue: 0.47, alpha: 1.0 )
        self.view.addSubview( appName )

        let mailLabel = UILabel( frame: CGRect( x: 60, y: 330, width: self.view.frame.width, height: 30 ) )
        mailLabel.text = "soufiane.lasri@gmail.com"
        mailLabel.font = UIFont( name: "Bellota-Regular", size: 16.0 )
        mailLabel.textColor = UIColor( red: 0.36, green: 0.37, blue: 0.54, alpha: 1.0 )
        self.view.addSubview( mailLabel )
        
        let firstLinePath = UIBezierPath()
        firstLinePath.moveToPoint( CGPoint( x: 60, y: 370 ) )
        firstLinePath.addLineToPoint( CGPoint( x: self.view.frame.width - 60, y: 370 ) )
        
        let firstLine = CAShapeLayer()
        firstLine.path = firstLinePath.CGPath
        firstLine.lineWidth = 1.0
        firstLine.lineCap = kCALineJoinRound
        firstLine.strokeColor = UIColor( red: 0.36, green: 0.37, blue: 0.54, alpha: 1.0 ).CGColor
        self.view.layer.addSublayer( firstLine )
        
        let passwordLabel = UILabel( frame: CGRect( x: 60, y: 385, width: self.view.frame.width, height: 30 ) )
        passwordLabel.text = "·········"
        passwordLabel.font = UIFont( name: "Bellota-Bold", size: 27.0 )
        passwordLabel.textColor = UIColor( red: 0.36, green: 0.37, blue: 0.54, alpha: 1.0 )
        self.view.addSubview( passwordLabel )
        
        let secondLinePath = UIBezierPath()
        secondLinePath.moveToPoint( CGPoint( x: 60, y: 420 ) )
        secondLinePath.addLineToPoint( CGPoint( x: self.view.frame.width - 60, y: 420 ) )
        
        let secondLine = CAShapeLayer()
        secondLine.path = secondLinePath.CGPath
        secondLine.lineWidth = 1.0
        secondLine.lineCap = kCALineJoinRound
        secondLine.strokeColor = UIColor( red: 0.36, green: 0.37, blue: 0.54, alpha: 1.0 ).CGColor
        self.view.layer.addSublayer( secondLine )
        
        let facebookConnectButton = SharingButton( frame: CGRect( x: 0, y: 0, width: 50, height: 50 ), imageName: "facebook.png"  )
        facebookConnectButton.alpha = 1.0
        facebookConnectButton.center = CGPoint( x: self.view.center.x - 40, y: 475 )
        self.view.addSubview( facebookConnectButton )
        
        let validateButton = ValidateButton( frame: CGRect( x: 0, y: 0, width: 50, height: 50 ), color: UIColor( red: 0.36, green: 0.37, blue: 0.54, alpha: 1.0 ) )
        validateButton.center = CGPoint( x: self.view.center.x + 40, y: 475 )
        let validateTap = UITapGestureRecognizer( target: self, action: "goToFlower:" )
        validateButton.addGestureRecognizer( validateTap )
        self.view.addSubview( validateButton )
        
        let passwordForgottenLabel = UILabel( frame: CGRect( x: 0, y: self.view.frame.height - 90, width: self.view.frame.width, height: 40 ) )
        passwordForgottenLabel.text = "Mot de passe oublié ?"
        passwordForgottenLabel.numberOfLines = 2
        passwordForgottenLabel.textAlignment = .Center
        passwordForgottenLabel.font = UIFont( name: "Bellota-Bold", size: 15.0 )
        passwordForgottenLabel.textColor = UIColor( red: 0.36, green: 0.37, blue: 0.53, alpha: 1.0 )
        var underlineAttribute = [ NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue ]
        var underlineAttributedString = NSAttributedString( string: passwordForgottenLabel.text!, attributes: underlineAttribute )
        passwordForgottenLabel.attributedText = underlineAttributedString
        passwordForgottenLabel.alpha = 0.6
        self.view.addSubview( passwordForgottenLabel )
        
        let createAccountLabel = UILabel( frame: CGRect( x: 0, y: self.view.frame.height - 60, width: self.view.frame.width, height: 40 ) )
        createAccountLabel.text = "Se créer un compte"
        createAccountLabel.numberOfLines = 2
        createAccountLabel.textAlignment = .Center
        createAccountLabel.font = UIFont( name: "Bellota-Bold", size: 15.0 )
        createAccountLabel.textColor = UIColor( red: 0.36, green: 0.37, blue: 0.53, alpha: 1.0 )
        underlineAttribute = [ NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue ]
        underlineAttributedString = NSAttributedString( string: createAccountLabel.text!, attributes: underlineAttribute )
        createAccountLabel.attributedText = underlineAttributedString
        createAccountLabel.alpha = 0.6
        self.view.addSubview( createAccountLabel )
    }
    
    func goToFlower( recognizer: UITapGestureRecognizer ) {
        if recognizer.state == .Ended {
            let storyboard: UIStoryboard = UIStoryboard( name: "Flower", bundle: nil )
            let vc = storyboard.instantiateViewControllerWithIdentifier( "FlowerPage" ) as! FlowerController
            self.navigationController?.pushViewController(vc, animated: false)
//            self.presentViewController( vc, animated: false, completion: nil )
        }
    }
}