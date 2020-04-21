//
//  ViewController.swift
//  FutureView
//
//  Created by Григорий Сухоруков on 24/03/2020.
//  Copyright © 2020 Григорий Сухоруков. All rights reserved.
//

import UIKit

/*
 Должен уметь работать с ViewModel
 
 Интерфейс
 - вью готово для отрисовки
 - размер контейнера
 - размер контейнера изменился
 
 */

class ViewController: UIViewController {
    private(set) var presenter: Presenter
    
    required init(with presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

//    private(set) var viewStorage: ViewStorage = ViewStorage()
//    private(set) var lastViewModel: ViewModel?

    
    // Не будем перегружать loadView, потому что viewModel в Presenter может полностью изменять свою ViewModel.
    // Так в случае создания новой ViewModel мы не сможем заменить view у контроллера (если она уже была создана).
//    override func loadView() {
//    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.activate(with: self)
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        updateViewContext()
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        updateViewContext()
//    }
//
//    func updateViewContext() {
//        let viewContext = currentViewContext()
//        presenter.viewContextDidChanged(viewContext)
//    }
//
//    func currentViewContext() -> ViewContext {
//        let viewContext = ViewContext()
//        viewContext.size = view.bounds.size
////        viewContext.orientation =  UIApplication.shared.statusBarOrientation
//        // application -> screnes -> windowsScene -> interface orientation
//        return viewContext
//    }
    
}

extension ViewController: PresenterOutput {
//    // Когда нужно полностью снести старую модель
//    func presenter(_ presenter: Presenter, didChangedViewModel viewModel: ViewModel) {
//        if let lastViewModel = lastViewModel {
//            lastViewModel.unbind(withViewStorage: viewStorage)
//        }
//
//        viewModel.bind(toContainer: view, withViewStorage: viewStorage)
//        lastViewModel = viewModel
//    }
//
//    // Когда нужно обновить мадель (к примеру после изменений в Вью)
//    func presenter(_ presenter: Presenter, shouldRelayoutViewModel viewModel: ViewModel) {
//
//    }
}
