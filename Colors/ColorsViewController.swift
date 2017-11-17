//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sean Buchholz on 10/20/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let colors: [(UIColor, String)] = [(.red, "Red"), (.orange, "Orange"), (.yellow, "Yellow"), (.green, "Green"), (.blue, "Blue"), (.purple, "Purple"), (.brown, "Brown")] //lables all colors
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].1
        cell.backgroundColor = colors[indexPath.row].0
        return cell }
    override func viewDidLoad() {
        super.viewDidLoad() }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()} }
