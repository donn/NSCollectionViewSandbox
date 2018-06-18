//
//  CVItem.swift
//  NSCollectionViewSandbox
//
//  Created by Donn on 2018/06/18.
//  Copyright © 2018 Donn. All rights reserved.
//

import Cocoa

// Create this class with a matching .xib file
// Place an "NSCollectionViewItem" completely in a vaccuum but change its type to your Item class
// Drag outlets from the view to inside CVItem

// You can customize item size from the NSCollectionView's attribbutes

class CVItem: NSCollectionViewItem {

    @IBOutlet weak var label: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
