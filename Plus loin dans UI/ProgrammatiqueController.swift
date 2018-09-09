//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Kevin Trebossen on 9/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPremiereIV: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        view.addSubview(monPremierUIView!)
    
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        //monPremierLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        monPremierLabel?.textAlignment = NSTextAlignment.center
        view.addSubview(monPremierLabel!)
        let rectDeMonBouton = CGRect(x: view.frame.width / 2 - 75, y: monPremierLabel!.frame.maxY + 220, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyez", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        
        view.addSubview(monPremierBouton!)
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremiereIV = UIImageView(frame: rectIV)
        maPremiereIV?.image = UIImage(named: "codabee")
        maPremiereIV?.contentMode = .scaleAspectFill
        maPremiereIV?.clipsToBounds = true
        maPremiereIV?.layer.cornerRadius = maPremiereIV!.frame.width / 2    // pour avoir une image ronde
        view.addSubview(maPremiereIV!)
        //view.sendSubview(toBack: maPremiereIV!)       // OU
        view.bringSubview(toFront: monPremierBouton!)
        
        
        maPremiereIV?.isUserInteractionEnabled = true       // pour rendre une image cliquable
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
    }
    
    @objc func imageAppuye (){
        print("Tu as bien appuyé sur l'image")
    }
    
    @objc func boutonAppuye (){
        print("Tu as bien appuyé")
    }

}
