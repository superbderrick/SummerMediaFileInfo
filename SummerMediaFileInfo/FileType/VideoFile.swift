//
//  Video.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import UIKit

open class VideoFile :SummerFile {
  
  var thumnailImage:UIImage?
  
  override public init(fileName: String, fileFormat: String, fileDocumentPath: String, mediaType: MediaType) {
    super.init(fileName: fileName, fileFormat: fileFormat, fileDocumentPath: fileDocumentPath, mediaType: mediaType)
  }
  
  init(fileName: String, fileFormat: String, fileDocumentPath: String, mediaType: MediaType ,thumbnail:UIImage?) {
    self.thumnailImage = thumbnail
    super.init(fileName: fileName, fileFormat: fileFormat, fileDocumentPath: fileDocumentPath, mediaType: mediaType)
  }
}



