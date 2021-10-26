//
//  ViewController.swift
//  MyAlbum
//
//  Created by 문태웅 on 2021/10/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "첫 경고메세지", message: "지금 배우는중", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
    }
    

}

