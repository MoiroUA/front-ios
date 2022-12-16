//
//  NewsViewController.swift
//  Vision
//
//  Created by Denys on 06.06.2022.
//

import UIKit
import Kingfisher
import SafariServices
class NewsViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var article = [Article](){
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    var articles = [APIResponse]()
    let apiService: NewsService = NewsService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let urlString = "https://newsapi.org/v2/top-headlines?country=ua&apiKey=9e4a9c2cbbb44b5b836b0e568608a8cb"
        
        apiService.fetchData(urlString: urlString) { [weak self] value in
            
            guard let data = value else { return }
            
            do {
                let articels = try JSONDecoder().decode(APIResponse.self, from: data)
                
                articels.articles.forEach({
                    self?.apiService.fetchData(urlString: $0.url) { [weak self] value in
                        guard let data = value else { return }
                        
                        do {
                            let article = try JSONDecoder().decode(Article.self, from: data)
                            print(article)
                            self?.article.append(article)
                        }
                        catch {
                            print(error)
                            return
                        }
                    }
                })
                
                DispatchQueue.main.async {
                    
                    self?.article = articels.articles
                    self?.tableView.reloadData()
                }
            }
            catch {
                print(error)
                return
            }
        }
    }
}
// MARK: - UITableViewDelegate
extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return article.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! NewsTableViewCell
        let article = article[indexPath.row]
        cell.newsText.text = article.title
        cell.name.text = article.source.name
        cell.newsView.layer.cornerRadius = 15
        let imageUrl = article.urlToImage
        let resource = ImageResource(downloadURL: URL(string: imageUrl ?? "https://www.suzuran-dc.com/non-image") ?? URL(string: "https://www.suzuran-dc.com/non-image")!, cacheKey: imageUrl)
        cell.newsImage.kf.setImage(with: resource)
        cell.newsImage.layer.cornerRadius = 6
        return cell
    }
}
extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let article = article[indexPath.row]
        guard let url = URL(string: article.url ?? "") else { return }
        
        let vc = SFSafariViewController(url: url)
        present (vc, animated: true)
        
    }
    
}
