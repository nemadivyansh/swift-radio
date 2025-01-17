//
//  PopUpMenuViewController.swift
//  Swift Radio
//
//

import UIKit
import Pendo.PendoManager

class PopUpMenuViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var backgroundView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
    }
    
    //*****************************************************************
    // MARK: - ViewDidLoad
    //*****************************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Round corners
        popupView.layer.cornerRadius = 10
        
        // Set background color to clear
        view.backgroundColor = UIColor.clear
        
        // Add gesture recognizer to dismiss view when touched
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(closeButtonPressed))
        backgroundView.isUserInteractionEnabled = true
        backgroundView.addGestureRecognizer(gestureRecognizer)
    }
    
    //*****************************************************************
    // MARK: - IBActions
    //*****************************************************************

    @IBAction func closeButtonPressed() {
        dismiss(animated: true, completion: nil)
        // *************** Aşağıdaki tek satır kodu silebilirsin ********
        PendoManager.shared().track("caner_Event_back_button:,üğpşiç.!'^+%&/()=?_-*0>£#$½§{[]}", properties: ["key1":"val1", "key2":"val2"])
    }
   
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        // Use your own website URL here
        guard let url = URL(string: "https://github.com/analogcode/") else { return }
        UIApplication.shared.openURL(url)
    }
    
}
