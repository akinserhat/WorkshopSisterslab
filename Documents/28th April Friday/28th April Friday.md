# 28th April Friday

Recipe collection view geliştirilmesi.

- Görsel
    
    ![Untitled](28th%20April%20Friday%207d8ed161e90e4d2cb520f1e03b5c4d40/Untitled.png)
    

Görseldeki herbir component küçük view parçacıklarına ayrıştırıldığında başka yerlerde ihtiyaç duyulduğunda kullanılabilir hale gelir.

Search bar scrollviewın content size dışına çıktığında search icon sağa doğru sürüklenerek filtre iconu ile yanyana gelip home view içerisinde sabit bir noktada kalacak. 

![Untitled](28th%20April%20Friday%207d8ed161e90e4d2cb520f1e03b5c4d40/Untitled%201.png)

1. Component Geliştirilmesi

`Bundle.main.loadNibNamed("CategoryComponent", owner: nil)?.first`

Buradaki loadNibName fonksiyonuna gönderilen string değeri ***“CategoryComponent”*** xib dosyasının adına denk gelmelidir. Ve bu fonksiyon bize View arrayi dönmektedir. Yani ***CategoryComponent.xib*** dosyasının içerisindeki tüm Viewlerin listesini return etmektedir.

```swift
public protocol ComponentProtocol {
    associatedtype View: UIView
}

public extension ComponentProtocol {
    static func make() -> View {
        Bundle.main.loadNibNamed(String(describing: View.self), owner: nil)?.first as! View
    }
}
```

Yukarıdaki Kod satırında View adında UIView’den miras alınmış dinamik bir custom view make fonksiyonu çağrılırken View ismindeki Xib dosyasını arayacak ve onun ilk objesini View classına cast edip ve onu return etmektedir.

> Extension önündeki acccess control(public, fileprivate, private….) ne ise extension veri tipi sonrasında yazılan closure(”**{}**”) içerisindeki tüm değişkenler, veri tipleri(struct, class, enum, typaliase…) önüne bir access control ifadesi yoksa spesifik tanımlanmamışsa extensionın access controlü ne ise o olmaktadır.
> 

![Untitled](28th%20April%20Friday%207d8ed161e90e4d2cb520f1e03b5c4d40/Untitled%202.png)

![Untitled](28th%20April%20Friday%207d8ed161e90e4d2cb520f1e03b5c4d40/Untitled%203.png)