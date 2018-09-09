//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by Kevin Trebossen on 9/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLaod appelé")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
        print("Frame -> : \(vueFrameEtBounds.frame)")
        print("Bounds -> : \(vueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)
        }) { (success) in
            print("Frame -> : \(self.vueFrameEtBounds.frame)")
            print("Bounds -> : \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
