//
//  BODS.swift
//  finalKWK2022Project
//
//  Created by scholar on 8/5/22.
//

import UIKit

class BODS: UIViewController , UITableViewDataSource{

        private let table: UITableView = {
            let table = UITableView()
            
            table.register(UITableViewCell.self,
        forCellReuseIdentifier: "cell")
            
            return table
        }()
        
        var items = [String]()

        override func viewDidLoad() {
            super.viewDidLoad()
            self.items = UserDefaults.standard.stringArray(forKey: "items") ?? []
            title = "Art Goddess"
            view.addSubview(table)
            table.dataSource = self
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                target: self,
                                                                action: #selector(didTapAdd))
            let niceBrown = UIColor(red: 0.83, green: 0.80, blue: 0.73, alpha: 1.00)
        
            //self.tableView.backgroundColor = niceBrown

            
            UIScrollView.appearance().backgroundColor = niceBrown
        }
        
        @objc private func didTapAdd() {
            let alert = UIAlertController(title: "Inner Art Goddess", message: "",
                    preferredStyle: .alert)
            alert.addTextField{ field in
                field.placeholder = "Share your thoughts..."
            }
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak self] (_) in
                if let field = alert.textFields?.first {
                    if let text = field.text, !text.isEmpty {
                        
                        
                        DispatchQueue.main.async {
                            var currentItems = UserDefaults.standard.stringArray(forKey: "items")
                                ?? []
                            currentItems.append(text)
                            UserDefaults.standard.setValue(currentItems, forKey: "items")
                            self?.items.append(text)
                            self?.table.reloadData()
                        }
                    }
                }
            }))
            
            present(alert, animated: false)
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            table.frame = view.bounds
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return  items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = table.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
            return cell
        }

    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
