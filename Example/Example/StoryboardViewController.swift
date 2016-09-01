import Foundation
import UIKit

class StoryboardViewController: UIViewController {
    var someData: [AnyObject]?
    var someViewModel: AnyObject?
    
    static func instanceWithInjection(data: [AnyObject], viewModel: AnyObject) -> StoryboardViewController {
        let instance = loadFromStoryboard()
        instance.someData = data
        instance.someViewModel = viewModel
        return instance
    }
}

extension StoryboardViewController: StoryboardLoadable {
    typealias VC = StoryboardViewController
    static var storyboardName: String { return "Main" }
    static var viewControllerId: String { return "ViewControllerID" }
}