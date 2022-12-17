//
//  ViewController.swift
//  Lecture1_Example
//
//  Created by Rolan on 7/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    private var countries: [String] = ["China","India","United States","Indonesia", "Pakistan","Nigeria","Brazil","Bangladesh","Russia","Mexico","Japan", "Ethiopia", "Philipiens", "Egypt","Dr Congo", "Vietnam","Iran","Turkey","Germany","Thailand","United Kingdom","Thanzania","France", "South Africa", "Italy","Myanmar","Kenya","Colombia","South Korea","Spain"]
    
    private var countryPopulation = ["1,425,852,961", "1,421,558,134", "339,003,954", "276,300,970", "237,904,020","215,755,061","220,901,834","171,989,378","144,695,962","127,937,791","123,656,597", "124,786,961","98,498,178","100,452,502","98,505,892","88,822,775","83,318,399","85,572,469","83,317,158","71,749,715","67,615,769","66,386,069","64,688,093","60,123,647", "58,961,375","54,366,627","54,516,278","51,953,050","51,804,102","47,542,532"]
    
    @IBOutlet var cityTableView: UITableView!
    
    private let cellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cityTableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: cellIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                 for: indexPath)
        let country = countries[indexPath.row]
        let countryPopulation = countryPopulation[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        
        configuration.text = country
        configuration.secondaryText = countryPopulation
        
        cell.contentConfiguration = configuration
        
        return cell
    }
}
