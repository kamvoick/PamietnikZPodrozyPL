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

        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Zapisz", style: .Plain , target: self, action: #selector(DodajMiejsceVC.dodajAkcjePoNaciśnięciuSave(_:)))
    }

    @IBAction func dodajAkcjePoNaciśnięciuSave(sender: AnyObject){
        nazwaMiejsca = wpiszMiejsceTextField.text!
        latitudeMiejsca = Double(wpiszLatitudeTextField.text!) ?? 0.0
        longitudeMiejsca = Double(wpiszLongitudeTextField.text!) ?? 0.0
        opisMiejsca = opisMiejscaTextView.text!
        
        //Core Data
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context = appDelegate.managedObjectContext
        
        let noweMiejsce = NSEntityDescription.insertNewObjectForEntityForName("MojeMiejsca", inManagedObjectContext: context) as! MojeMiejsca
        
        noweMiejsce.nazwaMiejsca = nazwaMiejsca
        noweMiejsce.latitudeMiejsca = latitudeMiejsca
        noweMiejsce.longitudeMiejsca = longitudeMiejsca
        noweMiejsce.opisMiejsca = opisMiejsca
        noweMiejsce.typMiejsca = "Moje"
        noweMiejsce.pokazMiejsce = true
        
        do{
            try context.save()
            zapisanoMiejsceLabel.hidden = false
            zapisanoMiejsceLabel.text = "Zapisano: \(nazwaMiejsca)"
        }catch{
            zapisanoMiejsceLabel.text = "Błąd: \(error)"
            "jakiś błąd \(error)"
        }
        
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
