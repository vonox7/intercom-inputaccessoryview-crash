import UIKit
//import UITextView_Placeholder

class ChatToolbarView: UIView, UITextViewDelegate {
  @IBOutlet var view: UIView!
  @IBOutlet var textView: UITextView!

  // MARK: - Lifecycle

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupUi()
  }

  init() {
    super.init(frame: .zero)
    setupUi()
  }

  func setupUi() {
    Bundle.main.loadNibNamed("ChatToolbarView", owner: self, options: nil)
    self.addSubview(view)

    // Setup the "backgroundView"
    self.bounds = view.bounds

    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    autoresizingMask = [.flexibleWidth, .flexibleHeight]

    // Setup the textView
    textView.text = ""
    textView.isScrollEnabled = false

  }

  override var intrinsicContentSize: CGSize {
    get {
      // Syncronize self.frame with self.view.frame
      return CGSize(width: view.bounds.width, height: view.bounds.height)
    }
  }

  func hideKeyboard() {
    textView.resignFirstResponder()
  }
}
