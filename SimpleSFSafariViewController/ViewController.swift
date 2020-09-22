//
//  ViewController.swift
//  SimpleSFSafariViewController
//
//  Created by Luis Alfonso Marquez Lecona on 2020-09-21.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let urlString = "https://www.hackingwithswift.com"

        if let url = URL(string: urlString) {
            //let vc = SFSafariViewController(url: url, entersReaderIfAvailable: true)
            let vc = SFSafariViewController(url: url)
            vc.delegate = self

            present(vc, animated: true)
        }
    }
    
    
}

extension ViewController: SFSafariViewControllerDelegate {
 
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true)
    }
}

