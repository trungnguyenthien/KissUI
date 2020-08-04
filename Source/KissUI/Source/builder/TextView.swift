//
//  TextView.swift
//  Kiss
//
//  Created by Trung on 7/25/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation
import UIKit

public class TextView: UITextView {
    var builder = TextBuilder()

    public override var text: String? {
        get {
            return attributedText?.string
        }
        set {
            attributedText = builder.attributes(text: newValue)
        }
    }
}

public extension TextBuilder {
    func textView() -> TextView {
        let textView = TextView()
        textView.builder = self
        return textView
    }
}

public class TextField: UITextField {
    var builder = TextBuilder()

    public override var text: String? {
        get {
            return attributedText?.string
        }
        set {
            attributedText = builder.attributes(text: newValue)
        }
    }
}

public extension TextBuilder {
    func textField() -> TextField {
        let text = TextField()
        text.builder = self

        return text
    }
}
