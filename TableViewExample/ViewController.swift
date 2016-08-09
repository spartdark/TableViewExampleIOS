//
//  ViewController.swift
//  TableViewExample
//
//  Created by MobileStudioTeam on 05/08/16.
//  Copyright © 2016 MobileStudioTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataSource:[[String]]=[]
    var planetsArray:[String]=[]
    var studentsArray:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additionaal setup after loading the view, typically from a nib.
        planetsArray.append("Marte")
        planetsArray.append("Venus")
        planetsArray.append("Tierra")
        planetsArray.append("d")
        planetsArray.append("e")
        planetsArray.append("f")
        planetsArray.append("g")
        planetsArray.append("h")
        planetsArray.append("i")
        planetsArray.append("j")
        planetsArray.append("k")
        planetsArray.append("l")
        planetsArray.append("m")
        planetsArray.append("n")
        planetsArray.append("o")
        planetsArray.append("p")
        
        //Estrudiantes
        studentsArray.append("Ricardo Lopez")
        studentsArray.append("Angel Perez")
        studentsArray.append("Vladimir Saldivar")
        studentsArray.append("Carlos Parra")
        studentsArray.append("Alejandro Romero")
        
        
        dataSource.append(planetsArray)
        dataSource.append(studentsArray)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
 
1.-Agregar la tabla al viewcontroller
     1.1.- Generar unIBoutlet de la tabla al viewController
     2.-Add una celda a la tabla
     3.-Dar un "reuseidentifier a la celda
     4.- Conectar un datasource al viewcontroller
     5.-Conectar un delegate al viewcontroller
     6.-Implementar los metodos en el vieqwcontroller
 

 */
    


}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    //Cuento el numero de secciones
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return dataSource.count
    }
    //Seccionamos
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0{
            return "Planetas"
        }
        return "Alumnos"
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section==0{
            let cell=tableView.dequeueReusableCellWithIdentifier("PlanetCell")!
            cell.textLabel?.text=planetsArray[indexPath.row]
            cell.accessoryType = .DisclosureIndicator
            
            return cell
        }else{
            let cell=tableView.dequeueReusableCellWithIdentifier("Students")!
            cell.textLabel?.text=dataSource[indexPath.section][indexPath.row]
            cell.detailTextLabel?.text="Programador"
            cell.accessoryType = .DisclosureIndicator
            
            return cell
        }
        
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print ("Selecciono celda")
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
}
