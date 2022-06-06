//
//  GameViewController.swift
//  Checkers
//
//  Created by mac on 9.02.22.
//
import UIKit

enum CheckerMove: Int {
    case grayMove, whiteMove
}

class Checker: NSObject, NSCoding, NSSecureCoding {
    static var supportsSecureCoding: Bool = true
    
    
    var color: UIColor
    var numberCell: Int
    
    init(color: UIColor, numberCell: Int) {
        self.color = color
        self.numberCell = numberCell
    }
    func encode(with coder: NSCoder) {
        coder.encode(color, forKey: "color")
        coder.encode(numberCell, forKey: "numberCell")
    }
    required init?(coder: NSCoder) {
        self.numberCell = coder.decodeInteger(forKey: "numberCell")
        self.color = coder.decodeObject(of: UIColor.self, forKey: "color") ?? .gray
    }
}

class GameViewController: UIViewController {
    
    var imageView = UIImageView()
    var labelTimer = UILabel()
    var timer: Timer!
    var seconds: Int = 0 {
        didSet {
            let min = Int(Double(self.seconds) / 60.0)
            let sec = Int(Double(self.seconds) - (Double(min) * 60.0))
            
            let min_string = min < 10 ? "0\(min)" : "\(min)"
            let sec_string = sec < 10 ? "0\(sec)" : "\(sec)"
            labelTimer.text = "\(min_string):\(sec_string)"
        }
    }
    var labelPlayerGray = UILabel()
    var labelPlayerWhite = UILabel()
    var namePlayerGray = UILabel()
    var namePlayerWhite = UILabel()
    var labelPlayerMove = UILabel()
    var chessScoreGray = [Int]()
    var chessScoreWhite = [Int]()
    var labelScoreGray = UILabel()
    var labelScoreWhite = UILabel()
    var buttonReset = UIButton(type: .system)
    var buttonSave = UIButton(type: .system)
    var buttonLoad = UIButton(type: .system)
    var buttonBack = UIButton(type: .custom)
    var checker = UIView()
    var square = UIView()
    var arrayCheckers = [Checker]()
    lazy var board: UIView = {
        let view = UIView()
        let size = self.view.frame.size.width - 32
        view.frame.size = CGSize(
            width: size,
            height: size)
        view.center = self.view.center
        return view
    }()
    
    var currentMove: CheckerMove = .grayMove
    var saveCurrentMove: CheckerMove?
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAction()
        addNamePlayer()
        addView()
        buttonStyle()
        setupUI()
        setupTimer()
        chessBoard(view: board)
        board.isUserInteractionEnabled = true
        board.clipsToBounds = true
        board.backgroundColor = .clear
        board.layer.borderColor = UIColor.black.cgColor
        board.layer.borderWidth = 1
        navigationController?.navigationBar.isHidden = true
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        board.center = view.center
        
        [imageView, labelTimer, labelPlayerGray, namePlayerGray, labelPlayerWhite, namePlayerWhite, buttonSave, buttonReset, buttonLoad, buttonBack, labelScoreGray, labelScoreWhite].forEach( {$0.translatesAutoresizingMaskIntoConstraints = false} )
        
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        labelTimer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelTimer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        labelPlayerGray.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55).isActive = true
        labelPlayerGray.topAnchor.constraint(equalTo: buttonBack.bottomAnchor, constant: 20).isActive = true
        labelPlayerWhite.topAnchor.constraint(equalTo: labelPlayerGray.topAnchor, constant: 0).isActive = true
        labelPlayerWhite.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55).isActive = true
        namePlayerGray.centerXAnchor.constraint(equalTo: labelPlayerGray.centerXAnchor, constant: 0).isActive = true
        namePlayerGray.topAnchor.constraint(equalTo: labelPlayerGray.bottomAnchor, constant: 7).isActive = true
        namePlayerWhite.topAnchor.constraint(equalTo: labelPlayerWhite.bottomAnchor, constant: 7).isActive = true
        namePlayerWhite.centerXAnchor.constraint(equalTo: labelPlayerWhite.centerXAnchor, constant: 0).isActive = true
        labelScoreGray.topAnchor.constraint(equalTo: namePlayerGray.bottomAnchor, constant: 5).isActive = true
        labelScoreGray.centerXAnchor.constraint(equalTo: namePlayerGray.centerXAnchor, constant: 0).isActive = true
        labelScoreWhite.topAnchor.constraint(equalTo: namePlayerWhite.bottomAnchor, constant: 5).isActive = true
        labelScoreWhite.centerXAnchor.constraint(equalTo: namePlayerWhite.centerXAnchor, constant: 0).isActive = true
        buttonReset.topAnchor.constraint(equalTo: board.bottomAnchor, constant: 20).isActive = true
        buttonReset.leadingAnchor.constraint(equalTo: board.leadingAnchor).isActive = true
        buttonReset.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buttonSave.topAnchor.constraint(equalTo: board.bottomAnchor, constant: 20).isActive = true
        buttonSave.trailingAnchor.constraint(equalTo: board.trailingAnchor).isActive = true
        buttonSave.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buttonLoad.trailingAnchor.constraint(equalTo: buttonSave.leadingAnchor).isActive = true
        buttonLoad.leadingAnchor.constraint(equalTo: buttonReset.trailingAnchor).isActive = true
        buttonLoad.topAnchor.constraint(equalTo: buttonReset.bottomAnchor, constant: 30).isActive = true
        buttonBack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        buttonBack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        buttonBack.widthAnchor.constraint(equalToConstant: 20).isActive = true
        buttonBack.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func buttonStyle() {
        buttonSave.backgroundColor = #colorLiteral(red: 0.7151885629, green: 0.7151885629, blue: 0.7151885629, alpha: 1)
        buttonReset.backgroundColor = #colorLiteral(red: 0.7151885629, green: 0.7151885629, blue: 0.7151885629, alpha: 1)
        buttonLoad.backgroundColor = #colorLiteral(red: 0.7151885629, green: 0.7151885629, blue: 0.7151885629, alpha: 1)
        buttonSave.layer.cornerRadius = 8
        buttonReset.layer.cornerRadius = 8
        buttonLoad.layer.cornerRadius = 8
        buttonSave.setTitle("Save", for: .normal)
        buttonReset.setTitle("Reset", for: .normal)
        buttonLoad.setTitle("Load", for: .normal)
        buttonBack.setImage(UIImage(named: "pngegg.png"), for: .normal)
    }
    
    func addView() {
        [imageView, labelPlayerGray, namePlayerGray, labelPlayerWhite, namePlayerWhite, board, buttonSave, buttonReset, buttonLoad, buttonBack, labelTimer, labelScoreGray, labelScoreWhite].forEach( {view.addSubview($0) } )
    }
    func setupUI() {
        imageView.image = Settings.shared.imageBackground
        imageView.contentMode = .scaleAspectFill
        
    }
    
    func setupTimer() {
        timer =  Timer(timeInterval: 1, repeats: true) { _ in self.seconds += 1 }
        RunLoop.main.add(timer, forMode: .common)
    }
    
    func addNamePlayer() {
        labelPlayerGray.textAlignment = .center
        labelPlayerWhite.textAlignment = .center
        labelPlayerGray.text = "Player name g :"
        labelPlayerGray.font = UIFont(name: "Marker felt", size: 15)
        labelPlayerWhite.text = "Player name:"
        labelPlayerWhite.font = UIFont(name: "Marker felt", size: 15)
        namePlayerGray.text = UserDefaults.standard.object(forKey: "namePlayerGray") as? String
        namePlayerWhite.text = UserDefaults.standard.object(forKey: "namePlayerWhite") as? String
        namePlayerGray.font = UIFont(name: "Marker felt", size: 14)
        namePlayerGray.textColor = #colorLiteral(red: 0.2088463306, green: 0.2088463306, blue: 0.2088463306, alpha: 1)
        namePlayerWhite.font = UIFont(name: "Marker felt", size: 14)
        namePlayerWhite.textColor = #colorLiteral(red: 0.2088463306, green: 0.2088463306, blue: 0.2088463306, alpha: 1)
        labelScoreGray.textAlignment = .center
        labelScoreWhite.textAlignment = .center
        labelScoreGray.text = "\(chessScoreGray.count)"
        labelScoreWhite.text = "\(chessScoreWhite.count)"
        labelScoreGray.font = UIFont(name: "Marker felt", size: 15)
        labelScoreWhite.font = UIFont(name: "Marker felt", size: 15)
        labelScoreGray.textColor = #colorLiteral(red: 0.2088463306, green: 0.2088463306, blue: 0.2088463306, alpha: 1)
        labelScoreWhite.textColor = #colorLiteral(red: 0.2088463306, green: 0.2088463306, blue: 0.2088463306, alpha: 1)
    }
    
    func chessBoard(view: UIView) {
        let squareSize = view.frame.size.width / 8
        
        var number: Int = 0
        for y in 0...7 {
            for x in 0...7 {
                let square = UIView(
                    frame: CGRect(origin: CGPoint(
                        x: CGFloat(x) * squareSize,
                        y: CGFloat(y) * squareSize),
                                  size: CGSize(
                                    width: squareSize,
                                    height: squareSize
                                  )
                    )
                )
                view.addSubview(square)
                
                let isWhite = (x + y) % 2 == 0
                
                square.backgroundColor = isWhite ? .white : .black
                
                square.tag = number
                number += 1
                
                if y < 3 && !isWhite {
                    let checker = creationOfCheckers(color: .gray)
                    square.addSubview(checker)
                    checker.center = CGPoint(x: square.bounds.width / 2.0, y: square.bounds.height / 2.0)
                } else if y > 4 && !isWhite {
                    let checker = creationOfCheckers(color: .white)
                    square.addSubview(checker)
                    checker.center = CGPoint(x: square.bounds.width / 2.0, y: square.bounds.height / 2.0 )
                }
            }
        }
    }
    
    func creationOfCheckers(color: UIColor) -> UIView {
        
        let size = (view.frame.size.width) / 8 / 1.5
        
        checker = UIView(
            frame: CGRect(origin: .zero,
                          size: CGSize(width: size, height: size)))
        checker.backgroundColor = color
        checker.layer.cornerRadius = size / 2
        
        checker.layer.borderColor = UIColor.lightGray.cgColor
        checker.layer.borderWidth = 2
        checker.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panGesture)))
        checker.isUserInteractionEnabled = true
        return checker
    }
    
    
    @objc func panGesture(gesture: UIPanGestureRecognizer) {
        guard let checker = gesture.view, let view_ch = checker.superview else {return}
        let filter = board.subviews.filter{($0.tag == view_ch.tag + 7 || $0.tag == view_ch.tag + 9)}
        let filterBottom = board.subviews.filter{($0.tag == view_ch.tag - 7 || $0.tag == view_ch.tag - 9)}
        let filterSevenTop = board.subviews.filter{($0.tag == view_ch.tag + 7)}
        let filterNineTop = board.subviews.filter{($0.tag == view_ch.tag + 9)}
        let filterSevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 7)}
        let filterNineBottom = board.subviews.filter{($0.tag == view_ch.tag - 9)}
        
        if gesture.state == .began {
            board.bringSubviewToFront(view_ch)
            for view in board.subviews {
                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9)) {
                    if view.backgroundColor != .white, view.subviews.isEmpty,  (filter.first(where: {$0.subviews.isEmpty}) != nil) {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                } else  {
                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 9) || view.tag == (view_ch.tag + 14)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white,  (filterSevenTop.first(where: {$0.subviews.isEmpty}) == nil), filterSevenTop.first?.subviews.first?.backgroundColor == .white {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }
                    else {
                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 18)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white,   (filterNineTop.first(where: {$0.subviews.isEmpty}) == nil), filterNineTop.first?.subviews.first?.backgroundColor == .white  {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            }
                        }
                    }
                }
            }
            for view in board.subviews {
                if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 9)) {
                    if view.backgroundColor != .white, view.subviews.isEmpty,  (filterBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                } else  {
                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 9) || view.tag == (view_ch.tag - 14)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white,  (filterSevenBottom.first(where: {$0.subviews.isEmpty}) == nil), filterSevenBottom.first?.subviews.first?.backgroundColor == .gray {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }
                    else {
                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 18)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white,   (filterNineBottom.first(where: {$0.subviews.isEmpty}) == nil), filterNineBottom.first?.subviews.first?.backgroundColor == .gray {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            }
                        }
                    }
                }
            }
        } else if gesture.state == .changed {
            let translation = gesture.translation(in: board)
            checker.transform = CGAffineTransform(
                translationX: translation.x, y: translation.y)
            
        } else if gesture.state == .ended {
            for view in board.subviews {
                if view.frame.contains(gesture.location(in: board)) {
                    if checker.backgroundColor == .gray,
                       currentMove == .grayMove,
                       (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white, filter.first(where: {$0.subviews.isEmpty}) != nil {
                            view.addSubview(checker)
                            gesture.view?.transform = .identity
                            checker.frame.origin = CGPoint(
                                x: view.frame.height / 8,
                                y: view.frame.height / 8)
                            for view in board.subviews {
                                if view.backgroundColor != .white {
                                    view.backgroundColor = .black
                                    view.layer.borderWidth = 0
                                }
                            }
                            currentMove = .whiteMove
                            saveCurrentMove = currentMove
                        }
                    } else {
                        if checker.backgroundColor == .gray,
                           currentMove == .grayMove,
                           (view.tag == (view_ch.tag + 9) || view.tag == (view_ch.tag + 14)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white,  (filterSevenTop.first(where: {$0.subviews.isEmpty}) == nil), filterSevenTop.first?.subviews.first?.backgroundColor == .white {
                                filterSevenTop.first?.subviews.first?.removeFromSuperview()
                                chessScoreGray.append(1)
                                print(chessScoreGray.count)
                                view.addSubview(checker)
                                gesture.view?.transform = .identity
                                checker.frame.origin = CGPoint(
                                    x: view.frame.height / 8,
                                    y: view.frame.height / 8)
                                for view in board.subviews {
                                    if view.backgroundColor != .white {
                                        view.backgroundColor = .black
                                        view.layer.borderWidth = 0
                                    }
                                }
                                currentMove = .grayMove
                                saveCurrentMove = currentMove
                            }
                        } else {
                            if checker.backgroundColor == .gray,
                               currentMove == .grayMove,
                               (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 18)) {
                                if view.subviews.isEmpty, view.backgroundColor != .white,   (filterNineTop.first(where: {$0.subviews.isEmpty}) == nil), filterNineTop.first?.subviews.first?.backgroundColor == .white  {
                                    filterNineTop.first?.subviews.first?.removeFromSuperview()
                                    chessScoreGray.append(1)
                                    print(chessScoreGray.count)
                                    view.addSubview(checker)
                                    gesture.view?.transform = .identity
                                    checker.frame.origin = CGPoint(
                                        x: view.frame.height / 8,
                                        y: view.frame.height / 8)
                                    for view in board.subviews {
                                        if view.backgroundColor != .white {
                                            view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                        }
                                    }
                                    currentMove = .grayMove
                                    saveCurrentMove = currentMove
                                    
                                }
                            } else {
                                for view in board.subviews {
                                    if view.frame.contains(gesture.location(in: board)) {
                                        if currentMove == .whiteMove,
                                           checker.backgroundColor == .white,
                                           (view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 9)) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, (filterBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                view.addSubview(checker)
                                                gesture.view?.transform = .identity
                                                checker.frame.origin = CGPoint(
                                                    x: view.frame.height / 8,
                                                    y: view.frame.height / 8)
                                                for view in board.subviews {
                                                    if view.backgroundColor != .white {
                                                        view.backgroundColor = .black
                                                        view.layer.borderWidth = 0
                                                        
                                                    }
                                                }
                                                currentMove = .grayMove
                                                saveCurrentMove = currentMove
                                                
                                            }
                                        } else {
                                            for view in board.subviews {
                                                if view.frame.contains(gesture.location(in: board)) {
                                                    if currentMove == .whiteMove,
                                                       checker.backgroundColor == .white,
                                                       (view.tag == (view_ch.tag - 9) || view.tag == (view_ch.tag - 14)) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, (filterSevenBottom.first(where: {$0.subviews.isEmpty}) == nil) {
                                                            filterSevenBottom.first?.subviews.first?.removeFromSuperview()
                                                            chessScoreWhite.append(1)
                                                            print(chessScoreWhite.count)
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                    
                                                                }
                                                            }
                                                            currentMove = .whiteMove
                                                            saveCurrentMove = currentMove
                                                            
                                                        }
                                                    } else {
                                                        for view in board.subviews {
                                                            if view.frame.contains(gesture.location(in: board)) {
                                                                if currentMove == .whiteMove,
                                                                   checker.backgroundColor == .white,
                                                                   (view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 18)) {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white,  (filterNineBottom.first(where: {$0.subviews.isEmpty}) == nil) {
                                                                        filterNineBottom.first?.subviews.first?.removeFromSuperview()
                                                                        chessScoreWhite.append(1)
                                                                        print(chessScoreWhite.count)
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                                
                                                                            }
                                                                        }
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn) {
                                                                            gesture.view?.transform = .identity
                                                                        }
                                                                        for view in board.subviews {
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    
                                                                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn) {
                                                                        gesture.view?.transform = .identity
                                                                    }
                                                                    for view in board.subviews {
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    func setupAction() {
        buttonReset.addTarget(self, action: #selector(resetBoard), for: .touchUpInside)
        buttonSave.addTarget(self, action: #selector(saveBoardWithCheckers), for: .touchUpInside)
        buttonLoad.addTarget(self, action: #selector(loadSaveBoard), for: .touchUpInside)
        buttonBack.addTarget(self, action: #selector(buttonBackClick), for: .touchUpInside)
    }
    
    @objc func resetBoard() {
        let switchAlert = UIAlertController(title: "Are you sure you want to reset?", message: "The game will restart", preferredStyle: .actionSheet)
        
        switchAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            for view in self.board.subviews{
                view.removeFromSuperview()
            }
            self.chessBoard(view: self.board)
            self.timer.invalidate()
            self.seconds = 0
            self.setupTimer()
        }))
        switchAlert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
        }))
        
        present(switchAlert, animated: true, completion: nil)
        
    }
    
    //MARK: SAVE
    @objc func saveBoardWithCheckers() {
        
        let switchAlert = UIAlertController(title: "Save?", message: "", preferredStyle: .actionSheet)
        
        switchAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            
            self.arrayCheckers.removeAll()
            for view in self.board.subviews {
                if !view.subviews.isEmpty {
                    guard let color = view.subviews.first?.backgroundColor else { return }
                    self.arrayCheckers.append(Checker(color: color, numberCell: view.tag))
                }
            }
            if let data = try? NSKeyedArchiver.archivedData(withRootObject: self.arrayCheckers, requiringSecureCoding: true) {
                UserDefaults.standard.set(data, forKey: "Checkers")
            }
            UserDefaults.standard.set(self.labelTimer.text, forKey: "Timer")
            UserDefaults.standard.set(self.saveCurrentMove, forKey: "CurrentMove")
        }))
        
        switchAlert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
        }))
        
        present(switchAlert, animated: true, completion: nil)
    }
    
    @objc func loadSaveBoard() {
        
        for view in self.board.subviews {
            view.subviews.first?.removeFromSuperview()
        }
        
        if let data = UserDefaults.standard.object(forKey: "Checkers") as? Data {
            if let checkers = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Checker] {
                self.arrayCheckers = checkers
            }
        }
        
        for view in self.board.subviews{
            if let checkers = self.arrayCheckers.first(where: { $0.numberCell == view.tag }) {
                if view.subviews.isEmpty {
                    let addChecker = self.creationOfCheckers(color: checkers.color)
                    view.addSubview(addChecker)
                    
                    addChecker.center = CGPoint(x: view.bounds.width / 2.0, y: view.bounds.height / 2.0 )
                }
            }
        }
        labelTimer.text = UserDefaults.standard.object(forKey: "Timer") as? String
        namePlayerGray.text = UserDefaults.standard.object(forKey: "namePlayerGray") as? String
        namePlayerGray.text = UserDefaults.standard.object(forKey: "namePlayerWhite") as? String
        currentMove = UserDefaults.standard.object(forKey: "CurrentMove") as! CheckerMove
    }
    
    @objc func buttonBackClick() {
        guard let mainVC = MainMenuViewController.getInstanceViewController else { return }
        self.navigationController?.viewControllers = [mainVC]
        //        navigationController?.popViewController(animated: true)
    }
}














