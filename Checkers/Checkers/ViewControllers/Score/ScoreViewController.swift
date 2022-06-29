//
//  ScoreViewController.swift
//  Checkers
//
//  Created by mac on 8.03.22.
//

import UIKit
import Lottie

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var lottieView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var checkers: [Checkers] = []
    
    @IBOutlet weak var deleteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        deleteButton.isHidden = true
        lottieView.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ScoreTableViewCell", bundle: nil), forCellReuseIdentifier: "ScoreTableViewCell")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupUI()
    }
    private func setupUI() {
        let jsonName = "15120-delete"
        let animation = Animation.named(jsonName)
        let animationView = AnimationView(animation: animation)
        let sizeWidth = lottieView.frame.size.width
        let sizeHeight = lottieView.frame.size.height
        animationView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: sizeWidth, height: sizeHeight))
        animationView.contentMode = .scaleAspectFit
        lottieView.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
    }
    
    private func getData() {
        let checkersDB = CoreDataManager.shared.getFromDB()
        checkers = checkersDB
    }
    
    @IBAction func clickButtonBack(_ sender: UIButton) {
        guard let mainVC = MainMenuViewController.getInstanceViewController else { return }
        self.navigationController?.viewControllers = [mainVC]
    }
    
    @IBAction func deleteButton(_ sender: UIButton) {
        print("click")
        self.checkers.removeAll()
        CoreDataManager.shared.deleteAllInDB()
        self.tableView.reloadData()
        deleteButton.isHidden = true
        lottieView.isHidden = true
    }
}

extension ScoreViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124.0
    }
}
extension ScoreViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if checkers.count > 0 {
            deleteButton.isHidden = false
            lottieView.isHidden = false
        }
        return checkers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ScoreTableViewCell") as? ScoreTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        let gameSave = checkers[indexPath.row]
        cell.whiteName.text = "\(gameSave.nameWhitePlayer ?? "")"
        cell.blackName.text = "\(gameSave.nameGrayPlayer ?? "")"
        cell.scoreGray.text = "\(gameSave.scoreGrayPlayer ?? 0)"
        cell.scoreWhite.text = "\(gameSave.scoreWhitePlayer ?? 0)"
        cell.timeLabel.text = "\(gameSave.timer ?? "")"
        cell.dateLabel.text = "\(gameSave.date ?? "")"
        
        guard let greyPlayerScore = gameSave.scoreGrayPlayer, let whitePlayerScore = gameSave.scoreWhitePlayer else { return cell }
        if greyPlayerScore > whitePlayerScore {
            cell.imageViewWinner.isHidden = true
        } else {
            if whitePlayerScore > greyPlayerScore {
                cell.imageViewWinnerGray.isHidden = true
            } else {
                cell.imageViewWinnerGray.isHidden = false
            }
        }
        return cell
    }
}

