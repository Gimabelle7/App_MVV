//
//  PhotosVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class PhotosVC: UIViewController{
    
    @IBOutlet weak var photosCV: UICollectionView!

    var photo :[Photo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        photosCV.register(PhotosCV.nib(), forCellWithReuseIdentifier: PhotosCV.identifier)
        self.photosCV.delegate = self
        self.photosCV.dataSource = self
        photo = PhotoVM.listPhoto()
        photosCV.reloadData()
        //FlowLayout Paso 1
        //para configurar cuantos items quiero mostrar en el collectionview
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical //.horizontal
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        photosCV.setCollectionViewLayout(layout, animated: true)
    }
}
extension PhotosVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, ClickFavDelegate  {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let indexColl = indexPath.row
        
        let cell = photosCV.dequeueReusableCell(withReuseIdentifier: "PhotosCV", for: indexPath) as! PhotosCV
        
        cell.configure(with: photo[indexColl],index: indexColl)
        cell.delegate = self
        return cell
    }
    //FlowLayout Paso 2
    //para configurar cuantos items quiero mostrar en el collectionview
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)//here your custom value for spacing
    }
    //FlowLayout Paso 3
    //para configurar cuantos items quiero mostrar en el collectionview
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
        return CGSize(width:widthPerItem, height:180)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "DetailProfileVC") as! DetailProfileVC
        nextViewController.datoDefault = photo[indexPath.row].titulo
        self.present(nextViewController, animated:true, completion:nil)
    }
    //
    func getClick(for value: Photo, index: Int) {
        print("nombre:\(value.titulo) posision:\(index) statusFav:\(value.fav)")
        if value.fav{
            photo[index].fav = false
        }else{
            photo[index].fav = true
        }
        photosCV.reloadData()
    }
}
