//
//  Queen.swift
//  Checkers
//
//  Created by mac on 21.06.22.
//
import UIKit

extension GameViewController {
    
    func queenStepsGray(gesture: UIPanGestureRecognizer) {
    guard let checker = gesture.view, let view_ch = checker.superview else {return}
    let sevenTop = board.subviews.filter{($0.tag == view_ch.tag + 7)}
    let nineTop = board.subviews.filter{($0.tag == view_ch.tag + 9)}
    let fourteenTop = board.subviews.filter{($0.tag == view_ch.tag + 14)}
    let eighteenTop = board.subviews.filter{($0.tag == view_ch.tag + 18)}
    let twentyOneTop = board.subviews.filter{($0.tag == view_ch.tag + 21)}
    let twentySevenTop = board.subviews.filter{($0.tag == view_ch.tag + 27)}
    let twentyEightTop = board.subviews.filter{($0.tag == view_ch.tag + 28)}
    let thirtyFiveTop = board.subviews.filter{($0.tag == view_ch.tag + 35)}
    let thirtySixTop = board.subviews.filter{($0.tag == view_ch.tag + 36)}
    let fortyTwoTop = board.subviews.filter{($0.tag == view_ch.tag + 42)}
    let fortyFiveTop = board.subviews.filter{($0.tag == view_ch.tag + 45)}
    let sevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 7)}
    let nineBottom = board.subviews.filter{($0.tag == view_ch.tag - 9)}
    let fourteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 14)}
    let eighteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 18)}
    let twentyOneBottom = board.subviews.filter{($0.tag == view_ch.tag - 21)}
    let twentySevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 27)}
    let twentyEightBottom = board.subviews.filter{($0.tag == view_ch.tag - 28)}
    let thirtyFiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 35)}
    let thirtySixBottom = board.subviews.filter{($0.tag == view_ch.tag - 36)}
    let fortyTwoBottom = board.subviews.filter{($0.tag == view_ch.tag - 42)}
    let fortyFiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 45)}
        
//  MARK: Step blue FORWARD
    for view in board.subviews {
        if view.frame.contains(gesture.location(in: board)) {
            if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, (view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 9)) {
                if view.subviews.isEmpty, view.backgroundColor != .white {
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
                    canStepGray(gesture: gesture)
                    canStepWhite(gesture: gesture)
                    canStepQueenBlue(gesture: gesture)
                    canStepQueenYellow(gesture: gesture)
                }
            } else {
                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 14) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow {
                        sevenTop.first?.subviews.first?.removeFromSuperview()
                        chessScoreGray += 1
                        labelScoreGray.text = "\(chessScoreGray)"
                        finishGame()
                        view.addSubview(checker)
                        gesture.view?.transform = .identity
                        checker.frame.origin = CGPoint(
                            x: view.frame.height / 8,
                            y: view.frame.height / 8)
                        for view in board.subviews {
                            if knockDownGrayChecker(gesture: gesture) == true {
                                currentMove = .grayMove
                                saveCurrentMove = currentMove
                            } else {
                                currentMove = .whiteMove
                                saveCurrentMove = currentMove
                            }
                            if view.backgroundColor != .white {
                                view.backgroundColor = .black
                                view.layer.borderWidth = 0
                            }
                        }
                        canStepGray(gesture: gesture)
                        canStepWhite(gesture: gesture)
                        canStepQueenBlue(gesture: gesture)
                        canStepQueenYellow(gesture: gesture)
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil {
                       view.addSubview(checker)
                       gesture.view?.transform = .identity
                        checker.frame.origin = CGPoint(
                            x: view.frame.height / 8,
                            y: view.frame.height / 8)
                        for view in board.subviews {
                            if knockDownGrayChecker(gesture: gesture) == true {
                                currentMove = .grayMove
                                saveCurrentMove = currentMove
                            } else {
                                currentMove = .whiteMove
                                saveCurrentMove = currentMove
                            }
                            if view.backgroundColor != .white {
                                view.backgroundColor = .black
                                view.layer.borderWidth = 0
                                }
                            }
                                canStepGray(gesture: gesture)
                                canStepWhite(gesture: gesture)
                                canStepQueenBlue(gesture: gesture)
                                canStepQueenYellow(gesture: gesture)
                            }
                        }
                    } else {
                        if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty),  checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 18) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow  {
                                nineTop.first?.subviews.first?.removeFromSuperview()
                                chessScoreGray += 1
                                labelScoreGray.text = "\(chessScoreGray)"
                                finishGame()
                                view.addSubview(checker)
                                gesture.view?.transform = .identity
                                checker.frame.origin = CGPoint(
                                    x: view.frame.height / 8,
                                    y: view.frame.height / 8)
                                for view in board.subviews {
                                    if view.backgroundColor != .white {
                                        view.backgroundColor = .black
                                        view.layer.borderWidth = 0
                                        if knockDownGrayChecker(gesture: gesture) == true {
                                            currentMove = .grayMove
                                            saveCurrentMove = currentMove
                                        } else {
                                            currentMove = .whiteMove
                                            saveCurrentMove = currentMove
                                        }
                                    }
                                }
                                canStepGray(gesture: gesture)
                                canStepWhite(gesture: gesture)
                                canStepQueenBlue(gesture: gesture)
                                canStepQueenYellow(gesture: gesture)
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil {
                                    view.addSubview(checker)
                                    gesture.view?.transform = .identity
                                    checker.frame.origin = CGPoint(
                                        x: view.frame.height / 8,
                                        y: view.frame.height / 8)
                                    for view in board.subviews {
                                        if knockDownGrayChecker(gesture: gesture) == true {
                                            currentMove = .grayMove
                                            saveCurrentMove = currentMove
                                        } else {
                                            currentMove = .whiteMove
                                            saveCurrentMove = currentMove
                                        }
                                        if view.backgroundColor != .white {
                                            view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                        }
                                    }
                                    canStepGray(gesture: gesture)
                                    canStepWhite(gesture: gesture)
                                    canStepQueenBlue(gesture: gesture)
                                    canStepQueenYellow(gesture: gesture)
                                }
                            }
                        } else {
                            if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 21) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil)  {
                                    sevenTop.first?.subviews.first?.removeFromSuperview()
                                    fourteenTop.first?.subviews.first?.removeFromSuperview()
                                    chessScoreGray += 1
                                    labelScoreGray.text = "\(chessScoreGray)"
                                    finishGame()
                                    view.addSubview(checker)
                                    gesture.view?.transform = .identity
                                    checker.frame.origin = CGPoint(
                                        x: view.frame.height / 8,
                                        y: view.frame.height / 8)
                                    for view in board.subviews {
                                        if view.backgroundColor != .white {
                                            view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                currentMove = .grayMove
                                                saveCurrentMove = currentMove
                                            } else {
                                                currentMove = .whiteMove
                                                saveCurrentMove = currentMove
                                            }
                                        }
                                    }
                                    canStepGray(gesture: gesture)
                                    canStepWhite(gesture: gesture)
                                    canStepQueenBlue(gesture: gesture)
                                    canStepQueenYellow(gesture: gesture)
                                } else {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                        view.addSubview(checker)
                                        gesture.view?.transform = .identity
                                        checker.frame.origin = CGPoint(
                                            x: view.frame.height / 8,
                                            y: view.frame.height / 8)
                                        for view in board.subviews {
                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                currentMove = .grayMove
                                                saveCurrentMove = currentMove
                                            } else {
                                                currentMove = .whiteMove
                                                saveCurrentMove = currentMove
                                            }
                                            if view.backgroundColor != .white {
                                                view.backgroundColor = .black
                                                view.layer.borderWidth = 0
                                            }
                                        }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                    }
                                }
                            } else {
                                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 27) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil)  {
                                        nineTop.first?.subviews.first?.removeFromSuperview()
                                        eighteenTop.first?.subviews.first?.removeFromSuperview()
                                        chessScoreGray += 1
                                        labelScoreGray.text = "\(chessScoreGray)"
                                        finishGame()
                                        view.addSubview(checker)
                                        gesture.view?.transform = .identity
                                        checker.frame.origin = CGPoint(
                                            x: view.frame.height / 8,
                                            y: view.frame.height / 8)
                                        for view in board.subviews {
                                            if view.backgroundColor != .white {
                                                view.backgroundColor = .black
                                                view.layer.borderWidth = 0
                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                    currentMove = .grayMove
                                                    saveCurrentMove = currentMove
                                                } else {
                                                    currentMove = .whiteMove
                                                    saveCurrentMove = currentMove
                                                }
                                            }
                                        }
                                        canStepGray(gesture: gesture)
                                        canStepWhite(gesture: gesture)
                                        canStepQueenBlue(gesture: gesture)
                                        canStepQueenYellow(gesture: gesture)
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                x: view.frame.height / 8,
                                                y: view.frame.height / 8)
                                            for view in board.subviews {
                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                    currentMove = .grayMove
                                                    saveCurrentMove = currentMove
                                                } else {
                                                    currentMove = .whiteMove
                                                    saveCurrentMove = currentMove
                                                }
                                                if view.backgroundColor != .white {
                                                    view.backgroundColor = .black
                                                    view.layer.borderWidth = 0
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                        }
                                    }
                                } else {
                                    if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 36) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                            nineTop.first?.subviews.first?.removeFromSuperview()
                                            eighteenTop.first?.subviews.first?.removeFromSuperview()
                                            twentySevenTop.first?.subviews.first?.removeFromSuperview()
                                            chessScoreGray += 1
                                            labelScoreGray.text = "\(chessScoreGray)"
                                            finishGame()
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                x: view.frame.height / 8,
                                                y: view.frame.height / 8)
                                            for view in board.subviews {
                                                if view.backgroundColor != .white {
                                                    view.backgroundColor = .black
                                                    view.layer.borderWidth = 0
                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                        currentMove = .grayMove
                                                        saveCurrentMove = currentMove
                                                    } else {
                                                        currentMove = .whiteMove
                                                        saveCurrentMove = currentMove
                                                    }
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                        } else {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                view.addSubview(checker)
                                                gesture.view?.transform = .identity
                                                checker.frame.origin = CGPoint(
                                                    x: view.frame.height / 8,
                                                    y: view.frame.height / 8)
                                                for view in board.subviews {
                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                        currentMove = .grayMove
                                                        saveCurrentMove = currentMove
                                                    } else {
                                                        currentMove = .whiteMove
                                                        saveCurrentMove = currentMove
                                                    }
                                                    if view.backgroundColor != .white {
                                                        view.backgroundColor = .black
                                                        view.layer.borderWidth = 0
                                                    }
                                                }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                            }
                                        }
            } else {
                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 45) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                        nineTop.first?.subviews.first?.removeFromSuperview()
                        eighteenTop.first?.subviews.first?.removeFromSuperview()
                        twentySevenTop.first?.subviews.first?.removeFromSuperview()
                        thirtySixTop.first?.subviews.first?.removeFromSuperview()
                        chessScoreGray += 1
                        labelScoreGray.text = "\(chessScoreGray)"
                        finishGame()
                        view.addSubview(checker)
                        gesture.view?.transform = .identity
                        checker.frame.origin = CGPoint(
                            x: view.frame.height / 8,
                            y: view.frame.height / 8)
                        for view in board.subviews {
                            if view.backgroundColor != .white {
                               view.backgroundColor = .black
                               view.layer.borderWidth = 0
                            if knockDownGrayChecker(gesture: gesture) == true {
                               currentMove = .grayMove
                               saveCurrentMove = currentMove
                            } else {
                               currentMove = .whiteMove
                               saveCurrentMove = currentMove
                                }
                            }
                        }
                        canStepGray(gesture: gesture)
                        canStepWhite(gesture: gesture)
                        canStepQueenBlue(gesture: gesture)
                        canStepQueenYellow(gesture: gesture)
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil {
                        view.addSubview(checker)
                        gesture.view?.transform = .identity
                        checker.frame.origin = CGPoint(
                              x: view.frame.height / 8,
                              y: view.frame.height / 8)
                            for view in board.subviews {
                               if knockDownGrayChecker(gesture: gesture) == true {
                                  currentMove = .grayMove
                                  saveCurrentMove = currentMove
                             } else {
                                  currentMove = .whiteMove
                                  saveCurrentMove = currentMove
                               }
                                  if view.backgroundColor != .white {
                                     view.backgroundColor = .black
                                     view.layer.borderWidth = 0
                               }
                          }
                          canStepGray(gesture: gesture)
                          canStepWhite(gesture: gesture)
                          canStepQueenBlue(gesture: gesture)
                          canStepQueenYellow(gesture: gesture)
                        }
                    }
                    } else {
                       if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty),  checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 54) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .white || fortyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                nineTop.first?.subviews.first?.removeFromSuperview()
                                eighteenTop.first?.subviews.first?.removeFromSuperview()
                                twentySevenTop.first?.subviews.first?.removeFromSuperview()
                                thirtySixTop.first?.subviews.first?.removeFromSuperview()
                                fortyFiveTop.first?.subviews.first?.removeFromSuperview()
                                chessScoreGray += 1
                                labelScoreGray.text = "\(chessScoreGray)"
                                finishGame()
                                view.addSubview(checker)
                                gesture.view?.transform = .identity
                               checker.frame.origin = CGPoint(
                                      x: view.frame.height / 8,
                                      y: view.frame.height / 8)
                                      for view in board.subviews {
                                         if view.backgroundColor != .white {
                                            view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                            if knockDownGrayChecker(gesture: gesture) == true {
                                               currentMove = .grayMove
                                               saveCurrentMove = currentMove
                                             } else {
                                               currentMove = .whiteMove
                                               saveCurrentMove = currentMove
                                                 }
                                              }
                                          }
                                          canStepGray(gesture: gesture)
                                          canStepWhite(gesture: gesture)
                                          canStepQueenBlue(gesture: gesture)
                                          canStepQueenYellow(gesture: gesture)
                                } else {
                                     if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
                                         view.addSubview(checker)
                                         gesture.view?.transform = .identity
                                         checker.frame.origin = CGPoint(
                                                 x: view.frame.height / 8,
                                                 y: view.frame.height / 8)
                                                 for view in board.subviews {
                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                       currentMove = .grayMove
                                                       saveCurrentMove = currentMove
                                                    } else {
                                                       currentMove = .whiteMove
                                                       saveCurrentMove = currentMove
                                                    }
                                                    if view.backgroundColor != .white {
                                                       view.backgroundColor = .black
                                                       view.layer.borderWidth = 0
                                                    }
                                                }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                            }
                                        }
                                    } else {
                                        if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 28) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                sevenTop.first?.subviews.first?.removeFromSuperview()
                                                fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                chessScoreGray += 1
                                                labelScoreGray.text = "\(chessScoreGray)"
                                                finishGame()
                                                view.addSubview(checker)
                                                gesture.view?.transform = .identity
                                                checker.frame.origin = CGPoint(
                                                    x: view.frame.height / 8,
                                                    y: view.frame.height / 8)
                                                for view in board.subviews {
                                                    if view.backgroundColor != .white {
                                                       view.backgroundColor = .black
                                                       view.layer.borderWidth = 0
                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                            currentMove = .grayMove
                                                            saveCurrentMove = currentMove
                                                        } else {
                                                            currentMove = .whiteMove
                                                            saveCurrentMove = currentMove
                                                        }
                                                    }
                                                }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                            } else {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                    view.addSubview(checker)
                                                    gesture.view?.transform = .identity
                                                    checker.frame.origin = CGPoint(
                                                        x: view.frame.height / 8,
                                                        y: view.frame.height / 8)
                                                    for view in board.subviews {
                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                            currentMove = .grayMove
                                                            saveCurrentMove = currentMove
                                                        } else {
                                                            currentMove = .whiteMove
                                                            saveCurrentMove = currentMove
                                                        }
                                                        if view.backgroundColor != .white {
                                                            view.backgroundColor = .black
                                                            view.layer.borderWidth = 0
                                                        }
                                                    }
                                                    canStepGray(gesture: gesture)
                                                    canStepWhite(gesture: gesture)
                                                    canStepQueenBlue(gesture: gesture)
                                                    canStepQueenYellow(gesture: gesture)
                                                }
                                            }
                                    } else {
                                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 35) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                        sevenTop.first?.subviews.first?.removeFromSuperview()
                                        fourteenTop.first?.subviews.first?.removeFromSuperview()
                                        twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                        twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                        chessScoreGray += 1
                                        labelScoreGray.text = "\(chessScoreGray)"
                                        finishGame()
                                        view.addSubview(checker)
                                        gesture.view?.transform = .identity
                                        checker.frame.origin = CGPoint(
                                            x: view.frame.height / 8,
                                            y: view.frame.height / 8)
                                        for view in board.subviews {
                                            if view.backgroundColor != .white {
                                                view.backgroundColor = .black
                                                view.layer.borderWidth = 0
                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                   currentMove = .grayMove
                                                   saveCurrentMove = currentMove
                                            } else {
                                                   currentMove = .whiteMove
                                                   saveCurrentMove = currentMove
                                                }
                                            }
                                        }
                                        canStepGray(gesture: gesture)
                                        canStepWhite(gesture: gesture)
                                        canStepQueenBlue(gesture: gesture)
                                        canStepQueenYellow(gesture: gesture)
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil {
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                x: view.frame.height / 8,
                                                y: view.frame.height / 8)
                                            for view in board.subviews {
                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                    currentMove = .grayMove
                                                    saveCurrentMove = currentMove
                                                } else {
                                                    currentMove = .whiteMove
                                                    saveCurrentMove = currentMove
                                                }
                                                if view.backgroundColor != .white {
                                                    view.backgroundColor = .black
                                                    view.layer.borderWidth = 0
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                        }
                                    }
                                } else {
                                    if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 42) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                            sevenTop.first?.subviews.first?.removeFromSuperview()
                                            fourteenTop.first?.subviews.first?.removeFromSuperview()
                                            twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                            twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                            thirtyFiveTop.first?.subviews.first?.removeFromSuperview()
                                            chessScoreGray += 1
                                            labelScoreGray.text = "\(chessScoreGray)"
                                            finishGame()
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                x: view.frame.height / 8,
                                                y: view.frame.height / 8)
                                            for view in board.subviews {
                                                if view.backgroundColor != .white {
                                                    view.backgroundColor = .black
                                                    view.layer.borderWidth = 0
                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                        currentMove = .grayMove
                                                        saveCurrentMove = currentMove
                                                    } else {
                                                        currentMove = .whiteMove
                                                        saveCurrentMove = currentMove
                                                    }
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                        } else {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                view.addSubview(checker)
                                                gesture.view?.transform = .identity
                                                checker.frame.origin = CGPoint(
                                                    x: view.frame.height / 8,
                                                    y: view.frame.height / 8)
                                                for view in board.subviews {
                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                        currentMove = .grayMove
                                                        saveCurrentMove = currentMove
                                                    } else {
                                                        currentMove = .whiteMove
                                                        saveCurrentMove = currentMove
                                                    }
                                                    if view.backgroundColor != .white {
                                                        view.backgroundColor = .black
                                                        view.layer.borderWidth = 0
                                                    }
                                                }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                            }
                                        }
                                    } else {
                                        if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 49) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .white || fortyTwoTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                sevenTop.first?.subviews.first?.removeFromSuperview()
                                                fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                                thirtyFiveTop.first?.subviews.first?.removeFromSuperview()
                                                fortyTwoTop.first?.subviews.first?.removeFromSuperview()
                                                chessScoreGray += 1
                                                labelScoreGray.text = "\(chessScoreGray)"
                                                finishGame()
                                                view.addSubview(checker)
                                                gesture.view?.transform = .identity
                                                checker.frame.origin = CGPoint(
                                                    x: view.frame.height / 8,
                                                    y: view.frame.height / 8)
                                                for view in board.subviews {
                                                    if view.backgroundColor != .white {
                                                        view.backgroundColor = .black
                                                        view.layer.borderWidth = 0
                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                            currentMove = .grayMove
                                                            saveCurrentMove = currentMove
                                                        } else {
                                                            currentMove = .whiteMove
                                                            saveCurrentMove = currentMove
                                                        }
                                                    }
                                                }
                                                canStepGray(gesture: gesture)
                                                canStepWhite(gesture: gesture)
                                                canStepQueenBlue(gesture: gesture)
                                                canStepQueenYellow(gesture: gesture)
                                            } else {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                    view.addSubview(checker)
                                                    gesture.view?.transform = .identity
                                                    checker.frame.origin = CGPoint(
                                                        x: view.frame.height / 8,
                                                        y: view.frame.height / 8)
                                                    for view in board.subviews {
                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                            currentMove = .grayMove
                                                            saveCurrentMove = currentMove
                                                        } else {
                                                            currentMove = .whiteMove
                                                            saveCurrentMove = currentMove
                                                        }
                                                        if view.backgroundColor != .white {
                                                            view.backgroundColor = .black
                                                            view.layer.borderWidth = 0
                                                        }
                                                    }
                                                    canStepGray(gesture: gesture)
                                                    canStepWhite(gesture: gesture)
                                                    canStepQueenBlue(gesture: gesture)
                                                    canStepQueenYellow(gesture: gesture)
                                                }
                                            }
                                            //   MARK: Step blue BACK
                                        } else {
                                            if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 14) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, (sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) {
                                                    sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                    chessScoreGray += 1
                                                    labelScoreGray.text = "\(chessScoreGray)"
                                                    finishGame()
                                                    view.addSubview(checker)
                                                    gesture.view?.transform = .identity
                                                    checker.frame.origin = CGPoint(
                                                        x: view.frame.height / 8,
                                                        y: view.frame.height / 8)
                                                    for view in board.subviews {
                                                        if view.backgroundColor != .white {
                                                            view.backgroundColor = .black
                                                            view.layer.borderWidth = 0
                                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                                currentMove = .grayMove
                                                                saveCurrentMove = currentMove
                                                            } else {
                                                                currentMove = .whiteMove
                                                                saveCurrentMove = currentMove
                                                            }
                                                        }
                                                    }
                                                    canStepGray(gesture: gesture)
                                                    canStepWhite(gesture: gesture)
                                                    canStepQueenBlue(gesture: gesture)
                                                    canStepQueenYellow(gesture: gesture)
                                                } else {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                        view.addSubview(checker)
                                                        gesture.view?.transform = .identity
                                                        checker.frame.origin = CGPoint(
                                                            x: view.frame.height / 8,
                                                            y: view.frame.height / 8)
                                                        for view in board.subviews {
                                                            if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                            }
                                                        }
                                                        canStepGray(gesture: gesture)
                                                        canStepWhite(gesture: gesture)
                                                        canStepQueenBlue(gesture: gesture)
                                                        canStepQueenYellow(gesture: gesture)
                                                    }
                                                }
                                            } else {
                                                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 18) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow {
                                                        nineBottom.first?.subviews.first?.removeFromSuperview()
                                                        chessScoreGray += 1
                                                        labelScoreGray.text = "\(chessScoreGray)"
                                                        finishGame()
                                                        view.addSubview(checker)
                                                        gesture.view?.transform = .identity
                                                        checker.frame.origin = CGPoint(
                                                            x: view.frame.height / 8,
                                                            y: view.frame.height / 8)
                                                        for view in board.subviews {
                                                            if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                            }
                                                        }
                                                        canStepGray(gesture: gesture)
                                                        canStepWhite(gesture: gesture)
                                                        canStepQueenBlue(gesture: gesture)
                                                        canStepQueenYellow(gesture: gesture)
                                                    } else {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                                        currentMove = .grayMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    }
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        }
                                                    }
  } else {
       if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 21) {
            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
                sevenBottom.first?.subviews.first?.removeFromSuperview()
                fourteenBottom.first?.subviews.first?.removeFromSuperview()
                chessScoreGray += 1
                labelScoreGray.text = "\(chessScoreGray)"
                finishGame()
                view.addSubview(checker)
                gesture.view?.transform = .identity
                checker.frame.origin = CGPoint(
                      x: view.frame.height / 8,
                      y: view.frame.height / 8)
                      for view in board.subviews {
                         if view.backgroundColor != .white {
                            view.backgroundColor = .black
                            view.layer.borderWidth = 0
                              if knockDownGrayChecker(gesture: gesture) == true {
                                 currentMove = .grayMove
                                 saveCurrentMove = currentMove
                            } else {
                                 currentMove = .whiteMove
                                 saveCurrentMove = currentMove
                                }
                            }
                        }
                        canStepGray(gesture: gesture)
                        canStepWhite(gesture: gesture)
                        canStepQueenBlue(gesture: gesture)
                        canStepQueenYellow(gesture: gesture)
                    } else {
                       if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                           view.addSubview(checker)
                           gesture.view?.transform = .identity
                           checker.frame.origin = CGPoint(
                                  x: view.frame.height / 8,
                                  y: view.frame.height / 8)
                                  for view in board.subviews {
                                    if knockDownGrayChecker(gesture: gesture) == true {
                                       currentMove = .grayMove
                                       saveCurrentMove = currentMove
                                } else {
                                       currentMove = .whiteMove
                                       saveCurrentMove = currentMove
                                    }
                                      if view.backgroundColor != .white {
                                         view.backgroundColor = .black
                                         view.layer.borderWidth = 0
                                      }
                                }
                                canStepGray(gesture: gesture)
                                canStepWhite(gesture: gesture)
                                canStepQueenBlue(gesture: gesture)
                                canStepQueenYellow(gesture: gesture)
                                                            }
                                                        }
                       } else {
                           if  (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 28) {
                               if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                chessScoreGray += 1
                                                                labelScoreGray.text = "\(chessScoreGray)"
                                                                finishGame()
                                                                view.addSubview(checker)
                                                                gesture.view?.transform = .identity
                                                                checker.frame.origin = CGPoint(
                                                                    x: view.frame.height / 8,
                                                                    y: view.frame.height / 8)
                                                                for view in board.subviews {
                                                                    if view.backgroundColor != .white {
                                                                        view.backgroundColor = .black
                                                                        view.layer.borderWidth = 0
                                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                    }
                                                                }
                                                                canStepGray(gesture: gesture)
                                                                canStepWhite(gesture: gesture)
                                                                canStepQueenBlue(gesture: gesture)
                                                                canStepQueenYellow(gesture: gesture)
                                                            } else {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                }
                                                            }
                        } else {
                            if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 35) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                    fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                    twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                    twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                                                    chessScoreGray += 1
                                                                    labelScoreGray.text = "\(chessScoreGray)"
                                                                    finishGame()
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                } else {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                            }
                                                                        }
                                                                        canStepGray(gesture: gesture)
                                                                        canStepWhite(gesture: gesture)
                                                                        canStepQueenBlue(gesture: gesture)
                                                                        canStepQueenYellow(gesture: gesture)
                                                                    }
                                                                }
                           } else {
                               if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 42) {
                                   if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                        sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                        fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                        twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                        twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                                                        thirtyFiveBottom.first?.subviews.first?.removeFromSuperview()
                                                                        chessScoreGray += 1
                                                                        labelScoreGray.text = "\(chessScoreGray)"
                                                                        finishGame()
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                                    currentMove = .grayMove
                                                                                    saveCurrentMove = currentMove
                                                                                } else {
                                                                                    currentMove = .whiteMove
                                                                                    saveCurrentMove = currentMove
                                                                                }
                                                                            }
                                                                        }
                                                                        canStepGray(gesture: gesture)
                                                                        canStepWhite(gesture: gesture)
                                                                        canStepQueenBlue(gesture: gesture)
                                                                        canStepQueenYellow(gesture: gesture)
                                                                    } else {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                            view.addSubview(checker)
                                                                            gesture.view?.transform = .identity
                                                                            checker.frame.origin = CGPoint(
                                                                                x: view.frame.height / 8,
                                                                                y: view.frame.height / 8)
                                                                            for view in board.subviews {
                                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                                    currentMove = .grayMove
                                                                                    saveCurrentMove = currentMove
                                                                                } else {
                                                                                    currentMove = .whiteMove
                                                                                    saveCurrentMove = currentMove
                                                                                }
                                                                                if view.backgroundColor != .white {
                                                                                    view.backgroundColor = .black
                                                                                    view.layer.borderWidth = 0
                                                                                }
                                                                            }
                                                                            canStepGray(gesture: gesture)
                                                                            canStepWhite(gesture: gesture)
                                                                            canStepQueenBlue(gesture: gesture)
                                                                            canStepQueenYellow(gesture: gesture)
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 49) {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .white || fortyTwoBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                            sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                            fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                            twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                            twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                                                            thirtyFiveBottom.first?.subviews.first?.removeFromSuperview()
                                                                            fortyTwoBottom.first?.subviews.first?.removeFromSuperview()
                                                                            chessScoreGray += 1
                                                                            labelScoreGray.text = "\(chessScoreGray)"
                                                                            finishGame()
                                                                            view.addSubview(checker)
                                                                            gesture.view?.transform = .identity
                                                                            checker.frame.origin = CGPoint(
                                                                                x: view.frame.height / 8,
                                                                                y: view.frame.height / 8)
                                                                            for view in board.subviews {
                                                                                if view.backgroundColor != .white {
                                                                                    view.backgroundColor = .black
                                                                                    view.layer.borderWidth = 0
                                                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                                                        currentMove = .grayMove
                                                                                        saveCurrentMove = currentMove
                                                                                    } else {
                                                                                        currentMove = .whiteMove
                                                                                        saveCurrentMove = currentMove
                                                                                    }
                                                                                }
                                                                            }
                                                                            canStepGray(gesture: gesture)
                                                                            canStepWhite(gesture: gesture)
                                                                            canStepQueenBlue(gesture: gesture)
                                                                            canStepQueenYellow(gesture: gesture)
                                                                        } else {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                view.addSubview(checker)
                                                                                gesture.view?.transform = .identity
                                                                                checker.frame.origin = CGPoint(
                                                                                    x: view.frame.height / 8,
                                                                                    y: view.frame.height / 8)
                                                                                for view in board.subviews {
                                                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                                                        currentMove = .grayMove
                                                                                        saveCurrentMove = currentMove
                                                                                    } else {
                                                                                        currentMove = .whiteMove
                                                                                        saveCurrentMove = currentMove
                                                                                    }
                                                                                    if view.backgroundColor != .white {
                                                                                        view.backgroundColor = .black
                                                                                        view.layer.borderWidth = 0
                                                                                    }
                                                                                }
                                                                                canStepGray(gesture: gesture)
                                                                                canStepWhite(gesture: gesture)
                                                                                canStepQueenBlue(gesture: gesture)
                                                                                canStepQueenYellow(gesture: gesture)
                                                                            }
                                                                        }
                                                                    } else {
                                                                        if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 27) {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
                                                                                nineBottom.first?.subviews.first?.removeFromSuperview()
                                                                                eighteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                chessScoreGray += 1
                                                                                labelScoreGray.text = "\(chessScoreGray)"
                                                                                finishGame()
                                                                                view.addSubview(checker)
                                                                                gesture.view?.transform = .identity
                                                                                checker.frame.origin = CGPoint(
                                                                                    x: view.frame.height / 8,
                                                                                    y: view.frame.height / 8)
                                                                                for view in board.subviews {
                                                                                    if view.backgroundColor != .white {
                                                                                        view.backgroundColor = .black
                                                                                        view.layer.borderWidth = 0
                                                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                                                            currentMove = .grayMove
                                                                                            saveCurrentMove = currentMove
                                                                                        } else {
                                                                                            currentMove = .whiteMove
                                                                                            saveCurrentMove = currentMove
                                                                                        }
                                                                                    }
                                                                                }
                                                                                canStepGray(gesture: gesture)
                                                                                canStepWhite(gesture: gesture)
                                                                                canStepQueenBlue(gesture: gesture)
                                                                                canStepQueenYellow(gesture: gesture)
                                                                            } else {
                                                                                if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                    view.addSubview(checker)
                                                                                    gesture.view?.transform = .identity
                                                                                    checker.frame.origin = CGPoint(
                                                                                        x: view.frame.height / 8,
                                                                                        y: view.frame.height / 8)
                                                                                    for view in board.subviews {
                                                                                        if knockDownGrayChecker(gesture: gesture) == true {
                                                                                            currentMove = .grayMove
                                                                                            saveCurrentMove = currentMove
                                                                                        } else {
                                                                                            currentMove = .whiteMove
                                                                                            saveCurrentMove = currentMove
                                                                                        }
                                                                                        if view.backgroundColor != .white {
                                                                                            view.backgroundColor = .black
                                                                                            view.layer.borderWidth = 0
                                                                                        }
                                                                                    }
                                                                                    canStepGray(gesture: gesture)
                                                                                    canStepWhite(gesture: gesture)
                                                                                    canStepQueenBlue(gesture: gesture)
                                                                                    canStepQueenYellow(gesture: gesture)
                                                                                }
                                                                            }
                                                                        } else {
                                                                            if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 36) {
                                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                                    nineBottom.first?.subviews.first?.removeFromSuperview()
                                                                                    eighteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                    twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                    chessScoreGray += 1
                                                                                    labelScoreGray.text = "\(chessScoreGray)"
                                                                                    finishGame()
                                                                                    view.addSubview(checker)
                                                                                    gesture.view?.transform = .identity
                                                                                    checker.frame.origin = CGPoint(
                                                                                        x: view.frame.height / 8,
                                                                                        y: view.frame.height / 8)
                                                                                    for view in board.subviews {
                                                                                        if view.backgroundColor != .white {
                                                                                            view.backgroundColor = .black
                                                                                            view.layer.borderWidth = 0
                                                                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                currentMove = .grayMove
                                                                                                saveCurrentMove = currentMove
                                                                                            } else {
                                                                                                currentMove = .whiteMove
                                                                                                saveCurrentMove = currentMove
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    canStepGray(gesture: gesture)
                                                                                    canStepWhite(gesture: gesture)
                                                                                    canStepQueenBlue(gesture: gesture)
                                                                                    canStepQueenYellow(gesture: gesture)
                                                                                } else {
                                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                        view.addSubview(checker)
                                                                                        gesture.view?.transform = .identity
                                                                                        checker.frame.origin = CGPoint(
                                                                                            x: view.frame.height / 8,
                                                                                            y: view.frame.height / 8)
                                                                                        for view in board.subviews {
                                                                                            if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                currentMove = .grayMove
                                                                                                saveCurrentMove = currentMove
                                                                                            } else {
                                                                                                currentMove = .whiteMove
                                                                                                saveCurrentMove = currentMove
                                                                                            }
                                                                                            if view.backgroundColor != .white {
                                                                                                view.backgroundColor = .black
                                                                                                view.layer.borderWidth = 0
                                                                                            }
                                                                                        }
                                                                                        canStepGray(gesture: gesture)
                                                                                        canStepWhite(gesture: gesture)
                                                                                        canStepQueenBlue(gesture: gesture)
                                                                                        canStepQueenYellow(gesture: gesture)
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 45) {
                                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                                        nineBottom.first?.subviews.first?.removeFromSuperview()
                                                                                        eighteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                        twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                        thirtySixBottom.first?.subviews.first?.removeFromSuperview()
                                                                                        chessScoreGray += 1
                                                                                        labelScoreGray.text = "\(chessScoreGray)"
                                                                                        finishGame()
                                                                                        view.addSubview(checker)
                                                                                        gesture.view?.transform = .identity
                                                                                        checker.frame.origin = CGPoint(
                                                                                            x: view.frame.height / 8,
                                                                                            y: view.frame.height / 8)
                                                                                        for view in board.subviews {
                                                                                            if view.backgroundColor != .white {
                                                                                                view.backgroundColor = .black
                                                                                                view.layer.borderWidth = 0
                                                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                    currentMove = .grayMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                } else {
                                                                                                    currentMove = .whiteMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        canStepGray(gesture: gesture)
                                                                                        canStepWhite(gesture: gesture)
                                                                                        canStepQueenBlue(gesture: gesture)
                                                                                        canStepQueenYellow(gesture: gesture)
                                                                                    } else {
                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                            view.addSubview(checker)
                                                                                            gesture.view?.transform = .identity
                                                                                            checker.frame.origin = CGPoint(
                                                                                                x: view.frame.height / 8,
                                                                                                y: view.frame.height / 8)
                                                                                            for view in board.subviews {
                                                                                                if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                    currentMove = .grayMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                } else {
                                                                                                    currentMove = .whiteMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                }
                                                                                                if view.backgroundColor != .white {
                                                                                                    view.backgroundColor = .black
                                                                                                    view.layer.borderWidth = 0
                                                                                                }
                                                                                            }
                                                                                            canStepGray(gesture: gesture)
                                                                                            canStepWhite(gesture: gesture)
                                                                                            canStepQueenBlue(gesture: gesture)
                                                                                            canStepQueenYellow(gesture: gesture)
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    if (arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsGray.isEmpty), (arrayOfPossibleStepsQueenBlue.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.isEmpty), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 54) {
                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .white || fortyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                                            nineBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            eighteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            thirtySixBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            fortyFiveBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            chessScoreGray += 1
                                                                                            labelScoreGray.text = "\(chessScoreGray)"
                                                                                            finishGame()
                                                                                            view.addSubview(checker)
                                                                                            gesture.view?.transform = .identity
                                                                                            checker.frame.origin = CGPoint(
                                                                                                x: view.frame.height / 8,
                                                                                                y: view.frame.height / 8)
                                                                                            for view in board.subviews {
                                                                                                if view.backgroundColor != .white {
                                                                                                    view.backgroundColor = .black
                                                                                                    view.layer.borderWidth = 0
                                                                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                        currentMove = .grayMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    } else {
                                                                                                        currentMove = .whiteMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            canStepGray(gesture: gesture)
                                                                                            canStepWhite(gesture: gesture)
                                                                                            canStepQueenBlue(gesture: gesture)
                                                                                            canStepQueenYellow(gesture: gesture)
                                                                                        } else {
                                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                                view.addSubview(checker)
                                                                                                gesture.view?.transform = .identity
                                                                                                checker.frame.origin = CGPoint(
                                                                                                    x: view.frame.height / 8,
                                                                                                    y: view.frame.height / 8)
                                                                                                for view in board.subviews {
                                                                                                    if knockDownGrayChecker(gesture: gesture) == true {
                                                                                                        currentMove = .grayMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    } else {
                                                                                                        currentMove = .whiteMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    }
                                                                                                    if view.backgroundColor != .white {
                                                                                                        view.backgroundColor = .black
                                                                                                        view.layer.borderWidth = 0
                                                                                                    }
                                                                                                }
                                                                                                canStepGray(gesture: gesture)
                                                                                                canStepWhite(gesture: gesture)
                                                                                                canStepQueenBlue(gesture: gesture)
                                                                                                canStepQueenYellow(gesture: gesture)
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                
                                
                                
                                
//  MARK: Step Yellow
            else {
                if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9)) {
                    if view.subviews.isEmpty, view.backgroundColor != .white {
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
                        canStepGray(gesture: gesture)
                        canStepWhite(gesture: gesture)
                        canStepQueenBlue(gesture: gesture)
                        canStepQueenYellow(gesture: gesture)
                    }
                } else {
                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 18) {
                        if view.subviews.isEmpty, view.backgroundColor != .white,  nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue {
                            nineBottom.first?.subviews.first?.removeFromSuperview()
                            chessScoreWhite += 1
                            labelScoreWhite.text = "\(chessScoreWhite)"
                            finishGame()
                            view.addSubview(checker)
                            gesture.view?.transform = .identity
                            checker.frame.origin = CGPoint(
                                x: view.frame.height / 8,
                                y: view.frame.height / 8)
                            for view in board.subviews {
                                if view.backgroundColor != .white {
                                    view.backgroundColor = .black
                                    view.layer.borderWidth = 0
                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                        currentMove = .whiteMove
                                        saveCurrentMove = currentMove
                                    } else {
                                        currentMove = .grayMove
                                        saveCurrentMove = currentMove
                                    }
                                }
                                canStepGray(gesture: gesture)
                                canStepWhite(gesture: gesture)
                                canStepQueenBlue(gesture: gesture)
                                canStepQueenYellow(gesture: gesture)
                            }
                        } else {
                            if view.subviews.isEmpty, view.backgroundColor != .white,  nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                view.addSubview(checker)
                                gesture.view?.transform = .identity
                                checker.frame.origin = CGPoint(
                                    x: view.frame.height / 8,
                                    y: view.frame.height / 8)
                                for view in board.subviews {
                                    if view.backgroundColor != .white {
                                        view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                            currentMove = .whiteMove
                                            saveCurrentMove = currentMove
                                        } else {
                                            currentMove = .grayMove
                                            saveCurrentMove = currentMove
                                        }
                                    }
                                    canStepGray(gesture: gesture)
                                    canStepWhite(gesture: gesture)
                                    canStepQueenBlue(gesture: gesture)
                                    canStepQueenYellow(gesture: gesture)
                                }
                            }
                        }
                    } else {
                        if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 14) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue {
                                sevenBottom.first?.subviews.first?.removeFromSuperview()
                                chessScoreWhite += 1
                                labelScoreWhite.text = "\(chessScoreWhite)"
                                finishGame()
                                view.addSubview(checker)
                                gesture.view?.transform = .identity
                                checker.frame.origin = CGPoint(
                                    x: view.frame.height / 8,
                                    y: view.frame.height / 8)
                                for view in board.subviews {
                                    if view.backgroundColor != .white {
                                        view.backgroundColor = .black
                                        view.layer.borderWidth = 0
                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                            currentMove = .whiteMove
                                            saveCurrentMove = currentMove
                                        } else {
                                            currentMove = .grayMove
                                            saveCurrentMove = currentMove
                                        }
                                    }
                                    canStepGray(gesture: gesture)
                                    canStepWhite(gesture: gesture)
                                    canStepQueenBlue(gesture: gesture)
                                    canStepQueenYellow(gesture: gesture)
                                }
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                    view.addSubview(checker)
                                    gesture.view?.transform = .identity
                                    checker.frame.origin = CGPoint(
                                        x: view.frame.height / 8,
                                        y: view.frame.height / 8)
                                    for view in board.subviews {
                                        if view.backgroundColor != .white {
                                            view.backgroundColor = .black
                                            view.layer.borderWidth = 0
                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                currentMove = .whiteMove
                                                saveCurrentMove = currentMove
                                            } else {
                                                currentMove = .grayMove
                                                saveCurrentMove = currentMove
                                            }
                                        }
                                        canStepGray(gesture: gesture)
                                        canStepWhite(gesture: gesture)
                                        canStepQueenBlue(gesture: gesture)
                                        canStepQueenYellow(gesture: gesture)
                                                    }
                                                }
                                            }
                                        } else {
                                            if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty),
                                                currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 18) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white,  nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue {
                                                    nineTop.first?.subviews.first?.removeFromSuperview()
                                                    chessScoreWhite += 1
                                                    labelScoreWhite.text = "\(chessScoreWhite)"
                                                    finishGame()
                                                    view.addSubview(checker)
                                                    gesture.view?.transform = .identity
                                                    checker.frame.origin = CGPoint(
                                                        x: view.frame.height / 8,
                                                        y: view.frame.height / 8)
                                                    for view in board.subviews {
                                                        if view.backgroundColor != .white {
                                                            view.backgroundColor = .black
                                                            view.layer.borderWidth = 0
                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                currentMove = .whiteMove
                                                                saveCurrentMove = currentMove
                                                            } else {
                                                                currentMove = .grayMove
                                                                saveCurrentMove = currentMove
                                                            }
                                                        }
                                                        canStepGray(gesture: gesture)
                                                        canStepWhite(gesture: gesture)
                                                        canStepQueenBlue(gesture: gesture)
                                                        canStepQueenYellow(gesture: gesture)
                                                    }
                                                } else {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white,  nineTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                        view.addSubview(checker)
                                                        gesture.view?.transform = .identity
                                                        checker.frame.origin = CGPoint(
                                                            x: view.frame.height / 8,
                                                            y: view.frame.height / 8)
                                                        for view in board.subviews {
                                                            if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 21) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil)  {
                                                        sevenTop.first?.subviews.first?.removeFromSuperview()
                                                        fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                        chessScoreWhite += 1
                                                        labelScoreWhite.text = "\(chessScoreWhite)"
                                                        finishGame()
                                                        view.addSubview(checker)
                                                        gesture.view?.transform = .identity
                                                        checker.frame.origin = CGPoint(
                                                            x: view.frame.height / 8,
                                                            y: view.frame.height / 8)
                                                        for view in board.subviews {
                                                            if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                            }
                                                        }
                                                        canStepGray(gesture: gesture)
                                                        canStepWhite(gesture: gesture)
                                                        canStepQueenBlue(gesture: gesture)
                                                        canStepQueenYellow(gesture: gesture)
                                                    } else {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        }
                                                    }
                                                } else {
                                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 27) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil)  {
                                                            nineTop.first?.subviews.first?.removeFromSuperview()
                                                            eighteenTop.first?.subviews.first?.removeFromSuperview()
                                                            chessScoreWhite += 1
                                                            labelScoreWhite.text = "\(chessScoreWhite)"
                                                            finishGame()
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        currentMove = .grayMove
                                                                        saveCurrentMove = currentMove
                                                                    }
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        } else {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                view.addSubview(checker)
                                                                gesture.view?.transform = .identity
                                                                checker.frame.origin = CGPoint(
                                                                    x: view.frame.height / 8,
                                                                    y: view.frame.height / 8)
                                                                for view in board.subviews {
                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        currentMove = .grayMove
                                                                        saveCurrentMove = currentMove
                                                                    }
                                                                    if view.backgroundColor != .white {
                                                                        view.backgroundColor = .black
                                                                        view.layer.borderWidth = 0
                                                                    }
                                                                }
                                                                canStepGray(gesture: gesture)
                                                                canStepWhite(gesture: gesture)
                                                                canStepQueenBlue(gesture: gesture)
                                                                canStepQueenYellow(gesture: gesture)
                                                            }
                                                        }
                                                    } else {
                                                        if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 36) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                nineTop.first?.subviews.first?.removeFromSuperview()
                                                                eighteenTop.first?.subviews.first?.removeFromSuperview()
                                                                twentySevenTop.first?.subviews.first?.removeFromSuperview()
                                                                chessScoreWhite += 1
                                                                labelScoreWhite.text = "\(chessScoreWhite)"
                                                                finishGame()
                                                                view.addSubview(checker)
                                                                gesture.view?.transform = .identity
                                                                checker.frame.origin = CGPoint(
                                                                    x: view.frame.height / 8,
                                                                    y: view.frame.height / 8)
                                                                for view in board.subviews {
                                                                    if view.backgroundColor != .white {
                                                                        view.backgroundColor = .black
                                                                        view.layer.borderWidth = 0
                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                    }
                                                                }
                                                                canStepGray(gesture: gesture)
                                                                canStepWhite(gesture: gesture)
                                                                canStepQueenBlue(gesture: gesture)
                                                                canStepQueenYellow(gesture: gesture)
                                                            } else {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                }
                                                            }
                                } else {
                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 45) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                            nineTop.first?.subviews.first?.removeFromSuperview()
                                            eighteenTop.first?.subviews.first?.removeFromSuperview()
                                            twentySevenTop.first?.subviews.first?.removeFromSuperview()
                                            thirtySixTop.first?.subviews.first?.removeFromSuperview()
                                            chessScoreWhite += 1
                                            labelScoreWhite.text = "\(chessScoreWhite)"
                                            finishGame()
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                x: view.frame.height / 8,
                                                y: view.frame.height / 8)
                                            for view in board.subviews {
                                                if view.backgroundColor != .white {
                                                   view.backgroundColor = .black
                                                   view.layer.borderWidth = 0
                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                   currentMove = .whiteMove
                                                   saveCurrentMove = currentMove
                                                } else {
                                                   currentMove = .grayMove
                                                   saveCurrentMove = currentMove
                                                    }
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil {
                                            view.addSubview(checker)
                                            gesture.view?.transform = .identity
                                            checker.frame.origin = CGPoint(
                                                  x: view.frame.height / 8,
                                                  y: view.frame.height / 8)
                                                for view in board.subviews {
                                                   if knockDownWhiteChecker(gesture: gesture) == true {
                                                      currentMove = .whiteMove
                                                      saveCurrentMove = currentMove
                                                 } else {
                                                      currentMove = .grayMove
                                                      saveCurrentMove = currentMove
                                                   }
                                                      if view.backgroundColor != .white {
                                                         view.backgroundColor = .black
                                                         view.layer.borderWidth = 0
                                                   }
                                              }
                                              canStepGray(gesture: gesture)
                                              canStepWhite(gesture: gesture)
                                              canStepQueenBlue(gesture: gesture)
                                              canStepQueenYellow(gesture: gesture)
                                            }
                                        }
                                        } else {
                                           if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty),  checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 54) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .gray || fortyFiveTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                    nineTop.first?.subviews.first?.removeFromSuperview()
                                                    eighteenTop.first?.subviews.first?.removeFromSuperview()
                                                    twentySevenTop.first?.subviews.first?.removeFromSuperview()
                                                    thirtySixTop.first?.subviews.first?.removeFromSuperview()
                                                    fortyFiveTop.first?.subviews.first?.removeFromSuperview()
                                                    chessScoreWhite += 1
                                                    labelScoreWhite.text = "\(chessScoreWhite)"
                                                    finishGame()
                                                    view.addSubview(checker)
                                                    gesture.view?.transform = .identity
                                                    checker.frame.origin = CGPoint(
                                                          x: view.frame.height / 8,
                                                          y: view.frame.height / 8)
                                                          for view in board.subviews {
                                                             if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                   currentMove = .whiteMove
                                                                   saveCurrentMove = currentMove
                                                                 } else {
                                                                   currentMove = .grayMove
                                                                   saveCurrentMove = currentMove
                                                                     }
                                                                  }
                                                              }
                                                              canStepGray(gesture: gesture)
                                                              canStepWhite(gesture: gesture)
                                                              canStepQueenBlue(gesture: gesture)
                                                              canStepQueenYellow(gesture: gesture)
                                                    } else {
                                                         if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                             view.addSubview(checker)
                                                             gesture.view?.transform = .identity
                                                             checker.frame.origin = CGPoint(
                                                                     x: view.frame.height / 8,
                                                                     y: view.frame.height / 8)
                                                                     for view in board.subviews {
                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                           currentMove = .whiteMove
                                                                           saveCurrentMove = currentMove
                                                                        } else {
                                                                           currentMove = .grayMove
                                                                           saveCurrentMove = currentMove
                                                                        }
                                                                        if view.backgroundColor != .white {
                                                                           view.backgroundColor = .black
                                                                           view.layer.borderWidth = 0
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                }
                                                            }
                                                        } else {
                                                            if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 28) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    sevenTop.first?.subviews.first?.removeFromSuperview()
                                                                    fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                                    twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                                    chessScoreWhite += 1
                                                                    labelScoreWhite.text = "\(chessScoreWhite)"
                                                                    finishGame()
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if view.backgroundColor != .white {
                                                                           view.backgroundColor = .black
                                                                           view.layer.borderWidth = 0
                                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                } else {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                            }
                                                                        }
                                                                        canStepGray(gesture: gesture)
                                                                        canStepWhite(gesture: gesture)
                                                                        canStepQueenBlue(gesture: gesture)
                                                                        canStepQueenYellow(gesture: gesture)
                                                                    }
                                                                }
                                                        } else {
                                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 35) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                            sevenTop.first?.subviews.first?.removeFromSuperview()
                                                            fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                            twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                            twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                                            chessScoreWhite += 1
                                                            labelScoreWhite.text = "\(chessScoreWhite)"
                                                            finishGame()
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                       currentMove = .whiteMove
                                                                       saveCurrentMove = currentMove
                                                                } else {
                                                                       currentMove = .grayMove
                                                                       saveCurrentMove = currentMove
                                                                    }
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        } else {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                view.addSubview(checker)
                                                                gesture.view?.transform = .identity
                                                                checker.frame.origin = CGPoint(
                                                                    x: view.frame.height / 8,
                                                                    y: view.frame.height / 8)
                                                                for view in board.subviews {
                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        currentMove = .grayMove
                                                                        saveCurrentMove = currentMove
                                                                    }
                                                                    if view.backgroundColor != .white {
                                                                        view.backgroundColor = .black
                                                                        view.layer.borderWidth = 0
                                                                    }
                                                                }
                                                                canStepGray(gesture: gesture)
                                                                canStepWhite(gesture: gesture)
                                                                canStepQueenBlue(gesture: gesture)
                                                                canStepQueenYellow(gesture: gesture)
                                                            }
                                                        }
                                                    } else {
                                                        if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 42) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                sevenTop.first?.subviews.first?.removeFromSuperview()
                                                                fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                                twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                                twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                                                thirtyFiveTop.first?.subviews.first?.removeFromSuperview()
                                                                chessScoreWhite += 1
                                                                labelScoreWhite.text = "\(chessScoreWhite)"
                                                                finishGame()
                                                                view.addSubview(checker)
                                                                gesture.view?.transform = .identity
                                                                checker.frame.origin = CGPoint(
                                                                    x: view.frame.height / 8,
                                                                    y: view.frame.height / 8)
                                                                for view in board.subviews {
                                                                    if view.backgroundColor != .white {
                                                                        view.backgroundColor = .black
                                                                        view.layer.borderWidth = 0
                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                    }
                                                                }
                                                                canStepGray(gesture: gesture)
                                                                canStepWhite(gesture: gesture)
                                                                canStepQueenBlue(gesture: gesture)
                                                                canStepQueenYellow(gesture: gesture)
                                                            } else {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                            currentMove = .whiteMove
                                                                            saveCurrentMove = currentMove
                                                                        } else {
                                                                            currentMove = .grayMove
                                                                            saveCurrentMove = currentMove
                                                                        }
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                }
                                                            }
                                                        } else {
                                                            if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 49) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .gray || fortyTwoTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    sevenTop.first?.subviews.first?.removeFromSuperview()
                                                                    fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                                    twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                                    twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                                                    thirtyFiveTop.first?.subviews.first?.removeFromSuperview()
                                                                    fortyTwoTop.first?.subviews.first?.removeFromSuperview()
                                                                    chessScoreWhite += 1
                                                                    labelScoreWhite.text = "\(chessScoreWhite)"
                                                                    finishGame()
                                                                    view.addSubview(checker)
                                                                    gesture.view?.transform = .identity
                                                                    checker.frame.origin = CGPoint(
                                                                        x: view.frame.height / 8,
                                                                        y: view.frame.height / 8)
                                                                    for view in board.subviews {
                                                                        if view.backgroundColor != .white {
                                                                            view.backgroundColor = .black
                                                                            view.layer.borderWidth = 0
                                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                        }
                                                                    }
                                                                    canStepGray(gesture: gesture)
                                                                    canStepWhite(gesture: gesture)
                                                                    canStepQueenBlue(gesture: gesture)
                                                                    canStepQueenYellow(gesture: gesture)
                                                                } else {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                currentMove = .whiteMove
                                                                                saveCurrentMove = currentMove
                                                                            } else {
                                                                                currentMove = .grayMove
                                                                                saveCurrentMove = currentMove
                                                                            }
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                            }
                                                                        }
                                                                        canStepGray(gesture: gesture)
                                                                        canStepWhite(gesture: gesture)
                                                                        canStepQueenBlue(gesture: gesture)
                                                                        canStepQueenYellow(gesture: gesture)
                                                                    }
                                                                }
                                                                //   MARK: Step blue BACK
                                                            } else {
                                                                if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 14) {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, (sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) {
                                                                        sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                        chessScoreWhite += 1
                                                                        labelScoreWhite.text = "\(chessScoreWhite)"
                                                                        finishGame()
                                                                        view.addSubview(checker)
                                                                        gesture.view?.transform = .identity
                                                                        checker.frame.origin = CGPoint(
                                                                            x: view.frame.height / 8,
                                                                            y: view.frame.height / 8)
                                                                        for view in board.subviews {
                                                                            if view.backgroundColor != .white {
                                                                                view.backgroundColor = .black
                                                                                view.layer.borderWidth = 0
                                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                    currentMove = .whiteMove
                                                                                    saveCurrentMove = currentMove
                                                                                } else {
                                                                                    currentMove = .grayMove
                                                                                    saveCurrentMove = currentMove
                                                                                }
                                                                            }
                                                                        }
                                                                        canStepGray(gesture: gesture)
                                                                        canStepWhite(gesture: gesture)
                                                                        canStepQueenBlue(gesture: gesture)
                                                                        canStepQueenYellow(gesture: gesture)
                                                                    } else {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                            view.addSubview(checker)
                                                                            gesture.view?.transform = .identity
                                                                            checker.frame.origin = CGPoint(
                                                                                x: view.frame.height / 8,
                                                                                y: view.frame.height / 8)
                                                                            for view in board.subviews {
                                                                                if view.backgroundColor != .white {
                                                                                    view.backgroundColor = .black
                                                                                    view.layer.borderWidth = 0
                                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                        currentMove = .whiteMove
                                                                                        saveCurrentMove = currentMove
                                                                                    } else {
                                                                                        currentMove = .grayMove
                                                                                        saveCurrentMove = currentMove
                                                                                    }
                                                                                }
                                                                            }
                                                                            canStepGray(gesture: gesture)
                                                                            canStepWhite(gesture: gesture)
                                                                            canStepQueenBlue(gesture: gesture)
                                                                            canStepQueenYellow(gesture: gesture)
                                                                        }
                                                                    }
                                                                } else {
                                                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 18) {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue {
                                                                            nineBottom.first?.subviews.first?.removeFromSuperview()
                                                                            chessScoreWhite += 1
                                                                            labelScoreWhite.text = "\(chessScoreWhite)"
                                                                            finishGame()
                                                                            view.addSubview(checker)
                                                                            gesture.view?.transform = .identity
                                                                            checker.frame.origin = CGPoint(
                                                                                x: view.frame.height / 8,
                                                                                y: view.frame.height / 8)
                                                                            for view in board.subviews {
                                                                                if view.backgroundColor != .white {
                                                                                    view.backgroundColor = .black
                                                                                    view.layer.borderWidth = 0
                                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                        currentMove = .whiteMove
                                                                                        saveCurrentMove = currentMove
                                                                                    } else {
                                                                                        currentMove = .grayMove
                                                                                        saveCurrentMove = currentMove
                                                                                    }
                                                                                }
                                                                            }
                                                                            canStepGray(gesture: gesture)
                                                                            canStepWhite(gesture: gesture)
                                                                            canStepQueenBlue(gesture: gesture)
                                                                            canStepQueenYellow(gesture: gesture)
                                                                        } else {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                view.addSubview(checker)
                                                                                gesture.view?.transform = .identity
                                                                                checker.frame.origin = CGPoint(
                                                                                    x: view.frame.height / 8,
                                                                                    y: view.frame.height / 8)
                                                                                for view in board.subviews {
                                                                                    if view.backgroundColor != .white {
                                                                                        view.backgroundColor = .black
                                                                                        view.layer.borderWidth = 0
                                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                            currentMove = .whiteMove
                                                                                            saveCurrentMove = currentMove
                                                                                        } else {
                                                                                            currentMove = .grayMove
                                                                                            saveCurrentMove = currentMove
                                                                                        }
                                                                                    }
                                                                                }
                                                                                canStepGray(gesture: gesture)
                                                                                canStepWhite(gesture: gesture)
                                                                                canStepQueenBlue(gesture: gesture)
                                                                                canStepQueenYellow(gesture: gesture)
                                                                            }
                                                                        }
                      } else {
                           if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 21) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                    sevenBottom.first?.subviews.first?.removeFromSuperview()
                                    fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                    chessScoreWhite += 1
                                    labelScoreWhite.text = "\(chessScoreWhite)"
                                    finishGame()
                                    view.addSubview(checker)
                                    gesture.view?.transform = .identity
                                    checker.frame.origin = CGPoint(
                                          x: view.frame.height / 8,
                                          y: view.frame.height / 8)
                                          for view in board.subviews {
                                             if view.backgroundColor != .white {
                                                view.backgroundColor = .black
                                                view.layer.borderWidth = 0
                                                  if knockDownWhiteChecker(gesture: gesture) == true {
                                                     currentMove = .whiteMove
                                                     saveCurrentMove = currentMove
                                                } else {
                                                     currentMove = .grayMove
                                                     saveCurrentMove = currentMove
                                                    }
                                                }
                                            }
                                            canStepGray(gesture: gesture)
                                            canStepWhite(gesture: gesture)
                                            canStepQueenBlue(gesture: gesture)
                                            canStepQueenYellow(gesture: gesture)
                                        } else {
                                           if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                               view.addSubview(checker)
                                               gesture.view?.transform = .identity
                                               checker.frame.origin = CGPoint(
                                                      x: view.frame.height / 8,
                                                      y: view.frame.height / 8)
                                                      for view in board.subviews {
                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                           currentMove = .whiteMove
                                                           saveCurrentMove = currentMove
                                                    } else {
                                                           currentMove = .grayMove
                                                           saveCurrentMove = currentMove
                                                        }
                                                          if view.backgroundColor != .white {
                                                             view.backgroundColor = .black
                                                             view.layer.borderWidth = 0
                                                          }
                                                    }
                                                    canStepGray(gesture: gesture)
                                                    canStepWhite(gesture: gesture)
                                                    canStepQueenBlue(gesture: gesture)
                                                    canStepQueenYellow(gesture: gesture)
                                                                                }
                                                                            }
                     } else {
                         if  (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 28) {
                             if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                 sevenBottom.first?.subviews.first?.removeFromSuperview()
                                 fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                 twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                 chessScoreWhite += 1
                                 labelScoreWhite.text = "\(chessScoreWhite)"
                                 finishGame()
                                 view.addSubview(checker)
                                 gesture.view?.transform = .identity
                                 checker.frame.origin = CGPoint(
                                        x: view.frame.height / 8,
                                        y: view.frame.height / 8)
                                     for view in board.subviews {
                                      if view.backgroundColor != .white {
                                         view.backgroundColor = .black
                                         view.layer.borderWidth = 0
                                       if knockDownWhiteChecker(gesture: gesture) == true {
                                          currentMove = .whiteMove
                                          saveCurrentMove = currentMove
                                    } else {
                                          currentMove = .grayMove
                                           saveCurrentMove = currentMove
                                      }
                                   }
                                }
                                canStepGray(gesture: gesture)
                                canStepWhite(gesture: gesture)
                                canStepQueenBlue(gesture: gesture)
                                canStepQueenYellow(gesture: gesture)
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                    view.addSubview(checker)
                                     gesture.view?.transform = .identity
                                                                                        checker.frame.origin = CGPoint(
                                                                                            x: view.frame.height / 8,
                                                                                            y: view.frame.height / 8)
                                                                                        for view in board.subviews {
                                                                                            if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                currentMove = .whiteMove
                                                                                                saveCurrentMove = currentMove
                                                                                            } else {
                                                                                                currentMove = .grayMove
                                                                                                saveCurrentMove = currentMove
                                                                                            }
                                                                                            if view.backgroundColor != .white {
                                                                                                view.backgroundColor = .black
                                                                                                view.layer.borderWidth = 0
                                                                                            }
                                                                                        }
                                                                                        canStepGray(gesture: gesture)
                                                                                        canStepWhite(gesture: gesture)
                                                                                        canStepQueenBlue(gesture: gesture)
                                                                                        canStepQueenYellow(gesture: gesture)
                                                                                    }
                                                                                }
                                } else {
                                   if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 35) {
                                       if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                           sevenBottom.first?.subviews.first?.removeFromSuperview()
                                           fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                           twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                           twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                           chessScoreWhite += 1
                                           labelScoreWhite.text = "\(chessScoreWhite)"
                                           finishGame()
                                                                                        view.addSubview(checker)
                                                                                        gesture.view?.transform = .identity
                                                                                        checker.frame.origin = CGPoint(
                                                                                            x: view.frame.height / 8,
                                                                                            y: view.frame.height / 8)
                                                                                        for view in board.subviews {
                                                                                            if view.backgroundColor != .white {
                                                                                                view.backgroundColor = .black
                                                                                                view.layer.borderWidth = 0
                                                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                    currentMove = .whiteMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                } else {
                                                                                                    currentMove = .grayMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        canStepGray(gesture: gesture)
                                                                                        canStepWhite(gesture: gesture)
                                                                                        canStepQueenBlue(gesture: gesture)
                                                                                        canStepQueenYellow(gesture: gesture)
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                            view.addSubview(checker)
                                                                                            gesture.view?.transform = .identity
                                                                                            checker.frame.origin = CGPoint(
                                                                                                x: view.frame.height / 8,
                                                                                                y: view.frame.height / 8)
                                                                                            for view in board.subviews {
                                                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                    currentMove = .whiteMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                } else {
                                                                                                    currentMove = .grayMove
                                                                                                    saveCurrentMove = currentMove
                                                                                                }
                                                                                                if view.backgroundColor != .white {
                                                                                                    view.backgroundColor = .black
                                                                                                    view.layer.borderWidth = 0
                                                                                                }
                                                                                            }
                                                                                            canStepGray(gesture: gesture)
                                                                                            canStepWhite(gesture: gesture)
                                                                                            canStepQueenBlue(gesture: gesture)
                                                                                            canStepQueenYellow(gesture: gesture)
                                                                                        }
                                                                                    }
                                } else {
                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 42) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                                            sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                                                                            thirtyFiveBottom.first?.subviews.first?.removeFromSuperview()
                                            chessScoreWhite += 1
                                            labelScoreWhite.text = "\(chessScoreWhite)"
                                                                                            finishGame()
                                                                                            view.addSubview(checker)
                                                                                            gesture.view?.transform = .identity
                                                                                            checker.frame.origin = CGPoint(
                                                                                                x: view.frame.height / 8,
                                                                                                y: view.frame.height / 8)
                                                                                            for view in board.subviews {
                                                                                                if view.backgroundColor != .white {
                                                                                                    view.backgroundColor = .black
                                                                                                    view.layer.borderWidth = 0
                                                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                        currentMove = .whiteMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    } else {
                                                                                                        currentMove = .grayMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            canStepGray(gesture: gesture)
                                                                                            canStepWhite(gesture: gesture)
                                                                                            canStepQueenBlue(gesture: gesture)
                                                                                            canStepQueenYellow(gesture: gesture)
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                    view.addSubview(checker)
                                                                                                gesture.view?.transform = .identity
                                                                                                checker.frame.origin = CGPoint(
                                                                                                    x: view.frame.height / 8,
                                                                                                    y: view.frame.height / 8)
                                                                                                for view in board.subviews {
                                                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                        currentMove = .whiteMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    } else {
                                                                                                        currentMove = .grayMove
                                                                                                        saveCurrentMove = currentMove
                                                                                                    }
                                                                                                    if view.backgroundColor != .white {
                                                                                                        view.backgroundColor = .black
                                                                                                        view.layer.borderWidth = 0
                                                                                                    }
                                                                                                }
                                                                                                canStepGray(gesture: gesture)
                                                                                                canStepWhite(gesture: gesture)
                                                                                                canStepQueenBlue(gesture: gesture)
                                                                                                canStepQueenYellow(gesture: gesture)
                                                                                            }
                                                                                        }
                                } else {
                                    if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 49) {
                                         if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .gray || fortyTwoBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                                                sevenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                                fourteenBottom.first?.subviews.first?.removeFromSuperview()
                                                                                                twentyOneBottom.first?.subviews.first?.removeFromSuperview()
                                                                                                twentyEightBottom.first?.subviews.first?.removeFromSuperview()
                                                                                                thirtyFiveBottom.first?.subviews.first?.removeFromSuperview()
                                                                                                fortyTwoBottom.first?.subviews.first?.removeFromSuperview()
                                             chessScoreWhite += 1
                                             labelScoreWhite.text = "\(chessScoreWhite)"
                                                                                                finishGame()
                                                                                                view.addSubview(checker)
                                                                                                gesture.view?.transform = .identity
                                                                                                checker.frame.origin = CGPoint(
                                                                                                    x: view.frame.height / 8,
                                                                                                    y: view.frame.height / 8)
                                                                                                for view in board.subviews {
                                                                                                    if view.backgroundColor != .white {
                                                                                                        view.backgroundColor = .black
                                                                                                        view.layer.borderWidth = 0
                                                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                            currentMove = .whiteMove
                                                                                                            saveCurrentMove = currentMove
                                                                                                        } else {
                                                                                                            currentMove = .grayMove
                                                                                                            saveCurrentMove = currentMove
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                canStepGray(gesture: gesture)
                                                                                                canStepWhite(gesture: gesture)
                                                                                                canStepQueenBlue(gesture: gesture)
                                                                                                canStepQueenYellow(gesture: gesture)
                                                                                            } else {
                                                                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil {
                                                                                                    view.addSubview(checker)
                                                                                                    gesture.view?.transform = .identity
                                                                                                    checker.frame.origin = CGPoint(
                                                                                                        x: view.frame.height / 8,
                                                                                                        y: view.frame.height / 8)
                                                                                                    for view in board.subviews {
                                                                                                        if knockDownWhiteChecker(gesture: gesture) == true {
                                                                                                            currentMove = .whiteMove
                                                                                                            saveCurrentMove = currentMove
                                                                                                        } else {
                                                                                                            currentMove = .grayMove
                                                                                                            saveCurrentMove = currentMove
                                                                                                        }
                                                                                                        if view.backgroundColor != .white {
                                                                                                            view.backgroundColor = .black
                                                                                                            view.layer.borderWidth = 0
                                                                                                        }
                                                                                                    }
                                                                                                    canStepGray(gesture: gesture)
                                                                                                    canStepWhite(gesture: gesture)
                                                                                                    canStepQueenBlue(gesture: gesture)
                                                                                                    canStepQueenYellow(gesture: gesture)
                                                                                                }
                                                                                            }
    } else {
        if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 27) {
             if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
                 nineBottom.first?.subviews.first?.removeFromSuperview()
                 eighteenBottom.first?.subviews.first?.removeFromSuperview()
                 chessScoreWhite += 1
                 labelScoreWhite.text = "\(chessScoreWhite)"
                 finishGame()
                 view.addSubview(checker)
                 gesture.view?.transform = .identity
                 checker.frame.origin = CGPoint(
                       x: view.frame.height / 8,
                       y: view.frame.height / 8)
                   for view in board.subviews {
                     if view.backgroundColor != .white {
                        view.backgroundColor = .black
                        view.layer.borderWidth = 0
                       if knockDownWhiteChecker(gesture: gesture) == true {
                          currentMove = .whiteMove
                          saveCurrentMove = currentMove
                  } else {
                          currentMove = .grayMove
                          saveCurrentMove = currentMove
                        }
                     }
                 }
                 canStepGray(gesture: gesture)
                 canStepWhite(gesture: gesture)
                 canStepQueenBlue(gesture: gesture)
                 canStepQueenYellow(gesture: gesture)
        } else {
            if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                view.addSubview(checker)
                gesture.view?.transform = .identity
                checker.frame.origin = CGPoint(
                      x: view.frame.height / 8,
                      y: view.frame.height / 8)
                    for view in board.subviews {
                     if knockDownWhiteChecker(gesture: gesture) == true {
                        currentMove = .whiteMove
                        saveCurrentMove = currentMove
                   } else {
                        currentMove = .grayMove
                        saveCurrentMove = currentMove
                        }
                    if view.backgroundColor != .white {
                       view.backgroundColor = .black
                       view.layer.borderWidth = 0
                     }
                }
                canStepGray(gesture: gesture)
                canStepWhite(gesture: gesture)
                canStepQueenBlue(gesture: gesture)
                canStepQueenYellow(gesture: gesture)
              }
          }
      } else {
          if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 36) {
              if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                  nineBottom.first?.subviews.first?.removeFromSuperview()
                  eighteenBottom.first?.subviews.first?.removeFromSuperview()
                  twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                  chessScoreWhite += 1
                  labelScoreWhite.text = "\(chessScoreWhite)"
                  finishGame()
                  view.addSubview(checker)
                  gesture.view?.transform = .identity
                  checker.frame.origin = CGPoint(
                        x: view.frame.height / 8,
                        y: view.frame.height / 8)
                    for view in board.subviews {
                      if view.backgroundColor != .white {
                         view.backgroundColor = .black
                         view.layer.borderWidth = 0
                      if knockDownWhiteChecker(gesture: gesture) == true {
                         currentMove = .whiteMove
                         saveCurrentMove = currentMove
                    } else {
                         currentMove = .grayMove
                         saveCurrentMove = currentMove
                        }
                    }
                }
                canStepGray(gesture: gesture)
                canStepWhite(gesture: gesture)
                canStepQueenBlue(gesture: gesture)
                canStepQueenYellow(gesture: gesture)
        } else {
             if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
                 view.addSubview(checker)
                 gesture.view?.transform = .identity
                 checker.frame.origin = CGPoint(
                      x: view.frame.height / 8,
                      y: view.frame.height / 8)
                 for view in board.subviews {
                   if knockDownWhiteChecker(gesture: gesture) == true {
                      currentMove = .whiteMove
                      saveCurrentMove = currentMove
                 } else {
                      currentMove = .grayMove
                      saveCurrentMove = currentMove
                   }
                      if view.backgroundColor != .white {
                         view.backgroundColor = .black
                         view.layer.borderWidth = 0
                    }
                }
                canStepGray(gesture: gesture)
                canStepWhite(gesture: gesture)
                canStepQueenBlue(gesture: gesture)
                canStepQueenYellow(gesture: gesture)
               }
            }
        } else {
            if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 45) {
                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                    nineBottom.first?.subviews.first?.removeFromSuperview()
                    eighteenBottom.first?.subviews.first?.removeFromSuperview()
                    twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                    thirtySixBottom.first?.subviews.first?.removeFromSuperview()
                    chessScoreWhite += 1
                    labelScoreWhite.text = "\(chessScoreWhite)"
                    finishGame()
                    view.addSubview(checker)
                    gesture.view?.transform = .identity
                    checker.frame.origin = CGPoint(
                             x: view.frame.height / 8,
                             y: view.frame.height / 8)
                    for view in board.subviews {
                      if view.backgroundColor != .white {
                         view.backgroundColor = .black
                         view.layer.borderWidth = 0
                        if knockDownWhiteChecker(gesture: gesture) == true {
                           currentMove = .whiteMove
                           saveCurrentMove = currentMove
                       } else {
                           currentMove = .grayMove
                           saveCurrentMove = currentMove
                       }
                   }
               }
               canStepGray(gesture: gesture)
               canStepWhite(gesture: gesture)
               canStepQueenBlue(gesture: gesture)
               canStepQueenYellow(gesture: gesture)
             } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil {
                    view.addSubview(checker)
                    gesture.view?.transform = .identity
                    checker.frame.origin = CGPoint(
                        x: view.frame.height / 8,
                        y: view.frame.height / 8)
                     for view in board.subviews {
                       if knockDownWhiteChecker(gesture: gesture) == true {
                          currentMove = .whiteMove
                          saveCurrentMove = currentMove
                    } else {
                          currentMove = .grayMove
                          saveCurrentMove = currentMove
                       }
                     if view.backgroundColor != .white {
                        view.backgroundColor = .black
                        view.layer.borderWidth = 0
                     }
                }
                canStepGray(gesture: gesture)
                canStepWhite(gesture: gesture)
                canStepQueenBlue(gesture: gesture)
                canStepQueenYellow(gesture: gesture)
               }
            }
        } else {
             if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 54) {
                 if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .gray || fortyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                     nineBottom.first?.subviews.first?.removeFromSuperview()
                     eighteenBottom.first?.subviews.first?.removeFromSuperview()
                     twentySevenBottom.first?.subviews.first?.removeFromSuperview()
                     thirtySixBottom.first?.subviews.first?.removeFromSuperview()
                     fortyFiveBottom.first?.subviews.first?.removeFromSuperview()
                     chessScoreWhite += 1
                     labelScoreWhite.text = "\(chessScoreWhite)"
                     finishGame()
                     view.addSubview(checker)
                     gesture.view?.transform = .identity
                     checker.frame.origin = CGPoint(
                                x: view.frame.height / 8,
                                y: view.frame.height / 8)
                     for view in board.subviews {
                       if view.backgroundColor != .white {
                       view.backgroundColor = .black
                       view.layer.borderWidth = 0
                     if knockDownWhiteChecker(gesture: gesture) == true {
                        currentMove = .whiteMove
                        saveCurrentMove = currentMove
                 } else {
                        currentMove = .grayMove
                        saveCurrentMove = currentMove
                      }
                   }
                }
                canStepGray(gesture: gesture)
                canStepWhite(gesture: gesture)
                canStepQueenBlue(gesture: gesture)
                canStepQueenYellow(gesture: gesture)
            } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
                     view.addSubview(checker)
                     gesture.view?.transform = .identity
                     checker.frame.origin = CGPoint(
                           x: view.frame.height / 8,
                           y: view.frame.height / 8)
                     for view in board.subviews {
                       if knockDownWhiteChecker(gesture: gesture) == true {
                          currentMove = .whiteMove
                          saveCurrentMove = currentMove
                     } else {
                          currentMove = .grayMove
                          saveCurrentMove = currentMove
                     }
                     if view.backgroundColor != .white {
                        view.backgroundColor = .black
                        view.layer.borderWidth = 0
                }
            }
            canStepGray(gesture: gesture)
            canStepWhite(gesture: gesture)
            canStepQueenBlue(gesture: gesture)
            canStepQueenYellow(gesture: gesture)
                   }
                }
             } else {
                 if (arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsWhite.isEmpty), (arrayOfPossibleStepsQueenYellow.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.isEmpty), currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 14) {
                     if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue  {
                         sevenTop.first?.subviews.first?.removeFromSuperview()
                                                        chessScoreWhite += 1
                                                        labelScoreWhite.text = "\(chessScoreWhite)"
                                                        finishGame()
                                                        view.addSubview(checker)
                                                        gesture.view?.transform = .identity
                                                        checker.frame.origin = CGPoint(
                                                            x: view.frame.height / 8,
                                                            y: view.frame.height / 8)
                                                        for view in board.subviews {
                                                            if view.backgroundColor != .white {
                                                                view.backgroundColor = .black
                                                                view.layer.borderWidth = 0
                                                                if knockDownWhiteChecker(gesture: gesture) == true {
                                                                    currentMove = .whiteMove
                                                                    saveCurrentMove = currentMove
                                                                } else {
                                                                    currentMove = .grayMove
                                                                    saveCurrentMove = currentMove
                                                                }
                                                            }
                                                        }
                                                        canStepGray(gesture: gesture)
                                                        canStepWhite(gesture: gesture)
                                                        canStepQueenBlue(gesture: gesture)
                                                        canStepQueenYellow(gesture: gesture)
                                                    } else {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil {
                                                            view.addSubview(checker)
                                                            gesture.view?.transform = .identity
                                                            checker.frame.origin = CGPoint(
                                                                x: view.frame.height / 8,
                                                                y: view.frame.height / 8)
                                                            for view in board.subviews {
                                                                if view.backgroundColor != .white {
                                                                    view.backgroundColor = .black
                                                                    view.layer.borderWidth = 0
                                                                    if knockDownWhiteChecker(gesture: gesture) == true {
                                                                        currentMove = .whiteMove
                                                                        saveCurrentMove = currentMove
                                                                    } else {
                                                                        currentMove = .grayMove
                                                                        saveCurrentMove = currentMove
                                                                    }
                                                                }
                                                            }
                                                            canStepGray(gesture: gesture)
                                                            canStepWhite(gesture: gesture)
                                                            canStepQueenBlue(gesture: gesture)
                                                            canStepQueenYellow(gesture: gesture)
                                                        }  else {
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
                                                    } else {
                                                        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn) {
                                                            gesture.view?.transform = .identity
                                                            //
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
                                                            }}
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
}
                                                    }
  }
                                            }
                                        }
                                    }
                                }
                                    }
                                    }}}}}}}}}}}
}
