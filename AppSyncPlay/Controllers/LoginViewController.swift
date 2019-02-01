//
//  LoginViewController.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 24/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var schoolIdField : UITextField!
    @IBOutlet weak var classroomIdField : UITextField!
    @IBOutlet weak var userIdField : UITextField!
    
    var selectedSchool = DataBase.schools[0]
    var selectedClassroom = DataBase.classrooms[0]
    var selectedUser = DataBase.users[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        schoolIdField.inputView = UIPickerView(tag: 1, dataSource: self, delegate: self)
        schoolIdField.text = selectedSchool.name
        schoolIdField.addCustomToolBar()
        classroomIdField.inputView = UIPickerView(tag: 2, dataSource: self, delegate: self)
        classroomIdField.text = selectedClassroom.name
        classroomIdField.addCustomToolBar()
        userIdField.inputView = UIPickerView(tag: 3, dataSource: self, delegate: self)
        userIdField.text = selectedUser.name
        userIdField.addCustomToolBar()
    }
    
    @IBAction func login(sender: UIButton) {
        AppConfig.shared.schoolId = selectedSchool.id
        AppConfig.shared.classroomId = selectedClassroom.id
        AppConfig.shared.userId = selectedUser.id
        AppConfig.shared.userName = selectedUser.name
        
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "posts")
        let navigationController = UINavigationController(rootViewController: viewController!)
        
        transitionTo(viewController: navigationController)
    }    
}

extension LoginViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1: return DataBase.schools.count
        case 2: return DataBase.classrooms.count
        case 3: return DataBase.users.count
        default: return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1: return DataBase.schools[row].name
        case 2: return DataBase.classrooms[row].name
        case 3: return DataBase.users[row].name
        default: return "-"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            schoolIdField.text = DataBase.schools[row].name
            selectedSchool = DataBase.schools[row]
        case 2:
            classroomIdField.text = DataBase.classrooms[row].name
            selectedClassroom = DataBase.classrooms[row]
        case 3:
            userIdField.text = DataBase.users[row].name
            selectedUser = DataBase.users[row]
        default: break
        }
    }
}
