//
//  DetailViewController.swift
//  StormViewerApp
//
//  Created by Kiran Sonne on 07/07/22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    var selectedImage: String?
    var selectedPicture = 0
    var totalPicture = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = " This Image is \(selectedImage ?? "")"
        if let imageToLoad = selectedImage {
            img.image = UIImage(named: imageToLoad)
        }
        
     }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
   
}
