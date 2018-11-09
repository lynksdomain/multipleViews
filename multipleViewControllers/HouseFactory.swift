//
//  HouseFactory.swift
//  multipleViewControllers
//
//  Created by C4Q on 11/8/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

struct HouseFactory {
    static let houses: [House] = [House.init(name: "Stark", banner: UIImage.init(named: "stark")!, words: "Winter is Coming", backgroundColor: .gray),
                                  House.init(name: "Lannister", banner: UIImage.init(named: "lannister")!, words: "Hear Me Roar", backgroundColor: .red),
                                  House.init(name: "Greyjoy", banner: UIImage.init(named: "grey")!, words: "We Do Not Sow", backgroundColor: .yellow),
                                  House.init(name: "Baratheon", banner: UIImage.init(named: "baratheon")!, words: "Ours Is The Fury", backgroundColor: .green)
    ]
}
