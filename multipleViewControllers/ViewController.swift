//
//  ViewController.swift
//  multipleViewControllers
//
//  Created by C4Q on 11/8/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myHouses = [House]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myHouses = HouseFactory.houses
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //MAKE SURE THE PLACE I AM SEGUEING TO CAN BE CASTED AS MY CUSTOM VIEWCONTROLLER (THE NEW VC FILE YOU CREATED)
        //AND I ALSO MAKE SURE THAT THE SENDER (THE THING THAT TRIGGERS THE SEGUE) IS ABLE TO BE CASTED AS UIBUTTON
        guard let destination = segue.destination as? DetailViewController,
            let button = sender as? UIButton else {return}
        //SET THE VARIABLE ON THE DESTINATION VC TO SOMETHING RIGHT BEFORE WE SEGUE
        destination.houseIExpect = myHouses[button.tag]
    }

}

