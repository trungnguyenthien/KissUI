//
//  UILabel+Decor.swift
//  Kiss
//
//  Created by Trung on 7/20/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import Foundation
import UIKit

public class Label: UILabel {
    var builder = TextBuilder()

    public override var text: String? {
        get {
            return attributedText?.string
        }
        set {
            numberOfLines = builder.numberOfLines
            lineBreakMode = builder.paragraph.lineBreakMode
            attributedText = builder.attributes(text: newValue)
        }
    }
}

public extension TextBuilder {
    func label() -> Label {
        let label = Label()
        label.builder = self
        label.numberOfLines = numberOfLines
        return label
    }
}
