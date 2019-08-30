//
//  pageViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/19/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class pageViewController: UIPageViewController ,UIPageViewControllerDelegate ,UIPageViewControllerDataSource {
  
    lazy var subViewController :[UIViewController] = {
        return [
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController,
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutUsViewController") as! AboutUsViewController,
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "letsViewController") as! letsViewController ,
             UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
        
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self

    setViewControllers([subViewController[0]], direction: .forward, animated: true, completion: nil)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
            return  subViewController.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentPage : Int = subViewController.firstIndex(of: viewController) ?? 0
        if (currentPage<=0)
        {
            return nil
        }
        return subViewController[currentPage - 1]
        
  
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentpage : Int = subViewController.firstIndex(of: viewController) ?? 0
        if currentpage > subViewController.count - 1
        {
            return nil
        }
        return subViewController[currentpage + 1]
    }

}
