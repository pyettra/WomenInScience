//
//  ViewController.swift
//  mulheresDaComputacao
//
//  Created by Pyettra Ferreira on 15/10/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewInfo: UIView!
    @IBOutlet weak var viewText: UIView!
    @IBOutlet weak var mulherImg: UIImageView!
    @IBOutlet weak var mulherLbl: UILabel!
    @IBOutlet weak var mulhertxt: UITextView!
    @IBOutlet weak var buttonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInfo.layer.cornerRadius = 10
        viewInfo.layer.masksToBounds = true
        
        viewText.layer.cornerRadius = 10
        viewText.layer.masksToBounds = true
        
        buttonView.layer.cornerRadius = 10
        buttonView.layer.masksToBounds = true
    }
    
    @IBAction func descobrir(_ sender: Any) {
        let mulherRandom = randomMulher()
        
        mulherLbl.text = mulherRandom.nome
        mulhertxt.text = mulherRandom.texto
        mulherImg.image = UIImage(named: mulherRandom.image)
        
    }
    
    func randomMulher() -> Mulher {
        
        let mulheres = ModelMulher.instance.mulheres
        
        let randomMulher = Int(arc4random_uniform(UInt32(mulheres.count)))

        let mulher = ModelMulher.instance.mulheres[randomMulher]
        
        return mulher
        
    }
    
}

