//
//  ViewController.swift
//  NSCollectionViewSandbox
//
//  Created by Donn on 2018/06/18.
//  Copyright © 2018 Donn. All rights reserved.
//

import Cocoa

// Sample Static Data
let data: [String: [(a: String, b: NSColor)]] = [
    "Color": [
        (a: "Blue", b: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)),
        (a: "Green", b: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
        (a: "Yellow", b: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
    ],
    "Fruit": [
        (a: "Orange", b: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)),
        (a: "Tomato", b: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    ]
]
let dataArray = Array(data)

class ViewController: NSViewController, NSCollectionViewDataSource {
    
    // MARK: Properties

    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // MARK: NSCollectionViewDataSource
    
    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray[section].value.count
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "CVItem"), for: indexPath) as! CVItem //String matches name of .xib file
        item.label.stringValue = dataArray[indexPath.section].value[indexPath.item].a
        item.label.textColor = dataArray[indexPath.section].value[indexPath.item].b
        return item
    }
    
    func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView {
        let view = collectionView.makeSupplementaryView(ofKind: .sectionHeader, withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "CVHeader"), for: indexPath) as! CVHeader //String matches name of .xib file
        view.sectionTitle.stringValue = dataArray[indexPath.section].key
        return view
    }
    
}

