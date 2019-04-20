import Foundation
import UIKit

public struct DownloadManager {
    
    init() {}
}

public enum Progress {
    
    case started
    case downloading
    case interupted
    case completed
    case inBackground
}


protocol DownloadManagerDelegate: AnyObject {
    
    func downloadManager(_ sender: DownloadManager, isDownloading progress:  Progress)
    func downloadManager(_ sender: DownloadManager, hasCompleted progress: Progress)
    func downloadManager(_ sender: DownloadManager, hasFailed progress: Progress)
    func downloadManager(_ sender: DownloadManager, hasEnteredBackground progress: Progress)
}

class Movie: DownloadManagerDelegate {
    
    init() {}
    
    func downloadManager(_ sender: DownloadManager, isDownloading progress: Progress) {
        
        if progress == .downloading {
            // do something here if download is happening... like notifying the user
        }
    }
    
    func downloadManager(_ sender: DownloadManager, hasCompleted progress: Progress) {
        
        if progress == .completed {
            // do something here if download has completed... like notifying the user
        }
    }
    
    func downloadManager(_ sender: DownloadManager, hasFailed progress: Progress) {
        
        if progress == .interupted {
            
        }
    }
    
    func downloadManager(_ sender: DownloadManager, hasEnteredBackground progress: Progress) {
        
        if progress == .inBackground {
            // do something here if download is in backgroung
        }
    }
}
