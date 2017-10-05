//
//  ExtractorProtocol.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

protocol Extractable {
  func setup(fileType: FileTypes , isBringUnknownFile: Bool)
  func getFileInfo()
}
