//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
    
  }()
    let purple : UIView = {
        let purpleBox = UIView(frame : CGRect.zero)
        purpleBox.translatesAutoresizingMaskIntoConstraints = false
        purpleBox.backgroundColor = .purple
        return purpleBox
    }()
    let red : UIView = {
        let redBox = UIView(frame: CGRect.zero)
        redBox.translatesAutoresizingMaskIntoConstraints = false
        redBox.backgroundColor = .red
        return redBox
    }()
    let orange1 : UIView = {
          let orangeBox1 = UIView(frame: CGRect.zero)
          orangeBox1.translatesAutoresizingMaskIntoConstraints = false
          orangeBox1.backgroundColor = .orange
          return orangeBox1
      }()
    let orange2 : UIView = {
             let orangeBox2 = UIView(frame: CGRect.zero)
             orangeBox2.translatesAutoresizingMaskIntoConstraints = false
             orangeBox2.backgroundColor = .orange
             return orangeBox2
         }()
    let blue1 : UIView = {
      let blueBox1 = UIView()
      blueBox1.translatesAutoresizingMaskIntoConstraints = false
      blueBox1.backgroundColor = .blue
      blueBox1.frame = CGRect.zero
      return blueBox1
  }()
      let blue2: UIView = {
        let blueBox2 = UIView()
        blueBox2.translatesAutoresizingMaskIntoConstraints = false
        blueBox2.backgroundColor = .blue
        blueBox2.frame = CGRect.zero
        return blueBox2
    }()
      let blue3 : UIView = {
        let blueBox3 = UIView()
        blueBox3.translatesAutoresizingMaskIntoConstraints = false
        blueBox3.backgroundColor = .blue
        blueBox3.frame = CGRect.zero
        return blueBox3
    }()
    
    var stackViewOrange = UIStackView()
    var stackViewBlue = UIStackView()
    
    
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    
//purple box
    mainView.addSubview(purple)
       NSLayoutConstraint(item: purple, attribute: .leading, relatedBy: .equal, toItem: mainView, attribute: .leadingMargin, multiplier: 1.0, constant: 200.0).isActive = true
       NSLayoutConstraint(item: purple, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 1.0, constant: -10.0).isActive = true
       NSLayoutConstraint(item: purple, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: mainView, attribute: .bottomMargin, multiplier: 1.0, constant: -20.0).isActive = true
       NSLayoutConstraint(item: purple, attribute: .height, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.1, constant:0.0).isActive = true
//red box
    mainView.addSubview(red)
       NSLayoutConstraint(item: red, attribute: .trailing, relatedBy: .equal, toItem: mainView, attribute: .trailingMargin, multiplier: 1.0, constant: -10.0).isActive = true
       NSLayoutConstraint(item: red, attribute: .top, relatedBy: .equal, toItem: mainView, attribute: .topMargin, multiplier: 1.0, constant: 10.0).isActive = true
       NSLayoutConstraint(item: red, attribute: .height, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.1, constant:0.0).isActive = true
       NSLayoutConstraint(item: red, attribute: .width, relatedBy: .equal, toItem: mainView, attribute:.width, multiplier: 0.3, constant:0.0).isActive = true
    
//orange boxes
    stackViewOrange = UIStackView(arrangedSubviews: [orange1, orange2])
    stackViewOrange.axis = .horizontal
    stackViewOrange.translatesAutoresizingMaskIntoConstraints = false
    stackViewOrange.distribution = .fillEqually
    stackViewOrange.spacing = 20
    
    view.addSubview(stackViewOrange)

    NSLayoutConstraint(item: stackViewOrange, attribute: .top, relatedBy: .equal  , toItem: red, attribute: .top, multiplier: 1.0, constant: 10.0).isActive = true
    NSLayoutConstraint(item: stackViewOrange, attribute: .bottom, relatedBy: .equal, toItem: red, attribute: .bottom, multiplier: 1.0, constant: -10.0).isActive = true
    NSLayoutConstraint(item: stackViewOrange, attribute: .leading, relatedBy: .equal  , toItem: red, attribute: .leadingMargin, multiplier: 1.0, constant: 10.0).isActive = true
    NSLayoutConstraint(item: stackViewOrange, attribute: .trailing, relatedBy: .equal, toItem: red, attribute: .trailingMargin, multiplier: 1.0, constant: -10.0).isActive = true
    
//blue boxes
    stackViewBlue = UIStackView(arrangedSubviews: [blue1, blue2, blue3])
      stackViewBlue.axis = .vertical
      stackViewBlue.translatesAutoresizingMaskIntoConstraints = false
      stackViewBlue.distribution = .fillEqually
      stackViewBlue.spacing = 100
      
      view.addSubview(stackViewBlue)


      NSLayoutConstraint(item: stackViewBlue, attribute: .top, relatedBy: .equal  , toItem: mainView, attribute: .top, multiplier: 1.0, constant: 120.0).isActive = true
      NSLayoutConstraint(item: stackViewBlue, attribute: .bottom, relatedBy: .equal, toItem: mainView, attribute: .bottom, multiplier: 1.0, constant: -120.0).isActive = true
      NSLayoutConstraint(item: stackViewBlue, attribute: .leading, relatedBy: .equal  , toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 350.0).isActive = true
      NSLayoutConstraint(item: stackViewBlue, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -350.0).isActive = true
 
    
    setupLayout()
    
  }
  

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}
