//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/20.
//

import UIKit

class SearchTableViewController: UITableViewController {

    var movieList = MovieInfo()
    
//    ["영화1", "영화2", "영화3", "영화4", "영화5", "영화6", "영화7", "영화8", "영화9", "영화10"]
    
    var releaseDate = ["날짜1", "날짜2", "날짜3", "날짜4", "날짜5", "날짜6", "날짜7", "날짜8", "날짜9", "날짜10"]
    
    var summary = ["fsdffadsffadsfasdf ewrafdsasefa ew aweawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf", "fsdffadsffadsfasdf ewrafdsasefa ew awe eawefaewasldjflkjaslkdjfkjasjdkjflasjdljflkjasdlkjflkjasdlkjflajsdlkflaksjdfljalksdjkfljlkasjdf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 100
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieList.movie.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell

        let data = movieList.movie[indexPath.row]
        cell.configureCell(data: data)
        
        return cell
    }
    
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
