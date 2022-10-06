//
//  ViewController.swift
//  StackView_MAC_APP
//
//  Created by pass on 06/10/22.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var buyInPageTitleLbl: NSTextField!
    @IBOutlet weak var buyInPageTitleDescLbl: NSTextField!
    
    @IBOutlet weak var NoOfGamesDisplayView: NSView!
    @IBOutlet weak var qtyChangeStackView: NSStackView!
    
    @IBOutlet weak var decreaseBtn: NSButton!
    @IBOutlet weak var increaseQtyBtn: NSButton!
    @IBOutlet weak var quantityDisplayLbl: NSTextField!
    
    @IBOutlet weak var sideBetViewInfoStackView: NSStackView!
    @IBOutlet weak var sideBetSelectView: NSView!
    @IBOutlet weak var sideBetInfoView: NSView!
    @IBOutlet weak var sideBetTypeInfoStackView: NSStackView!
    
    @IBOutlet weak var gameBuyInfoDetailsStackView: NSStackView!
    @IBOutlet weak var gameBuyInDetailsView: NSView!
    @IBOutlet weak var gameBuyInTotalCostDetailsView: NSView!
    
    
    
    @IBAction func sideStackViewDetails(_ sender: NSSwitch) {
        
        if sender.state == NSSwitch.StateValue.off {
            
            self.sideBetInfoView.isHidden = true
            self.gameBuyInTotalCostDetailsView.isHidden = true
        }
        else {
            self.sideBetInfoView.isHidden = false
            self.gameBuyInTotalCostDetailsView.isHidden = false
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.sideBetInfoView.isHidden = true
        self.gameBuyInTotalCostDetailsView.isHidden = true

        setUpUI()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func setUpUI() {
        self.view.wantsLayer = true
        self.NoOfGamesDisplayView.wantsLayer = true
        self.qtyChangeStackView.wantsLayer = true
        self.quantityDisplayLbl.wantsLayer = true
        
        self.sideBetViewInfoStackView.wantsLayer = true
        
        self.sideBetInfoView.wantsLayer = true
        self.sideBetViewInfoStackView.wantsLayer = true
        self.sideBetTypeInfoStackView.wantsLayer = true
        
        self.gameBuyInfoDetailsStackView.wantsLayer = true
        self.gameBuyInDetailsView.wantsLayer = true
        self.gameBuyInTotalCostDetailsView.wantsLayer = true
        
        self.view.layer?.backgroundColor = NSColor.white.cgColor
        
        self.NoOfGamesDisplayView.layer?.borderWidth = BorderView.borderWidth.rawValue
        self.NoOfGamesDisplayView.layer?.cornerRadius = BorderView.cornerRadius.rawValue
        self.NoOfGamesDisplayView.layer?.borderColor = NSColor.lightGray.cgColor
        
        self.qtyChangeStackView.layer?.borderWidth = BorderView.borderWidth.rawValue
        self.qtyChangeStackView.layer?.cornerRadius = BorderView.cornerRadius.rawValue
        self.qtyChangeStackView.layer?.borderColor = NSColor.lightGray.cgColor
        self.quantityDisplayLbl.layer?.borderColor = NSColor.lightGray.cgColor

        self.sideBetViewInfoStackView.layer?.borderWidth = BorderView.borderWidth.rawValue
        self.sideBetViewInfoStackView.layer?.cornerRadius = BorderView.cornerRadius.rawValue
        self.sideBetViewInfoStackView.layer?.borderColor = NSColor.lightGray.cgColor
        
        
        self.sideBetTypeInfoStackView.layer?.borderWidth = BorderView.borderWidth.rawValue
        self.sideBetTypeInfoStackView.layer?.cornerRadius = BorderView.cornerRadius.rawValue
        self.sideBetTypeInfoStackView.layer?.borderColor = NSColor.lightGray.cgColor
        self.sideBetTypeInfoStackView.layer?.backgroundColor = NSColor.lightGray.cgColor
        
        
        self.gameBuyInfoDetailsStackView.layer?.borderWidth = BorderView.borderWidth.rawValue
        self.gameBuyInfoDetailsStackView.layer?.cornerRadius = BorderView.cornerRadius.rawValue
        self.gameBuyInfoDetailsStackView.layer?.borderColor = NSColor.lightGray.cgColor
    }
}


enum BorderView: CGFloat {
    case borderWidth = 1
    case cornerRadius = 5
}
