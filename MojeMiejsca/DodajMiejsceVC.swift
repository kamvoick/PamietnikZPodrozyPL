//
//  DodajMiejsceVC.swift
//  MojeMiejsca
//
//  Created by Kamil Wójcik on 06.07.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit
import CoreData

class DodajMiejsceVC: UIViewController {
    @IBOutlet weak var zapisanoMiejsceLabel: UILabel!
    @IBOutlet weak var wpiszMiejsceTextField: UITextField!
    @IBOutlet weak var wpiszLatitudeTextField: UITextField!
    @IBOutlet weak var wpiszLongitudeTextField: UITextField!
    @IBOutlet weak var opisMiejscaTextView: UITextView!
    
    var nazwaMiejsca = ""
    var latitudeMiejsca = 0.0
    var longitudeMiejsca = 0.0
    var opisMiejsca = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let saveRightBarButton = UIBarButtonSystemItem.Save
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: saveRightBarButton, target: self, action: Selector("dodajAkcjePoNaciśnięciuSave:"))
    }

    @IBAction func dodajAkcjePoNaciśnięciuSave(sender: AnyObject){
        nazwaMiejsca = wpiszMiejsceTextField.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
