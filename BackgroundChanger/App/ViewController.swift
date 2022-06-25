//
//  ViewController.swift
//  ColorUserDefaults
//
//  Created by Armand Okedje on 08/05/2022.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties

    private let image = Image()
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions

    @IBAction private func changeColor(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
        image.selected = sender.titleLabel!.text!
        displaySelectedColor()
    }

    // MARK: - Private
    
    private func displaySelectedColor() {
        switch image.selected {
        case "Rouge":
            backgroundImage.image = UIImage(named: "crops")
            backgroundImage.contentMode = .center
            view.insertSubview(backgroundImage, at: 0)
            //view.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)

        case "Bleu":
            backgroundImage.image = UIImage(named: "mountains")
            backgroundImage.contentMode = .center
            view.insertSubview(backgroundImage, at: 0)
            //view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        case "Vert":
            backgroundImage.image = UIImage(named: "ocean")
            backgroundImage.contentMode = .center
            view.insertSubview(backgroundImage, at: 0)
            //view.backgroundColor = .green
            
        case "Recet":
            backgroundImage.image = UIImage(named: "crops")
            backgroundImage.contentMode = .scaleAspectFill
            view.insertSubview(backgroundImage, at: 0)
            
        default: 
            break //view.backgroundColor = UIColor.default
        }
    }
}
