//
//  VC.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 9/5/23.
//

import UIKit
import SwiftUI

class VC: UIViewController {
    
    lazy var buttonOne: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 16, y: 60, width: 50, height: 30)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 5
        
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        buttonOne.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        buttonOne.addTarget(self, action: #selector(didTappedButtonOne), for: .touchUpInside)
        view.addSubview(buttonOne)
    }
    
    @objc func didTappedButtonOne() {
        print("FFF-- Tapped VC")
        navigationController?.popToRootViewController(animated: true)
        //dismiss(animated: true)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        print("Button Two tapped!")
        let uiView = ContentView()
        let vc = UIHostingController(rootView: uiView)
        vc.modalPresentationStyle = .fullScreen
        
        self.navigationController!.pushViewController(vc, animated: true)
    }

    
}

// MARK: - VC Wraping
struct WrapVC: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let wrappedViewController = UIStoryboard(name: "VC", bundle: nil).instantiateViewController(withIdentifier: "ID") as! VC
        let navVC = UINavigationController(rootViewController: wrappedViewController)
        navVC.modalPresentationStyle = .fullScreen
        navVC.navigationItem.title = "View Controller page"
        navVC.isNavigationBarHidden = true
        
        return navVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
}
