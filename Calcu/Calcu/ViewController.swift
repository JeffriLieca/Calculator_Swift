//
//  ViewController.swift
//  Calcu
//
//  Created by MacBook Pro on 05/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultbox: UILabel!
    @IBOutlet weak var butdeltext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultbox.text="0"
    }
    
    var tampung : String="0"
    var angka1:Double=0
    var angka2:Double=0
    var hasil:Double=0
    var kedua:Bool=false
    var baruoper:Bool=false
    var baruequal:Bool=false
    var mines:Bool=false
    var oper:String=""
    var tampil:String=""
    
    func ubahDel(){
        butdeltext.setTitle("C",for:.normal)
    }
    @IBAction func butdel(_ sender: Any) {
        if(butdeltext.titleLabel?.text=="C"){
            if( baruequal==true){
                angka1=0
//                tampung="0"
            }
            else{
                tampung="0"
            }
            butdeltext.setTitle("AC",for:.normal)
        }
        else {
            tampung="0"
            kedua=false
            oper=""
            angka1=0
            angka2=0
            hasil=0
            baruoper=false
            baruequal=false
        }
        resultbox.text="0"
    }
    
    @IBAction func butplusmin(_ sender: Any) {
        
        
        if((Double(resultbox.text ?? "0") ?? 0)*(-1)==floor((Double(resultbox.text ?? "0") ?? 0)*(-1))){
            tampil=String((Int(resultbox.text ?? "0") ?? 0)*(-1))
            resultbox.text=tampil
        }
        else{
            tampil=String((Double(resultbox.text ?? "0") ?? 0)*(-1))
            resultbox.text=tampil
        }
        if(baruoper==true || baruequal==true){
            angka1=angka1*(-1)
            baruoper=false
        }
        else{
            tampung=tampil
        }
        if(mines==false){
            mines=true
        }
        else{
            mines=false
        }
    }
    @IBAction func butpercent(_ sender: Any) {
        
        
        if(baruoper==true || baruequal==true){
            angka1=angka1/100
            if(angka1==floor(angka1)){
                resultbox.text=String(Int(angka1))
            }
            else{
                resultbox.text=String(angka1)
            }
            baruoper=false
//            tampung=String((Double(tampung) ?? 0)/100)
//            if(Double(tampung)==floor(Double(tampung) ?? 0)){
//                resultbox.text=String(Int(Double(tampung) ?? 0))
//            }
//               else{
//                   resultbox.text=String(Double(tampung) ?? 0)
//            }
        }
        else{
            tampung=String((Double(tampung) ?? 0)/100)
            if(Double(tampung)==floor(Double(tampung) ?? 0)){
                resultbox.text=String(Int(Double(tampung) ?? 0))
            }
               else{
                   resultbox.text=String(Double(tampung) ?? 0)
            }
        }
    }
    @IBAction func butBagi(_ sender: Any) {
        if(kedua==false){
            angka1=Double(tampung) ?? 0
            kedua=true
            tampung="0"
        }
        else {
            if(baruequal==false){
                angka2=Double(tampung) ?? 0
                if(oper==":"){
                    hasil=angka1/angka2
                }
                else if (oper=="X"){
                    hasil=angka1*angka2
                }
                else if (oper=="-"){
                    hasil=angka1-angka2
                }
                else if (oper=="+"){
                    hasil=angka1+angka2
                }
            }
            if(hasil==floor(hasil)){
                resultbox.text=String(Int(hasil))
            }
            else{
                resultbox.text=String(hasil)
            }
                angka1=hasil
            baruoper=true
        }
        oper=":"}
    @IBAction func butKali(_ sender: Any) {
        if(kedua==false){
            angka1=Double(tampung) ?? 0
            kedua=true
            tampung="0"
        }
        else {
            if(baruequal==false){
                angka2=Double(tampung) ?? 0
                if(oper==":"){
                    hasil=angka1/angka2
                }
                else if (oper=="X"){
                    hasil=angka1*angka2
                }
                else if (oper=="-"){
                    hasil=angka1-angka2
                }
                else if (oper=="+"){
                    hasil=angka1+angka2
                }
            }
            if(hasil==floor(hasil)){
                resultbox.text=String(Int(hasil))
            }
            else{
                resultbox.text=String(hasil)
            }
            angka1=hasil
            baruoper=true
        }
    oper="X"
    }
    @IBAction func butMinus(_ sender: Any) {
        
        if(kedua==false){
            angka1=Double(tampung) ?? 0
            kedua=true
            tampung="0"
        }
        else {
            if(baruequal==false){
                angka2=Double(tampung) ?? 0
                if(oper==":"){
                    hasil=angka1/angka2
                }
                else if (oper=="X"){
                    hasil=angka1*angka2
                }
                else if (oper=="-"){
                    hasil=angka1-angka2
                }
                else if (oper=="+"){
                    hasil=angka1+angka2
                }
            }
            if(hasil==floor(hasil)){
                resultbox.text=String(Int(hasil))
            }
            else{
                resultbox.text=String(hasil)
            }
            angka1=hasil
            baruoper=true
        }
        oper="-"
        
    }
    @IBAction func butPlus(_ sender: Any) {
        if(kedua==false){
            angka1=Double(tampung) ?? 0
            kedua=true
            tampung="0"
        }
        else {
            if(baruequal==false){
                angka2=Double(tampung) ?? 0
                if(oper==":"){
                    hasil=angka1/angka2
                }
                else if (oper=="X"){
                    hasil=angka1*angka2
                }
                else if (oper=="-"){
                    hasil=angka1-angka2
                }
                else if (oper=="+"){
                    hasil=angka1+angka2
                }
            }
            
            if(hasil==floor(hasil)){
                resultbox.text=String(Int(hasil))
            }
            else{
                resultbox.text=String(hasil)
            }
            angka1=hasil
            baruoper=true
        }
        oper="+"}
    @IBAction func butEqual(_ sender: Any) {
        if(kedua==false){
//            angka1=Double(tampung) ?? 0
            resultbox.text=String(tampung)
        }
        else {
            if(baruoper==true){

                angka2=angka1
                baruoper=false
                tampung=String(angka2)
            }
            else{
                angka2=Double(tampung) ?? 0
            }
                if(oper==":"){
                    hasil=angka1/angka2
                }
                else if (oper=="X"){
                    hasil=angka1*angka2
                }
                else if (oper=="-"){
                    hasil=angka1-angka2
                }
                else if (oper=="+"){
                    hasil=angka1+angka2
                }
            
            if(hasil==floor(hasil)){
                resultbox.text=String(Int(hasil))
            }
            else{
                resultbox.text=String(hasil)
            }
            angka1=hasil
            baruequal=true
        }
    }
    @IBAction func butKoma(_ sender: Any) {
        //        if(kedua==true){
        //            angka1=angka1*(-1)
        //        }
        //        else{
        //            tampung=tampil
        //        }
        if(baruoper==true || baruequal==true){
            tampung="0."
            baruoper=false
            baruequal=false
        }
        else{
            if(tampung.contains(".")){
                
            }
            else{
                tampung=tampung+"."
            }
            
        }
        resultbox.text=tampung
    }
    @IBAction func but0(_ sender: Any) {
        
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
            if(!(tampung=="0")){tampung+="0"}
        
        
        resultbox.text=tampung
    
        baruequal=false
        
    }
    @IBAction func but1(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="1"}
        else
        {
               tampung="1"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but2(_ sender: Any) {
        
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="2"}
        else
        {
               tampung="2"
        }
            resultbox.text=tampung
        baruequal=false
        }
    @IBAction func but3(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="3"}
        else
        {
               tampung="3"
        }
            resultbox.text=tampung
        baruequal=false
        }
    @IBAction func but4(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="4"}
        else
        {
            tampung="4"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but5(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="5"}
        else
        {
            tampung="5"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but6(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="6"}
        else
        {
            tampung="6"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but7(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="7"}
        else
        {
            tampung="7"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but8(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="8"}
        else
        {
            tampung="8"
        }
        resultbox.text=tampung
        baruequal=false
    }
    @IBAction func but9(_ sender: Any) {
        ubahDel()
        if(baruoper==true){
            baruoper=false
            tampung="0"
        }
        if (baruequal==true){
            tampung="0"
        }
        if(!(tampung=="0")){
            tampung+="9"}
        else
        {
            tampung="9"
        }
        resultbox.text=tampung
        baruequal=false
    }
}

