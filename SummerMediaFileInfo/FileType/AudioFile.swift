//
//  Audio.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

open class AudioFile :SummerFile {
  
  
  override public init(fileName: String, fileFormat: String, fileIdentifier: String,  mediaType: String) {
    super.init(fileName: fileName, fileFormat: fileFormat, fileIdentifier: fileIdentifier , mediaType: mediaType)
  }
  
}
