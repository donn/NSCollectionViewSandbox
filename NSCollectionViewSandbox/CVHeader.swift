//
//  CVHeader.swift
//  NSCollectionViewSandbox
//
//  Created by Donn on 2018/06/18.
//  Copyright © 2018 Donn. All rights reserved.
//

import Cocoa

// Create this class withOUT a matching .xib file, as an NSView subclass
// Manually create a "HeaderController" class
// Manually create an XIB file as an empty view
// Set the File Owner to the HeaderController class
// Set the Custom View to the Header class
// Set an outlet from the File Owner to the View

// Drag outlets to this file inside the Header class
// You can customize header size from the NSCollectionView's attributes


class CVHeader: NSView {
    @IBOutlet weak var sectionTitle: NSTextField!
    
}

class CVHeaderController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
