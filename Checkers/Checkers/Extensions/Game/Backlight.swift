//
//  Backlight.swift
//  Checkers
//
//  Created by mac on 22.06.22.
//

import UIKit

extension GameViewController {
    
    func backlight(gesture: UIPanGestureRecognizer) {
        guard let checker = gesture.view, let view_ch = checker.superview else {return}
        let filterFourTop = board.subviews.filter{($0.tag == view_ch.tag + 4)}
        let filterFiveTop = board.subviews.filter{($0.tag == view_ch.tag + 5)}
        let filterSevenTop = board.subviews.filter{($0.tag == view_ch.tag + 7)}
        let filterNineTop = board.subviews.filter{($0.tag == view_ch.tag + 9)}
        let filterElevenTop = board.subviews.filter{($0.tag == view_ch.tag + 11)}
        let filterFourteenTop = board.subviews.filter{($0.tag == view_ch.tag + 14)}
        let filterEighteenTop = board.subviews.filter{($0.tag == view_ch.tag + 18)}
        let filterNineteenTop = board.subviews.filter{($0.tag == view_ch.tag + 19)}
        let filterTwentyOneTop = board.subviews.filter{($0.tag == view_ch.tag + 21)}
        let filterTwentytwoTop = board.subviews.filter{($0.tag == view_ch.tag + 22)}
        let filterTwentythreeTop = board.subviews.filter{($0.tag == view_ch.tag + 23)}
        let filterTwentyfiveTop = board.subviews.filter{($0.tag == view_ch.tag + 25)}
        let filterTwentysevenTop = board.subviews.filter{($0.tag == view_ch.tag + 27)}
        let filterThirtytwoTop = board.subviews.filter{($0.tag == view_ch.tag + 32)}
        let filterTwentyEightTop = board.subviews.filter{($0.tag == view_ch.tag + 28)}
        let filterTwentyNineTop = board.subviews.filter{($0.tag == view_ch.tag + 29)}
        let filterThirtyFiveTop = board.subviews.filter{($0.tag == view_ch.tag + 35)}
        let filterThirtysixTop = board.subviews.filter{($0.tag == view_ch.tag + 36)}
        let filterThirtysevenTop = board.subviews.filter{($0.tag == view_ch.tag + 37)}
        let filterFortythreeTop = board.subviews.filter{($0.tag == view_ch.tag + 43)}
        let filterFortyFiveTop = board.subviews.filter{($0.tag == view_ch.tag + 45)}
        let filterFortysixTop = board.subviews.filter{($0.tag == view_ch.tag + 46)}
        let filterFiftyTop = board.subviews.filter{($0.tag == view_ch.tag + 50)}
        let filterFiftyfourTop = board.subviews.filter{($0.tag == view_ch.tag + 54)}
        let filterFourBottom = board.subviews.filter{($0.tag == view_ch.tag - 4)}
        let filterFiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 5)}
        let filterSevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 7)}
        let filterNineBottom = board.subviews.filter{($0.tag == view_ch.tag - 9)}
        let filterElevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 11)}
        let filterThirteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 13)}
        let filterFourteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 14)}
        let filterEighteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 18)}
        let filterNineteenBottom = board.subviews.filter{($0.tag == view_ch.tag - 19)}
        let filterTwentyOneBottom = board.subviews.filter{($0.tag == view_ch.tag - 21)}
        let filterTwentytwoBottom = board.subviews.filter{($0.tag == view_ch.tag - 22)}
        let filterTwentythreeBottom = board.subviews.filter{($0.tag == view_ch.tag - 23)}
        let filterTwentyfiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 25)}
        let filterTwentyEightBottom = board.subviews.filter{($0.tag == view_ch.tag - 28)}
        let filterThirtytwoBottom = board.subviews.filter{($0.tag == view_ch.tag - 32)}
        let filterThirtyfiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 35)}
        let filterThirtysixBottom = board.subviews.filter{($0.tag == view_ch.tag - 36)}
        let filterThirtysevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 37)}
        let filterTwentysevenBottom = board.subviews.filter{($0.tag == view_ch.tag - 27)}
        let filterTwentyNineBottom = board.subviews.filter{($0.tag == view_ch.tag - 29)}
        let filterFortythreeBottom = board.subviews.filter{($0.tag == view_ch.tag - 43)}
        let filterFortyFiveBottom = board.subviews.filter{($0.tag == view_ch.tag - 45)}
        let filterFortysixBottom = board.subviews.filter{($0.tag == view_ch.tag - 46)}
        let filterFiftyfourBottom = board.subviews.filter{($0.tag == view_ch.tag - 54)}
        
//MARK: backlight GRAY (right top)
        for view in board.subviews {
            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 18)) {
                if view.subviews.isEmpty, view.backgroundColor != .white,
                   filterNineTop.first?.subviews.first?.backgroundColor == .white || filterNineTop.first?.subviews.first?.backgroundColor == .yellow  {
                    filterSevenTop.first?.layer.borderWidth = 0
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
                }
            } else {
                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 4)) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterFourTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterElevenTop.first?.subviews.first?.backgroundColor == .white {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                } else {
                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 32)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterTwentyfiveTop.first?.subviews.first?.backgroundColor == .white {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }  else {
                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 36)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .white  {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            }
                        }  else {
                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 54)) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .white && filterFortyFiveTop.first?.subviews.first?.backgroundColor == .white  {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                }
                            } else {
                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 22)) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .white && filterTwentyNineTop.first?.subviews.first?.backgroundColor == .white  {
                                        view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                    }
                                } else {
                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 50)) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .white && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .white && filterFortythreeTop.first?.subviews.first?.backgroundColor == .white  {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
//MARK: backlight GRAY (left top)
                    } else {
                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 14)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white,
                                filterSevenTop.first?.subviews.first?.backgroundColor == .white || filterSevenTop.first?.subviews.first?.backgroundColor == .yellow  {
                                        filterNineTop.first?.layer.borderWidth = 0
                                        view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                            }
                                        } else {
                                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 28)) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterSevenTop.first?.subviews.first?.backgroundColor == .white && filterTwentyOneTop.first?.subviews.first?.backgroundColor == .white {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                                }
                                            } else {
                                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 42)) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && filterSevenTop.first?.subviews.first?.backgroundColor == .white && filterTwentyOneTop.first?.subviews.first?.backgroundColor == .white && filterThirtyFiveTop.first?.subviews.first?.backgroundColor == .white  {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                    }
                                                } else {
                                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 4)) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterSevenTop.first?.subviews.first?.backgroundColor == .white && filterFiveTop.first?.subviews.first?.backgroundColor == .white  {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        }
                                                    } else {
                                                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 10)) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white,  filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                filterSevenTop.first?.subviews.first?.backgroundColor == .white &&
                                                                filterTwentyOneTop.first?.subviews.first?.backgroundColor == .white &&
                                                                filterNineteenTop.first?.subviews.first?.backgroundColor == .white {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            }
                                                        }
                                                        else {
                                                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 32)) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterSevenTop.first?.subviews.first?.backgroundColor == .white && filterTwentythreeTop.first?.subviews.first?.backgroundColor == .white {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                }
                                                            } else {
                                                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 46)) {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                        filterFortysixTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                        filterSevenTop.first?.subviews.first?.backgroundColor == .white &&
                                                                        filterTwentyOneTop.first?.subviews.first?.backgroundColor == .white &&
                                                                        filterThirtysevenTop.first?.subviews.first?.backgroundColor == .white {
                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                        view.layer.borderWidth = 3
                                                                    }
                                                                    //MARK: backlight GRAY (right bottom)
                                                                } else {
                                                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 18)) {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white,
                                                                           filterNineBottom.first?.subviews.first?.backgroundColor == .white || filterNineBottom.first?.subviews.first?.backgroundColor == .yellow {
                                                                            filterSevenBottom.first?.layer.borderWidth = 0
                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                            view.layer.borderWidth = 3
                                                                        }
                                                                    } else {
                                                                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 4)) {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil &&  filterFourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterElevenBottom.first?.subviews.first?.backgroundColor == .white  {
                                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                                view.layer.borderWidth = 3
                                                                            }
                                                                        } else {
                                                                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 32)) {
                                                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterTwentyfiveBottom.first?.subviews.first?.backgroundColor == .white  {
                                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                                    view.layer.borderWidth = 3
                                                                                }
                                                                            }  else {
                                                                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 36)) {
                                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .white  {
                                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                                        view.layer.borderWidth = 3
                                                                                    }
                                                                                }  else {
                                                                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 54)) {
                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .white && filterFortyFiveBottom.first?.subviews.first?.backgroundColor == .white  {
                                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                                            view.layer.borderWidth = 3
                                                                                        }
                                            } else {
                                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 22)) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .white && filterTwentyNineBottom.first?.subviews.first?.backgroundColor == .white {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                                        }
                                                } else {
                                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 22)) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterFourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenTop.first?.subviews.first?.backgroundColor == .white && filterFiveTop.first?.subviews.first?.backgroundColor == .white && filterThirteenBottom.first?.subviews.first?.backgroundColor == .white {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                                            
                                                    }
                                                } else {
                                                     if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 50)) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .white && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .white && filterFortythreeBottom.first?.subviews.first?.backgroundColor == .white  {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                                                                }
  //MARK: backlight GRAY (left bottom)
                        } else {
                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 14)) {
                                if view.subviews.isEmpty, view.backgroundColor != .white,
                                   filterSevenBottom.first?.subviews.first?.backgroundColor == .white || filterSevenBottom.first?.subviews.first?.backgroundColor == .yellow  {
                                    filterNineBottom.first?.layer.borderWidth = 0
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                }
                            } else {
                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 28)) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .white && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .white {
                                        view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                    }
                                } else {
                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 42)) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .white && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .white && filterThirtyfiveBottom.first?.subviews.first?.backgroundColor == .white {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
                                    } else {
//                                        check
                                        if checker.backgroundColor == .gray, (view.tag == (view_ch.tag + 4)) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFourteenBottom.first?.backgroundColor != .white &&  filterSevenBottom.first?.subviews.first?.backgroundColor == .white && filterFiveBottom.first?.subviews.first?.backgroundColor == .white {
                                                view.layer.borderColor = UIColor.green.cgColor
                                                view.layer.borderWidth = 3
                                            }
                                        } else {
                                            if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 10)) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil &&
                                                    filterSevenBottom.first?.subviews.first?.backgroundColor == .white &&
                                                    filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .white &&
                                                    filterNineteenBottom.first?.subviews.first?.backgroundColor == .white {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                                }
                                            }
                                            else {
                                                if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 32)) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoBottom.first(where: {$0.subviews.isEmpty}) != nil &&
                                                        filterSevenBottom.first?.subviews.first?.backgroundColor == .white &&
                                                        filterTwentythreeBottom.first?.subviews.first?.backgroundColor == .white {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                    }
                                                } else {
                                                    if checker.backgroundColor == .gray, (view.tag == (view_ch.tag - 46)) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil &&
                                                            filterFortysixBottom.first(where: {$0.subviews.isEmpty}) != nil &&
                                                            filterSevenBottom.first?.subviews.first?.backgroundColor == .white &&
                                                            filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .white &&
                                                            filterThirtysevenBottom.first?.subviews.first?.backgroundColor == .white {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        }
                                                    }
        else {
                                                        //                         CHECK!!!
        if checker.backgroundColor == .gray || checker.backgroundColor == .blue, view.tag == (view_ch.tag + 7) {
            if view.backgroundColor != .white, view.subviews.isEmpty, arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty
//                                                               ((filterFourteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterSevenBottom.first?.subviews.first?.backgroundColor != .white) || filterSevenBottom.first(where: {$0.subviews.isEmpty}) != nil) &&
//
//                                                                ((filterEighteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterNineBottom.first?.subviews.first?.backgroundColor != .white) || filterNineBottom.first(where: {$0.subviews.isEmpty}) != nil) &&
//
//                                                                ((filterEighteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterNineTop.first?.subviews.first?.backgroundColor != .white) || filterNineTop.first(where: {$0.subviews.isEmpty}) != nil)
                                                            {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            }
                                                        } else {
                                                            if checker.backgroundColor == .gray, view.tag == (view_ch.tag + 9) {
                                                                if view.backgroundColor != .white, view.subviews.isEmpty, arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty
//
//                                                                   ((filterEighteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterNineBottom.first?.subviews.first?.backgroundColor != .white) || filterNineBottom.first(where: {$0.subviews.isEmpty}) != nil) && (filterFourteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterSevenBottom.first?.subviews.first?.backgroundColor != .white || filterSevenBottom.first(where: {$0.subviews.isEmpty}) != nil) && ((filterFourteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterSevenTop.first?.subviews.first?.backgroundColor != .white || filterFourteenTop.first?.backgroundColor == .white) || filterSevenTop.first(where: {$0.subviews.isEmpty}) != nil)
                                                                {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3                                                                               }
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
                        }
                    }
                }
            }
            }
                     }
        
        //MARK: backlight WHITE (right bottom)
        for view in board.subviews {
            if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 18)) {
                if view.subviews.isEmpty, view.backgroundColor != .white,
                   filterNineTop.first?.subviews.first?.backgroundColor == .gray || filterNineTop.first?.subviews.first?.backgroundColor == .blue  {
                    filterSevenTop.first?.layer.borderWidth = 0
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
                }
            } else {
                if (view.tag == (view_ch.tag + 4)) {
                    if checker.backgroundColor == .white, view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFourTop.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterFiveBottom.first?.subviews.first?.backgroundColor == .gray {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                } else {
                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 32)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .gray && filterTwentyfiveTop.first?.subviews.first?.backgroundColor == .gray {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }  else {
                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 36)) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .gray  {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            }
                        }  else {
                            if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 54)) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .gray && filterFortyFiveTop.first?.subviews.first?.backgroundColor == .gray  {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                }
                            } else {
                                if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 22)) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .gray && filterTwentyNineTop.first?.subviews.first?.backgroundColor == .gray  {
                                        view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                    }
                                } else {
                                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 50)) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterThirtysixTop.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyTop.first(where: {$0.subviews.isEmpty}) != nil && filterNineTop.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenTop.first?.subviews.first?.backgroundColor == .gray && filterFortythreeTop.first?.subviews.first?.backgroundColor == .gray {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
                                    }
                                    //MARK: backlight WHITE (left bottom)
                                    else  {
                                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 14)) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white,
                                               filterSevenTop.first?.subviews.first?.backgroundColor == .gray || filterSevenTop.first?.subviews.first?.backgroundColor == .blue {
                                                filterNineTop.first?.layer.borderWidth = 0
                                                view.layer.borderColor = UIColor.green.cgColor
                                                view.layer.borderWidth = 3
                                            }
                                        } else {
                                            if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 28)) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterSevenTop.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneTop.first?.subviews.first?.backgroundColor == .gray {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                                }
                                            } else {
                                                if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 42)) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && filterSevenTop.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneTop.first?.subviews.first?.backgroundColor == .gray && filterThirtyFiveTop.first?.subviews.first?.backgroundColor == .gray  {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                    }
                                                } else {
                                                    if checker.backgroundColor == .white,(view.tag == (view_ch.tag - 4)) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil &&  filterSevenTop.first?.subviews.first?.backgroundColor == .gray &&  filterFiveTop.first?.subviews.first?.backgroundColor == .gray  {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        }
                                                    } else {
                                                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 10)) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white,  filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                filterSevenTop.first?.subviews.first?.backgroundColor == .gray &&
                                                                filterTwentyOneTop.first?.subviews.first?.backgroundColor == .gray &&
                                                                filterNineteenTop.first?.subviews.first?.backgroundColor == .gray {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            }
                                                        }
                                                        else {
                                                            if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 32)) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoTop.first(where: {$0.subviews.isEmpty}) != nil && filterSevenTop.first?.subviews.first?.backgroundColor == .gray &&
                                                                    filterTwentythreeTop.first?.subviews.first?.backgroundColor == .gray {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                }
                                                            } else {
                                                                if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 46)) {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenTop.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                        filterFortysixTop.first(where: {$0.subviews.isEmpty}) != nil &&
                                                                        filterSevenTop.first?.subviews.first?.backgroundColor == .gray &&
                                                                        filterTwentyOneTop.first?.subviews.first?.backgroundColor == .gray &&
                                                                        filterThirtysevenTop.first?.subviews.first?.backgroundColor == .gray {
                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                        view.layer.borderWidth = 3
                                                                    }
                                                                    //MARK: backlight WHITE (right top)
                                                                } else {
                                                                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 18)) {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white,
                                                                           filterNineBottom.first?.subviews.first?.backgroundColor == .gray ||  filterNineBottom.first?.subviews.first?.backgroundColor == .blue {
                                                                            filterSevenBottom.first?.layer.borderWidth = 0
                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                            view.layer.borderWidth = 3
                                                                        }
                                                                    } else {
                                                                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 4)) {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil &&  filterFourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterElevenBottom.first?.subviews.first?.backgroundColor == .gray  {
                                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                                view.layer.borderWidth = 3
                                                                            }
                            } else {
                                if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 32)) {
                                  if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyfiveBottom.first?.subviews.first?.backgroundColor == .gray {
                                      view.layer.borderColor = UIColor.green.cgColor
                                      view.layer.borderWidth = 3
                                     }
                                   } else {
                                      if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 36)) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .gray  {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                                                                    }
                                                                                }  else {
                                                                                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 54)) {
                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .gray && filterFortyFiveBottom.first?.subviews.first?.backgroundColor == .gray  {
                                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                                            view.layer.borderWidth = 3
                                                                                        }
                                                                                    } else {
                                                                                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 22)) {
                                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyNineBottom.first?.subviews.first?.backgroundColor == .gray {
                                                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                                                view.layer.borderWidth = 3
                                                                                            }
                                                                                        } else {
                                                                                            if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 50)) {
                                                                                                if view.subviews.isEmpty, view.backgroundColor != .white,  filterEighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFiftyfourBottom.first(where: {$0.subviews.isEmpty}) != nil && filterNineBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentysevenBottom.first?.subviews.first?.backgroundColor == .gray && filterFortythreeBottom.first?.subviews.first?.backgroundColor == .gray  {
                                                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                                                    view.layer.borderWidth = 3
                                                                                                }
                                                                                                //MARK: backlight WHITE (left top) +
                                                                                            } else {
                                                                                                if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 14)) {
                                                                                                    if view.subviews.isEmpty, view.backgroundColor != .white,
                                                                                                       filterSevenBottom.first?.subviews.first?.backgroundColor == .gray ||  filterSevenBottom.first?.subviews.first?.backgroundColor == .blue {
                                                                                                        filterNineBottom.first?.layer.borderWidth = 0
                                                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                                                        view.layer.borderWidth = 3
                                                                                                    }
                                                                                                } else {
                                                                                                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 28)) {
                                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .gray {
                                                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                                                            view.layer.borderWidth = 3
                                                                                                        }
                                                                                                    } else {
                                                                                                        if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 42)) {
                                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .gray && filterThirtyfiveBottom.first?.subviews.first?.backgroundColor == .gray  {
                                                                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                                                                view.layer.borderWidth = 3
                                                                                                            }
        } else {
         if checker.backgroundColor == .white, (view.tag == (view_ch.tag + 4)) {
           if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterFiveBottom.first?.subviews.first?.backgroundColor == .gray {
               view.layer.borderColor = UIColor.green.cgColor
               view.layer.borderWidth = 3
            }
            } else {
                if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 10)) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .gray && filterNineteenBottom.first?.subviews.first?.backgroundColor == .gray {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                    }
                } else {
                    if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 32)) {
                        if view.subviews.isEmpty, view.backgroundColor != .white, filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterThirtytwoBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentythreeBottom.first?.subviews.first?.backgroundColor == .gray {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                        }
                      } else {
                         if checker.backgroundColor == .white, (view.tag == (view_ch.tag - 46)) {
                           if view.subviews.isEmpty, view.backgroundColor != .white,  filterFourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && filterTwentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && filterFortysixBottom.first(where: {$0.subviews.isEmpty}) != nil && filterSevenBottom.first?.subviews.first?.backgroundColor == .gray && filterTwentyOneBottom.first?.subviews.first?.backgroundColor == .gray && filterThirtysevenBottom.first?.subviews.first?.backgroundColor == .gray {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                           }
                        } else {
 //                         CHECK!!!
                            if checker.backgroundColor == .white, view.tag == (view_ch.tag - 7) {
                              if view.backgroundColor == .black, view.subviews.isEmpty, arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty
//                              ((filterFourteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterSevenTop.first?.subviews.first?.backgroundColor != .gray) || filterSevenTop.first(where: {$0.subviews.isEmpty}) != nil) && ((filterEighteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterNineBottom.first?.subviews.first?.backgroundColor != .gray) || filterNineBottom.first(where: {$0.subviews.isEmpty}) != nil || filterEighteenBottom.first?.backgroundColor == .white) && ((filterEighteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterNineTop.first?.subviews.first?.backgroundColor != .gray) || filterNineTop.first(where: {$0.subviews.isEmpty}) != nil)
                                {
                                  view.layer.borderColor = UIColor.green.cgColor
                                  view.layer.borderWidth = 3
                         }
                            } else {
                                if checker.backgroundColor == .white, view.tag == (view_ch.tag - 9) {
                                    if view.backgroundColor == .black, view.subviews.isEmpty, arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty
//                                       ((filterEighteenTop.first?.backgroundColor != .white && filterEighteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterNineTop.first?.subviews.first?.backgroundColor != .gray) || filterNineTop.first(where: {$0.subviews.isEmpty}) != nil) && ((filterFourteenBottom.first?.backgroundColor != .white && filterFourteenBottom.first(where: {$0.subviews.isEmpty}) == nil || filterSevenBottom.first?.subviews.first?.backgroundColor != .gray) || filterSevenBottom.first(where: {$0.subviews.isEmpty}) != nil) && ((filterFourteenTop.first?.backgroundColor != .white && filterFourteenTop.first(where: {$0.subviews.isEmpty}) == nil || filterSevenTop.first?.subviews.first?.backgroundColor != .gray) || filterSevenTop.first(where: {$0.subviews.isEmpty}) != nil)
                                    {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
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
                            }
                        }
                    }
                }
            }
        }
    }
    

    func backlightQueen(gesture: UIPanGestureRecognizer) {
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
        
// MARK: Backlight blue
    for view in board.subviews {
            if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 9) || view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9) {
                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
                }
            } else {
                if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 14) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                            }
                        }
                    } else {
                        if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 18) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                        } else {
                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                }
                            }
        } else {
            if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 21) {
                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
            } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                }
                } else {
                    if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 27) {
                      if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil) {
                             view.layer.borderColor = UIColor.green.cgColor
                             view.layer.borderWidth = 3
                       } else {
                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                            }
                        }
          } else {
              if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 36) {
                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }
            } else {
                if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 45) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }
                } else {
                    if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 54) {
                      if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .white || fortyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                                } else {
                                     if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                         view.layer.borderColor = UIColor.green.cgColor
                                         view.layer.borderWidth = 3
                                            }
                                        }
                                    } else {
                                        if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 28) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                            } else {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                }
                                            }
                                    } else {
                                if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 35) {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
                                    }
                                } else {
                                    if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 42) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                view.layer.borderColor = UIColor.green.cgColor
                                                view.layer.borderWidth = 3
                                        } else {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                            }
                                        }
                                    } else {
                                        if checker.backgroundColor == .blue, view.tag == (view_ch.tag + 49) {
                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .white || fortyTwoTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                            } else {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                }
                                            }
//   MARK: Backlight blue back
                                        } else {
                                            if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 14) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, (sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                } else {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                    }
                                                }
                                            } else {
                                                if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 18) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                    } else {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                        }
                                                    }
  } else {
       if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 21) {
            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
                    } else {
                       if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                                                            }
                                                        }
                       } else {
                           if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 28) {
                               if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                   view.layer.borderColor = UIColor.green.cgColor
                                   view.layer.borderWidth = 3
                                } else {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
                                    }
                        } else {
                            if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 35) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                } else {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                        }
                                }
                           } else {
                               if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 42) {
                                   if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                       view.layer.borderColor = UIColor.green.cgColor
                                       view.layer.borderWidth = 3
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                                                        }
                                                                    }
        } else {
            if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 49) {
               if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .white || fortyTwoBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                   view.layer.borderColor = UIColor.green.cgColor
                   view.layer.borderWidth = 3
            } else {
                 if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                     view.layer.borderColor = UIColor.green.cgColor
                     view.layer.borderWidth = 3
                }
            }
        } else {
             if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 27) {
                 if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
            } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                }
            } else {
                if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 36) {
                   if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                } else {
                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        }
                    }
                  } else {
                      if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 45) {
                         if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                       } else {
                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                  }
                             }
                         } else {
                             if checker.backgroundColor == .blue, view.tag == (view_ch.tag - 54) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .white || fortyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                        view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                } else {
                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenBlue.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                        view.layer.borderWidth = 3
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                            
//  MARK: Step Yellow
            else {
                if checker.backgroundColor == .yellow, (view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9)) {
                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                        view.layer.borderColor = UIColor.green.cgColor
                        view.layer.borderWidth = 3
                    }
                } else {
                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 18) {
                        if view.subviews.isEmpty, view.backgroundColor != .white,  nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue {
                            view.layer.borderColor = UIColor.green.cgColor
                            view.layer.borderWidth = 3
                        } else {
                            if view.subviews.isEmpty, view.backgroundColor != .white,  arrayOfPossibleStepsQueenYellow.isEmpty {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            }
                        }
                    } else {
                        if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 14) {
                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue {
                                view.layer.borderColor = UIColor.green.cgColor
                                view.layer.borderWidth = 3
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                                }
                                            }
                                        } else {
                                            if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 18) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white,  nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                                    
                                                } else {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white,  arrayOfPossibleStepsQueenYellow.isEmpty {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                    }
                                                }
                                            } else {
                                                if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 21) {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                            
                                                    } else {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        }
                                                    }
                                                } else {
                                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 27) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        } else {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            }
                                                        }
                                                    } else {
                                                        if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 36) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                            } else {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                }
                                                            }
                                } else {
                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 45) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                            }
                                        }
                                    } else {
                                           if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 54) {
                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .gray || fortyFiveTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                    view.layer.borderColor = UIColor.green.cgColor
                                                    view.layer.borderWidth = 3
                                                } else {
                                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                        view.layer.borderColor = UIColor.green.cgColor
                                                        view.layer.borderWidth = 3
                                                                }
                                                            }
                                                        } else {
                                                            if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 28) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                } else {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                        view.layer.borderWidth = 3
                                                                    }
                                                                }
                                                        } else {
                                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 35) {
                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                            sevenTop.first?.subviews.first?.removeFromSuperview()
                                                            fourteenTop.first?.subviews.first?.removeFromSuperview()
                                                            twentyOneTop.first?.subviews.first?.removeFromSuperview()
                                                            twentyEightTop.first?.subviews.first?.removeFromSuperview()
                                                            view.layer.borderColor = UIColor.green.cgColor
                                                            view.layer.borderWidth = 3
                                                        } else {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            }
                                                        }
                                                    } else {
                                                        if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 42) {
                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                view.layer.borderWidth = 3
                                                            } else {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                }
                                                            }
                                                        } else {
                                                            if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 49) {
                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .gray || fortyTwoTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
                                                                    view.layer.borderColor = UIColor.green.cgColor
                                                                    view.layer.borderWidth = 3
                                                                } else {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                        view.layer.borderWidth = 3
                                                                    }
                                                                }
                                                                //   MARK: Step blue BACK
                                                            } else {
                                                                if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 14) {
                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, (sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) {
                                                                        view.layer.borderColor = UIColor.green.cgColor
                                                                        view.layer.borderWidth = 3
                                                                    } else {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                            view.layer.borderWidth = 3
                                                                        }
                                                                    }
                                                                } else {
                                                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 18) {
                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue {
                                                                            view.layer.borderColor = UIColor.green.cgColor
                                                                            view.layer.borderWidth = 3
                                                                        } else {
                                                                            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                                                view.layer.borderColor = UIColor.green.cgColor
                                                                                view.layer.borderWidth = 3
                                                                            }
                                                                        }
                      } else {
                           if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 21) {
                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                        } else {
                                           if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                               view.layer.borderColor = UIColor.green.cgColor
                                               view.layer.borderWidth = 3
                                                                                }
                                                                            }
                     } else {
                         if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 28) {
                             if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                 view.layer.borderColor = UIColor.green.cgColor
                                 view.layer.borderWidth = 3
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                                                                    }
                                                                                }
                                } else {
                                   if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 35) {
                                       if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                           view.layer.borderColor = UIColor.green.cgColor
                                           view.layer.borderWidth = 3
                                    } else {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                                                                                        }
                                                                                    }
                                } else {
                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 42) {
                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                            view.layer.borderColor = UIColor.green.cgColor
                                            view.layer.borderWidth = 3
                            } else {
                                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                    view.layer.borderColor = UIColor.green.cgColor
                                    view.layer.borderWidth = 3
                                        }
                                    }
                                } else {
                                    if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 49) {
                                         if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .gray || fortyTwoBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                                             view.layer.borderColor = UIColor.green.cgColor
                                             view.layer.borderWidth = 3
                                          } else {
                                              if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                                                     view.layer.borderColor = UIColor.green.cgColor
                                                     view.layer.borderWidth = 3
                                                                                                }
                                                                                            }
    } else {
        if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 27) {
             if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                 view.layer.borderColor = UIColor.green.cgColor
                 view.layer.borderWidth = 3
        } else {
            if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                view.layer.borderColor = UIColor.green.cgColor
                view.layer.borderWidth = 3
              }
          }
      } else {
          if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 36) {
              if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                  view.layer.borderColor = UIColor.green.cgColor
                  view.layer.borderWidth = 3
        } else {
             if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                 view.layer.borderColor = UIColor.green.cgColor
                 view.layer.borderWidth = 3
               }
            }
        } else {
            if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 45) {
                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
             } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
               }
            }
        } else {
             if checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 54) {
                 if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .gray || fortyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
                     view.layer.borderColor = UIColor.green.cgColor
                     view.layer.borderWidth = 3
            } else {
                if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                    view.layer.borderColor = UIColor.green.cgColor
                    view.layer.borderWidth = 3
                   }
                }
             } else {
                 if checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 14) {
                     if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue {
                         view.layer.borderColor = UIColor.green.cgColor
                         view.layer.borderWidth = 3
                     } else {
                         if view.subviews.isEmpty, view.backgroundColor != .white, arrayOfPossibleStepsQueenYellow.isEmpty {
                             view.layer.borderColor = UIColor.green.cgColor
                             view.layer.borderWidth = 3
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
                                    }}}}}}}}}
    
}
//        //  MARK: Step blue FORWARD
//            for view in board.subviews {
//
//                    if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 7) || view.tag == (view_ch.tag - 9) {
//                        if view.subviews.isEmpty, view.backgroundColor != .white {
//                            view.layer.borderColor = UIColor.green.cgColor
//                            view.layer.borderWidth = 3
//                        }
//                    } else {
//                            if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 14) {
//                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                    view.layer.borderColor = UIColor.green.cgColor
//                                    view.layer.borderWidth = 3
//                                }
//                            } else {
//                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 18) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                    }
//                                } else {
//                                    if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 21) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil)  {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                        }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 21) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                        }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 27) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 27) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 36) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                }
//                                            } else {
//                                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 36) {
//                                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                        view.layer.borderWidth = 3
//                                                    }
//                    } else {
//                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 45) {
//                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                view.layer.borderColor = UIColor.green.cgColor
//                                view.layer.borderWidth = 3
//                        }
//                    } else {
//                        if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 45) {
//                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                view.layer.borderColor = UIColor.green.cgColor
//                                view.layer.borderWidth = 3
//                            }
//                        } else {
//                               if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 54) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .white || nineTop.first?.subviews.first?.backgroundColor == .yellow) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .white || eighteenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .white || twentySevenTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .white || thirtySixTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .white || fortyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                    }
//                                } else {
//                                    if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 54) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                                }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 28) {
//                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                        view.layer.borderWidth = 3
//                                                    }
//                                                } else {
//                                                    if arrayOfPossibleStepsGray.isEmpty,  arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 28) {
//                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                            view.layer.borderColor = UIColor.green.cgColor
//                                                            view.layer.borderWidth = 3
//                                                    }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 35) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 35) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 42) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                }
//                                            } else {
//                                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 42) {
//                                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                        view.layer.borderWidth = 3
//                                                }
//                                            } else {
//                                                if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 49) {
//                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .white || sevenTop.first?.subviews.first?.backgroundColor == .yellow) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .white || fourteenTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .white || twentyOneTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .white || twentyEightTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .white || thirtyFiveTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .white || fortyTwoTop.first?.subviews.first?.backgroundColor == .yellow) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                        view.layer.borderWidth = 3
//                                                    }
//                                                } else {
//                                                    if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag + 49) {
//                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                            view.layer.borderColor = UIColor.green.cgColor
//                                                            view.layer.borderWidth = 3
//                                                    }
//                                                    //   MARK: Step blue BACK
//                            } else {
//                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 14) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                                        }
//                            } else {
//                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 18) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                                            }
//          } else {
//               if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 21) {
//                    if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
//                        view.layer.borderColor = UIColor.green.cgColor
//                        view.layer.borderWidth = 3
//                                }
//                        } else {
//                            if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 21) {
//                               if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                   view.layer.borderColor = UIColor.green.cgColor
//                                   view.layer.borderWidth = 3
//                                                                }
//                               } else {
//                                   if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 28) {
//                                       if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                           view.layer.borderColor = UIColor.green.cgColor
//                                           view.layer.borderWidth = 3
//                                       }
//                            } else {
//                                if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 28) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                                                    }
//                                } else {
//                                    if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 35) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                        }
//                    } else {
//                        if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 35) {
//                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                view.layer.borderColor = UIColor.green.cgColor
//                                view.layer.borderWidth = 3
//                                                                        }
//                                   } else {
//                                       if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 42) {
//                                           if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                               view.layer.borderColor = UIColor.green.cgColor
//                                               view.layer.borderWidth = 3
//                                           }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 42) {
//                                             if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                 view.layer.borderColor = UIColor.green.cgColor
//                                                 view.layer.borderWidth = 3
//                                                                            }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 49) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .white || sevenBottom.first?.subviews.first?.backgroundColor == .yellow) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .white || fourteenBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .white || twentyOneBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .white || twentyEightBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .white || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .white || fortyTwoBottom.first?.subviews.first?.backgroundColor == .yellow) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 49) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                                                }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 27) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                            }
//                                    } else {
//                                        if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 27) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                                                                    }
//                                } else {
//                                    if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 36) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                        }
//                                     } else {
//                                         if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 36) {
//                                             if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                 view.layer.borderColor = UIColor.green.cgColor
//                                                 view.layer.borderWidth = 3
//                                                                                        }
//                            } else {
//                                if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 45) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                            nineBottom.first?.subviews.first?.removeFromSuperview()
//                                            eighteenBottom.first?.subviews.first?.removeFromSuperview()
//                                            twentySevenBottom.first?.subviews.first?.removeFromSuperview()
//                                            thirtySixBottom.first?.subviews.first?.removeFromSuperview()
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                    }
//                                } else {
//                                    if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 45) {
//                                         if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                             view.layer.borderColor = UIColor.green.cgColor
//                                             view.layer.borderWidth = 3
//                                                                                            }
//                       } else {
//                           if arrayOfPossibleStepsGray.contains(view_ch.tag) || arrayOfPossibleStepsQueenBlue.contains(view_ch.tag), checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 54) {
//                               if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .white || nineBottom.first?.subviews.first?.backgroundColor == .yellow) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .white || eighteenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .white || twentySevenBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .white || thirtySixBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .white || fortyFiveBottom.first?.subviews.first?.backgroundColor == .yellow) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                   view.layer.borderColor = UIColor.green.cgColor
//                                   view.layer.borderWidth = 3
//                               }
//                           } else {
//                               if arrayOfPossibleStepsGray.isEmpty, arrayOfPossibleStepsQueenBlue.isEmpty, checker.backgroundColor == .blue, currentMove == .grayMove, view.tag == (view_ch.tag - 54) {
//                                   if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                       view.layer.borderColor = UIColor.green.cgColor
//                                       view.layer.borderWidth = 3
//                                                                                                }
//                                                                                            }
//        //  MARK: Step Yellow
//                    else {
//                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 7) || view.tag == (view_ch.tag + 9) {
//                            if view.subviews.isEmpty, view.backgroundColor != .white {
//                                view.layer.borderColor = UIColor.green.cgColor
//                                view.layer.borderWidth = 3
//                            }
//                                } else {
//                                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 18) {
//                                    if view.subviews.isEmpty, view.backgroundColor != .white,  nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                        view.layer.borderColor = UIColor.green.cgColor
//                                        view.layer.borderWidth = 3
//                                }
//                                    } else {
//                                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag - 14) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                                    }
//
//                } else {
//                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 18) {
//                          if view.subviews.isEmpty, view.backgroundColor != .white,  nineTop.first(where: {$0.subviews.isEmpty}) != nil {
//                              view.layer.borderColor = UIColor.green.cgColor
//                              view.layer.borderWidth = 3
//                                                        }
//        //                MARK: ТУТ
//                                                    } else {
//                                                        if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 21) {
//                                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil)  {
//                                                                view.layer.borderColor = UIColor.green.cgColor
//                                                                view.layer.borderWidth = 3
//                                                            }
//                    } else {
//                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 21) {
//                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                            view.layer.borderColor = UIColor.green.cgColor
//                            view.layer.borderWidth = 3
//
//                                                            }
//                                                        } else {
//                                                            if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 27) {
//                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil)  {
//                                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                                    view.layer.borderWidth = 3
//                                                                }
//                              } else {
//                                  if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 27) {
//                                      if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                          view.layer.borderColor = UIColor.green.cgColor
//                                          view.layer.borderWidth = 3
//                                                                }
//                       } else {
//                           if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 36) {
//                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                                        view.layer.borderWidth = 3
//                                                                    }
//                                } else {
//                                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 36) {
//                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                            view.layer.borderColor = UIColor.green.cgColor
//                                                                            view.layer.borderWidth = 3
//                                                                    }
//                                    } else {
//                                        if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 45) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 45) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                }
//                                            } else {
//                                                   if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag),  checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 54) {
//                                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineTop.first?.subviews.first?.backgroundColor == .gray || nineTop.first?.subviews.first?.backgroundColor == .blue) && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenTop.first?.subviews.first?.backgroundColor == .gray || eighteenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenTop.first?.subviews.first?.backgroundColor == .gray || twentySevenTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixTop.first?.subviews.first?.backgroundColor == .gray || thirtySixTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveTop.first?.subviews.first?.backgroundColor == .gray || fortyFiveTop.first?.subviews.first?.backgroundColor == .blue) && nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                            view.layer.borderColor = UIColor.green.cgColor
//                                                            view.layer.borderWidth = 3
//                                                        }
//                                    } else {
//                                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty,  checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 54) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, nineTop.first(where: {$0.subviews.isEmpty}) != nil && eighteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentySevenTop.first(where: {$0.subviews.isEmpty}) != nil && thirtySixTop.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                                                    }
//                                        } else {
//                                            if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 28) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                }
//                                            } else {
//                                                         if arrayOfPossibleStepsWhite.isEmpty,  arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 28) {
//                                                             if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                 view.layer.borderColor = UIColor.green.cgColor
//                                                                 view.layer.borderWidth = 3
//                                                                        }
//                                                                } else {
//                                                            if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 35) {
//                                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                                    view.layer.borderWidth = 3
//                                                                }
//                                    } else {
//                                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 35) {
//                                            if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                view.layer.borderColor = UIColor.green.cgColor
//                                                view.layer.borderWidth = 3
//                                                                }
//                               } else {
//                                    if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 42) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                        }
//                                       } else {
//                                           if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 42) {
//                                                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                            view.layer.borderColor = UIColor.green.cgColor
//                                                                            view.layer.borderWidth = 3
//                                                                    }
//                                          } else {
//                                               if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 49) {
//                                                   if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenTop.first?.subviews.first?.backgroundColor == .gray || sevenTop.first?.subviews.first?.backgroundColor == .blue) && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenTop.first?.subviews.first?.backgroundColor == .gray || fourteenTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneTop.first?.subviews.first?.backgroundColor == .gray || twentyOneTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightTop.first?.subviews.first?.backgroundColor == .gray || twentyEightTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveTop.first?.subviews.first?.backgroundColor == .gray || thirtyFiveTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoTop.first?.subviews.first?.backgroundColor == .gray || fortyTwoTop.first?.subviews.first?.backgroundColor == .blue) && sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                       view.layer.borderColor = UIColor.green.cgColor
//                                                       view.layer.borderWidth = 3
//                                                   }
//                                   } else {
//                                       if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag + 49) {
//                                           if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil && fourteenTop.first(where: {$0.subviews.isEmpty}) != nil && twentyOneTop.first(where: {$0.subviews.isEmpty}) != nil && twentyEightTop.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveTop.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                               view.layer.borderColor = UIColor.green.cgColor
//                                               view.layer.borderWidth = 3
//                                                                        }
//         //   MARK: Step yellow BACK
//
//                                                                            } else {
//                                                                                if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 14) {
//                                                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                                                    view.layer.borderWidth = 3
//                                                                            }
//                                                    } else {
//                                                         if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 18) {
//                                                                                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                                        view.layer.borderColor = UIColor.green.cgColor
//                                                                                        view.layer.borderWidth = 3
//                                                                                }
//                              } else {
//                                   if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 21) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                        }
//                                } else {
//                                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 21) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                                                                    }
//                             } else {
//                                 if  arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 28) {
//                                     if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                         view.layer.borderColor = UIColor.green.cgColor
//                                         view.layer.borderWidth = 3
//                                     }
//                                    } else {
//                                        if  arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 28) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                                                                        }
//                                        } else {
//                                           if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 35) {
//                                               if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                   view.layer.borderColor = UIColor.green.cgColor
//                                                   view.layer.borderWidth = 3
//                                               }
//                                            } else {
//                                                if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 35) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                                                            }
//                                        } else {
//                                            if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 42) {
//                                                if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                    view.layer.borderWidth = 3
//                                                }
//                                    } else {
//                                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 42) {
//                                        if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                            view.layer.borderColor = UIColor.green.cgColor
//                                            view.layer.borderWidth = 3
//                                                                                                }
//                                        } else {
//                                            if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 49) {
//                                                 if view.subviews.isEmpty, view.backgroundColor != .white, ((sevenBottom.first?.subviews.first?.backgroundColor == .gray || sevenBottom.first?.subviews.first?.backgroundColor == .blue) && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fourteenBottom.first?.subviews.first?.backgroundColor == .gray || fourteenBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyOneBottom.first?.subviews.first?.backgroundColor == .gray || twentyOneBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentyEightBottom.first?.subviews.first?.backgroundColor == .gray || twentyEightBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtyFiveBottom.first?.subviews.first?.backgroundColor == .gray || thirtyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyTwoBottom.first?.subviews.first?.backgroundColor == .gray || fortyTwoBottom.first?.subviews.first?.backgroundColor == .blue) && sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                                                     view.layer.borderColor = UIColor.green.cgColor
//                                                     view.layer.borderWidth = 3
//                                                 }
//                                            } else {
//                                                if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 49) {
//                                                      if view.subviews.isEmpty, view.backgroundColor != .white, sevenBottom.first(where: {$0.subviews.isEmpty}) != nil && fourteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyOneBottom.first(where: {$0.subviews.isEmpty}) != nil && twentyEightBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyTwoBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                                                          view.layer.borderColor = UIColor.green.cgColor
//                                                          view.layer.borderWidth = 3
//                                                                                                    }
//            } else {
//                if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 27) {
//                     if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil)  {
//                         view.layer.borderColor = UIColor.green.cgColor
//                         view.layer.borderWidth = 3
//                     }
//                } else {
//                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 27) {
//                    if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                        view.layer.borderColor = UIColor.green.cgColor
//                        view.layer.borderWidth = 3
//                  }
//              } else {
//                  if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 36) {
//                      if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                          view.layer.borderColor = UIColor.green.cgColor
//                          view.layer.borderWidth = 3
//                      }
//                } else {
//                    if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 36) {
//                     if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                         view.layer.borderColor = UIColor.green.cgColor
//                         view.layer.borderWidth = 3
//                    }
//                } else {
//                    if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 45) {
//                        if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                            view.layer.borderColor = UIColor.green.cgColor
//                            view.layer.borderWidth = 3
//                        }
//                     } else {
//                         if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 45) {
//                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                            view.layer.borderColor = UIColor.green.cgColor
//                            view.layer.borderWidth = 3
//                    }
//                } else {
//                     if arrayOfPossibleStepsWhite.contains(view_ch.tag) || arrayOfPossibleStepsQueenYellow.contains(view_ch.tag), checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 54) {
//                         if view.subviews.isEmpty, view.backgroundColor != .white, ((nineBottom.first?.subviews.first?.backgroundColor == .gray || nineBottom.first?.subviews.first?.backgroundColor == .blue) && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((eighteenBottom.first?.subviews.first?.backgroundColor == .gray || eighteenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((twentySevenBottom.first?.subviews.first?.backgroundColor == .gray || twentySevenBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((thirtySixBottom.first?.subviews.first?.backgroundColor == .gray || thirtySixBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil) || ((fortyFiveBottom.first?.subviews.first?.backgroundColor == .gray || fortyFiveBottom.first?.subviews.first?.backgroundColor == .blue) && nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil) {
//                             view.layer.borderColor = UIColor.green.cgColor
//                             view.layer.borderWidth = 3
//                         }
//                    } else {
//                        if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, checker.backgroundColor == .yellow, currentMove == .whiteMove, view.tag == (view_ch.tag - 54) {
//                        if view.subviews.isEmpty, view.backgroundColor != .white, nineBottom.first(where: {$0.subviews.isEmpty}) != nil && eighteenBottom.first(where: {$0.subviews.isEmpty}) != nil && twentySevenBottom.first(where: {$0.subviews.isEmpty}) != nil && thirtySixBottom.first(where: {$0.subviews.isEmpty}) != nil && fortyFiveBottom.first(where: {$0.subviews.isEmpty}) != nil {
//                            view.layer.borderColor = UIColor.green.cgColor
//                            view.layer.borderWidth = 3
//                        }
//                    } else {
//                         if arrayOfPossibleStepsWhite.isEmpty, arrayOfPossibleStepsQueenYellow.isEmpty, currentMove == .whiteMove, checker.backgroundColor == .yellow, view.tag == (view_ch.tag + 14) {
//                                                                if view.subviews.isEmpty, view.backgroundColor != .white, sevenTop.first(where: {$0.subviews.isEmpty}) != nil {
//                                                                    view.layer.borderColor = UIColor.green.cgColor
//                                                                    view.layer.borderWidth = 3
//                                                                }  else {
//                                                                    for view in board.subviews {
//                                                                        if view.backgroundColor != .white {
//                                                                            view.backgroundColor = .black
//                                                                            view.layer.borderWidth = 0
//
//                                                                        }
//                                                                    }
//                                                                }
//                                                            } else {
//                                                                for view in board.subviews {
//                                                                    if view.backgroundColor != .white {
//                                                                        view.backgroundColor = .black
//                                                                        view.layer.borderWidth = 0
//                                                                    }
//                                                                }
//                                                            }
//                                                        }
//                                                    }
//                                                }
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//            }
//                                                                    }}
//            }
//                }
//            }
//            }
//        }
//        }
//        }
//            }
//        }
//                                    }
//                                    }
//                                }
//                            }
//                        }
//                        }
//                    }
//                }
//            }
//        }
//                                                            }
//          }
//                                                    }
//                                                }
//                                            }
//                                        }
//                                            }
//                                            }}}}}}}}}}}
//        }
//                                    }
//                                                }
//                                    }
//                                }
//                        }
//                    }
//                    }
//                                            }
//                                        }
//                                        }
//                                    }
//                                    }
//                                }
//                            }
//                    }
//                }
//            }
//            }
//        }
//        }
//                                            }
//                                        }
//                                        }
//                                    }
//                                                }
//                                    }
//                                }
//                        }
//                    }
//                    }
//                                            }
//                                        }
//                                        }
//                                    }
//                                    }
//
//
//
//
//
//
//
