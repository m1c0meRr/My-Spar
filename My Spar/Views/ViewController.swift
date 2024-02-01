//
//  ViewController.swift
//  My Spar
//
//  Created by Sergey Savinkov on 30.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    var count = 1
    var price = 120.0
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        imageView.backgroundColor = .clear
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let cardPriceButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemGreen
        button.setTitle("Цена по карте", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let starLabel = UILabel(text: "⭐️ 4.1 |",
                                    font: UIFont.systemFont(ofSize: 16,weight: .regular),
                                    color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), line: 0)
    
    private let label = UILabel(text: "19 отзывов",
                                font: UIFont.systemFont(ofSize: 16, weight: .regular),
                                color: #colorLiteral(red: 0.5472301245, green: 0.5472301245, blue: 0.5472301245, alpha: 1),
                                line: 0)
    
    private let nameLabel = UILabel(text: "Добавка ''Липа'' \nк чаю 200 г",
                                    font: UIFont.systemFont(ofSize: 32, weight: .bold),
                                    color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                    line: 0)
    
    private let countryLabel = UILabel(text: "🇪🇸 Испания, Риоха",
                                       font: UIFont.systemFont(ofSize: 15, weight: .regular),
                                       color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                       line: 0)
    
    private let descriptionLabel = UILabel(text: "Описание",
                                           font: UIFont.systemFont(ofSize: 20, weight: .heavy),
                                           color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                           line: 0)
    
    private let descriptionTextLabel = UILabel(text: "Флавоноиды липового цвета обладают противовоспалительным действием, способствует укреплению стенки сосудов",
                                               font: UIFont.systemFont(ofSize: 20, weight: .regular),
                                               color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                               line: 0)
    
    private let specificationsLabel = UILabel(text: "Основные характеристики",
                                              font: UIFont.systemFont(ofSize: 20, weight: .heavy),
                                              color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                              line: 0)
    
    private let productionLabel = UILabel(text: "Производство ........................... Россия, Краснодарский край",
                                          font: UIFont.systemFont(ofSize: 12, weight: .regular),
                                          color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                          line: 0)
    
    private let energyValueLabel = UILabel(text: "Энергетическая \nценность,ккал/100 г ...................................... 25 ккал, 105 кДж",
                                           font: UIFont.systemFont(ofSize: 12, weight: .regular),
                                           color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                           line: 0)
    
    private let fatLabel = UILabel(text: "Жиры/100 г ......................................................................... 0,1 г",
                                   font: UIFont.systemFont(ofSize: 12, weight: .regular),
                                   color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                   line: 0)
    
    private let carbLabel = UILabel(text: "Белки/100 г ......................................................................... 1,3 г",
                                    font: UIFont.systemFont(ofSize: 12, weight: .regular),
                                    color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                    line: 0)
    
    private let proteinLabel = UILabel(text: "Углеводы/100 г.....................................................................3,3 г",
                                       font: UIFont.systemFont(ofSize: 12, weight: .regular),
                                       color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                       line: 0)
    
    private let allSpecificationsButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Все характеристики", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let reviewsCollectionsLabel = UILabel(text: "Отзывы",
                                                  font: UIFont.systemFont(ofSize: 25, weight: .regular),
                                                  color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                                  line: 0)
    
    private let priceLabel = UILabel(text: "55.9 р/кг",
                                     font: UIFont.systemFont(ofSize: 25, weight: .semibold),
                                     color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                     line: 0)
    
    private let saleLabel = UILabel(text: "100.0",
                                    font: UIFont.systemFont(ofSize: 15, weight: .semibold),
                                    color: #colorLiteral(red: 0.5472301245, green: 0.5472301245, blue: 0.5472301245, alpha: 1),
                                    line: 0)
    
    private let allReviewsButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Все 152", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let reviewsButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.borderColor = UIColor.systemGreen.cgColor
        button.layer.borderWidth = 2
        button.setTitle("Оставить отзыв", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var countPriceButton: UIButton = {
        let button = UIButton()
        
        var config = UIButton.Configuration.filled()
        config.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        config.baseBackgroundColor = .systemGreen
        config.baseForegroundColor = UIColor.white
        config.title = "\(count) шт"
        config.subtitle = "\(price) р"
        config.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 12)
        config.attributedSubtitle?.font = UIFont.systemFont(ofSize: 10)
        config.titleAlignment = .center
        button.layer.cornerRadius = 15
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemGreen
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(plusTappedAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemGreen
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(minusTappedAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let collectionReviews: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.addShadowOnView(opacity: 0.2, radius: 4.0)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Шт", "Кг"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        segmentedControl.selectedSegmentTintColor = .white
        let font = UIFont.systemFont(ofSize: 16)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font as Any,
                                                 NSAttributedString.Key.foregroundColor: UIColor.black],
                                                for: .normal)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font as Any,
                                                 NSAttributedString.Key.foregroundColor: UIColor.black],
                                                for: .selected)
        segmentedControl.addTarget(self, action: #selector(segmentedChanged), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setDelegates()
        setupConstraints()
    }
    
    private func setupViews() {
        
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(myImageView)
        scrollView.addSubview(cardPriceButton)
        scrollView.addSubview(starLabel)
        scrollView.addSubview(label)
        scrollView.addSubview(nameLabel)
        scrollView.addSubview(countryLabel)
        scrollView.addSubview(descriptionLabel)
        scrollView.addSubview(descriptionTextLabel)
        scrollView.addSubview(specificationsLabel)
        scrollView.addSubview(productionLabel)
        scrollView.addSubview(energyValueLabel)
        scrollView.addSubview(fatLabel)
        scrollView.addSubview(carbLabel)
        scrollView.addSubview(proteinLabel)
        scrollView.addSubview(allSpecificationsButton)
        scrollView.addSubview(reviewsCollectionsLabel)
        scrollView.addSubview(allReviewsButton)
        scrollView.addSubview(collectionReviews)
        scrollView.addSubview(reviewsButton)
        scrollView.addSubview(segmentedControl)
        scrollView.addSubview(priceLabel)
        scrollView.addSubview(saleLabel)
        scrollView.addSubview(countPriceButton)
        scrollView.addSubview(plusButton)
        scrollView.addSubview(minusButton)
        
        collectionReviews.register(CollectionCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    private func setDelegates() {
        collectionReviews.dataSource = self
        collectionReviews.delegate = self
    }
    
    @objc private func segmentedChanged() {
        if segmentedControl.selectedSegmentIndex == 0 {
            
        } else {
            
        }
    }
    
    @objc private func plusTappedAction() {
        price = price + 120
        count = count + 1
        countPriceButton.configuration?.title = "\(count) шт"
        countPriceButton.configuration?.subtitle = "\(price) р"
        countPriceButton.configuration?.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 12)
        countPriceButton.configuration?.attributedSubtitle?.font = UIFont.systemFont(ofSize: 10)
    }
    
    @objc private func minusTappedAction() {
        if price > 0 {
            price = price - 120
            count = count - 1
            countPriceButton.configuration?.title = "\(count) шт"
            countPriceButton.configuration?.subtitle = "\(price) р"
            countPriceButton.configuration?.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 12)
            countPriceButton.configuration?.attributedSubtitle?.font = UIFont.systemFont(ofSize: 10)
        } else {
            price = 0
            count = 0
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            myImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            myImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myImageView.heightAnchor.constraint(equalToConstant: 350),
            
            cardPriceButton.topAnchor.constraint(equalTo: myImageView.topAnchor, constant: 10),
            cardPriceButton.leadingAnchor.constraint(equalTo: myImageView.leadingAnchor, constant: 10),
            cardPriceButton.widthAnchor.constraint(equalToConstant: 90),
            
            starLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 15),
            starLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            label.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 15),
            label.leadingAnchor.constraint(equalTo: starLabel.trailingAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            countryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            countryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            countryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            descriptionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            descriptionTextLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
            descriptionTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionTextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            specificationsLabel.topAnchor.constraint(equalTo: descriptionTextLabel.bottomAnchor, constant: 15),
            specificationsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            specificationsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            productionLabel.topAnchor.constraint(equalTo: specificationsLabel.bottomAnchor, constant: 10),
            productionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            productionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            energyValueLabel.topAnchor.constraint(equalTo: productionLabel.bottomAnchor, constant: 15),
            energyValueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            energyValueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            fatLabel.topAnchor.constraint(equalTo: energyValueLabel.bottomAnchor, constant: 15),
            fatLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            fatLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            carbLabel.topAnchor.constraint(equalTo: fatLabel.bottomAnchor, constant: 15),
            carbLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            carbLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            proteinLabel.topAnchor.constraint(equalTo: carbLabel.bottomAnchor, constant: 15),
            proteinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            proteinLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            allSpecificationsButton.topAnchor.constraint(equalTo: proteinLabel.bottomAnchor, constant: 15),
            allSpecificationsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            reviewsCollectionsLabel.topAnchor.constraint(equalTo: allSpecificationsButton.bottomAnchor, constant: 40),
            reviewsCollectionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            reviewsCollectionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            allReviewsButton.bottomAnchor.constraint(equalTo: reviewsCollectionsLabel.bottomAnchor),
            allReviewsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            collectionReviews.topAnchor.constraint(equalTo: reviewsCollectionsLabel.bottomAnchor, constant: 15),
            collectionReviews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionReviews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collectionReviews.heightAnchor.constraint(equalToConstant: 180),
            
            reviewsButton.topAnchor.constraint(equalTo: collectionReviews.bottomAnchor, constant: 15),
            reviewsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            reviewsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            reviewsButton.heightAnchor.constraint(equalToConstant: 40),
            
            segmentedControl.topAnchor.constraint(equalTo: reviewsButton.bottomAnchor, constant: 15),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            priceLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 15),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            saleLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 5),
            saleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            countPriceButton.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 15),
            countPriceButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 16),
            countPriceButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            countPriceButton.heightAnchor.constraint(equalToConstant: 50),
            countPriceButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -10),
            
            minusButton.centerXAnchor.constraint(equalTo: countPriceButton.leadingAnchor, constant: 2),
            minusButton.centerYAnchor.constraint(equalTo: countPriceButton.centerYAnchor),
            minusButton.heightAnchor.constraint(equalToConstant: 50),
            minusButton.widthAnchor.constraint(equalToConstant: 50),
            
            plusButton.centerXAnchor.constraint(equalTo: countPriceButton.trailingAnchor, constant: -2),
            plusButton.centerYAnchor.constraint(equalTo: countPriceButton.centerYAnchor),
            plusButton.heightAnchor.constraint(equalToConstant: 50),
            plusButton.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionCell
        
        cell.cellConfigure()
        cell.backgroundColor = .white
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: 250,
               height: 180)
    }
}
