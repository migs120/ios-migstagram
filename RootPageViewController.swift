//
//  RootPageViewController.swift
//  migstagram
//
//  Created by Miguel Gutierrez on 7/2/17.
//  Copyright © 2017 Miguel Gutierrez. All rights reserved.
//

import UIKit

class RootPageViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    
    //var dataSource = UIPageViewControllerDataSource
    
    lazy var vcArray: [UIViewController]={
                                        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                                        let camVC = storyBoard.instantiateViewController(withIdentifier: "camVC")
                                        let appVC = storyBoard.instantiateViewController(withIdentifier: "appVC")
                                        let messVC = storyBoard.instantiateViewController(withIdentifier: "messVC")
        
                                        return [appVC, camVC, messVC]
                                        }()
    
    
    override func viewDidLoad() {
                                super.viewDidLoad()
                             //self.dataSource  = self
        //[[RootPageViewController] setDataSource, self];
                               // self.delegate = self
        
                                if let firstViewController = self.vcArray.first{
                                    self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
                                        }
                                }
    
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        
        guard let vcIndex = vcArray.index(of: viewController) else {return nil}
        let prevIndex = vcIndex - 1
        guard prevIndex >= 0 else { return vcArray.last}
        return nil}
    
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{return nil}

   

}
