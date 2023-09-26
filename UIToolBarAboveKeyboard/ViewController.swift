//
//  ViewController.swift
//  UIToolBarAboveKeyboard
//
//  Created by shubam on 26/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    var titleOptions = ["Body", "Title", "Subtitle"]
    var currentTitleIndex = 0
    lazy var customTitleButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInputAccessoryViewWithSrcollable()
    }
    
    private func setupInputAccessoryViewWithSrcollable() {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width + 435, height: 45))
        scrollView.showsHorizontalScrollIndicator = false
        
        let toolBar = UIToolbar(frame: scrollView.bounds)
        scrollView.addSubview(toolBar)
        scrollView.contentSize = toolBar.frame.size
        toolBar.barTintColor = .white
        
        let toolBarSpace = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        toolBarSpace.width = 25
        
        let toolBarButtonSpace = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        toolBarButtonSpace.width = 5
        
        let buttons: [UIBarButtonItem] = [
            customBarButtonItem(image: "arrow.uturn.backward", action: #selector(leftArrowButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "arrow.uturn.forward", action: #selector(rightArrowButtonTapped)),
            toolBarSpace,
            
            customTitleBarButtonItem(),
            toolBarButtonSpace,
            customBarButtonItem(image: "a.square.fill", action: #selector(colorPickerButtonTapped)),
            toolBarSpace,
            
            customBarButtonItem(image: "bold", action: #selector(boldButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "italic", action: #selector(italicButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "underline", action: #selector(underlineButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "strikethrough", action: #selector(strikeButtonTapped)),
            toolBarSpace,
            
            customBarButtonItem(image: "list.number", action: #selector(listNumberButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "list.bullet", action: #selector(listBulletButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "link", action: #selector(linkButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "photo", action: #selector(attachmentButtonTapped)),
            toolBarSpace,
            
            customBarButtonItem(image: "text.alignleft", action: #selector(justifyLeftButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "text.aligncenter", action: #selector(justifyCenterButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "text.alignright", action: #selector(justifyRightButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "text.justify", action: #selector(justifyBothSideButtonTapped)),
            toolBarSpace,
            
            customBarButtonItem(image: "decrease.indent", action: #selector(spaceDecreaseIndentButtonTapped)),
            toolBarButtonSpace,
            customBarButtonItem(image: "increase.indent", action: #selector(spaceIncreaseIndentButtonTapped)),
            toolBarSpace
        ]
        toolBar.items = buttons
        toolBar.tintColor = .black.withAlphaComponent(0.75)
        
        toolBar.sizeToFit()
        nameTextField.inputAccessoryView = scrollView
    }
    
    private func customBarButtonItem(image: String, action: Selector) -> UIBarButtonItem {
        let customButton = CustomeButton(image: image)
        let tapGesture = UITapGestureRecognizer(target: self, action: action)
        customButton.addGestureRecognizer(tapGesture)
        return UIBarButtonItem(customView: customButton)
    }
    
    private func customTitleBarButtonItem() -> UIBarButtonItem {
        customTitleButton.setTitle("Body", for: .normal)
        customTitleButton.setTitleColor(UIColor.label, for: .normal)
        customTitleButton.backgroundColor = UIColor.systemGray6
        customTitleButton.layer.cornerRadius = 5
        customTitleButton.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        customTitleButton.addTarget(self, action: #selector(titleButtonTapped), for: .touchUpInside)
        return UIBarButtonItem(customView: customTitleButton)
    }
}

extension ViewController {
    @objc func leftArrowButtonTapped() {
        print(#function)
    }
    
    @objc func rightArrowButtonTapped() {
        print(#function)
    }
    
    @objc func titleButtonTapped() {
        print(#function)
        currentTitleIndex = (currentTitleIndex + 1) % titleOptions.count
        let nextTitle = titleOptions[currentTitleIndex]
        customTitleButton.setTitle(nextTitle, for: .normal)
    }
    
    @objc func colorPickerButtonTapped() {
        print(#function)
    }
    
    @objc func boldButtonTapped() {
        print(#function)
    }
    
    @objc func italicButtonTapped() {
        print(#function)
    }
    
    @objc func underlineButtonTapped() {
        print(#function)
    }
    
    @objc func strikeButtonTapped() {
        print(#function)
    }
    
    @objc func listNumberButtonTapped() {
        print(#function)
    }
    
    @objc func listBulletButtonTapped() {
        print(#function)
    }
    
    @objc func linkButtonTapped() {
        print(#function)
    }
    
    @objc func attachmentButtonTapped() {
        print(#function)
    }
    
    @objc func justifyLeftButtonTapped() {
        print(#function)
    }
    
    @objc func justifyCenterButtonTapped() {
        print(#function)
    }
    
    @objc func justifyRightButtonTapped() {
        print(#function)
    }
    
    @objc func justifyBothSideButtonTapped() {
        print(#function)
    }
    
    @objc func spaceDecreaseIndentButtonTapped() {
        print(#function)
    }
    
    @objc func spaceIncreaseIndentButtonTapped() {
//        print(#function)
    }
}

class CustomeButton: UIButton {
    init(image: String) {
        super.init(frame: .zero)
        self.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        self.backgroundColor = .systemGray6
        self.layer.cornerRadius = 5
        self.setImage(UIImage(systemName: image), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





