//
//  ViewController.swift
//  Intercom Test App
//

import UIKit
import Intercom

class ViewController: UIViewController {

  var toolBarView: ChatToolbarView!

  override func viewDidLoad() {
    super.viewDidLoad()
    makeRootViewClickable()

    toolBarView = ChatToolbarView()
  }

  @IBAction func intercomButtonAction(_ sender: UIButton) {
    Intercom.presentMessenger()
  }

  func makeRootViewClickable() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(sender:)))
    tap.cancelsTouchesInView = false

    view.addGestureRecognizer(tap)
  }

  @objc func dismissKeyboard(sender: UITapGestureRecognizer? = nil) {
    toolBarView.hideKeyboard()
  }


  override var inputAccessoryView: UIView? { toolBarView }

  override var canBecomeFirstResponder: Bool { true }
}

