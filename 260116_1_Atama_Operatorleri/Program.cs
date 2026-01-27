namespace _260116_1_Atama_Operatorleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             Atama Operatörleri
            +=    topla ve eşitle
            -=    çıkart ve eşitle
            *=    çarp ve eşitle
            /=    böl ve eşitel
            %=    mod al ve eşitle
            ++    1 artır
            --    1 azalt
            +     string olarak birleştir
             */

            int sayi1 = 900;
            //kodun içinde herhangi bir yerde sayi1 e yeni değer eklenmesi gerekiyor            

            //sayi yeniSayi1 olarak devam edilecek
            // int yeniSayi1 = sayi1 + 10;//bunun yerine aşağıdaki atama işlemi yapılarak yeni değişken tanımlaması yapılmaz, sayi1 değişkeni yeni aldığı değer üzerinden işlem görmesini sağlayacaktır
            // sayi1 = sayi1 + 10;
            sayi1 += 10;

            //kod ilerledi, sayi1 için yeni bir bir işlem gerekli oldu, örneğin %20 artırılmak istendi

            //int yeniSayi2 = yeniSayi1 + yeniSayi1 * 20 / 100;
            //sayi1 artık yeniSayi2 olarak devam edilecek
            //sayi1 = sayi1 + sayi1 * 20 / 100;
            sayi1 += sayi1 * 20 / 100;
            //************************************
            int sayi2 = 100;//değerini 5 ile çarpalım
            //sayi2 = sayi2 * 5;
            sayi2 *= 5;
            Console.WriteLine("sayi2=100 ,sayi2 değeri 5 ile çarptık:" + sayi2);
            int sayi3 = 450;
            //sayi3 9 ile bölündüğünde sonucunu atama operatörü ile yazalım
            sayi3 /= 9;
            Console.WriteLine("450 değerinin 9 ile bölünmesi:" + sayi3);

            int sayi4 = 845;
            //sayi4 değerinin 9 ile bölünmesinde kalanı atama operatörü ile hesaplayınız??
            sayi4 %= 9;
            Console.WriteLine("845 sayısının 9 ile bölünmesinde kalan:" + sayi4);
            /*
            ++
            --
            + 
            operatörlerin kullanılması
             */
            int deger1 = 10;
            deger1++;//deger1 in değeri 1 artırıldı
            Console.WriteLine("deger1=10 değeri ++ ile artırıldı:" + deger1);
            deger1 += 1;//deger++ ile aynıdır
            Console.WriteLine("deger1=10  +=1 ile artırıldı:" + deger1);
            int deger2 = ++deger1;//deger1 in değeri 1 artırılır ve deger2 ye atanır
            Console.WriteLine("++deger1  :" + deger2);
            //int deger3 = deger2++ + 10;//ilkin deger2 değeri deger3 e eşitlenir sonra ++ işlemi deger2 ye uygulanır
            int deger3 = ++deger2 + 10;//deger2 nin değeri 1 artırılır ve 10 ile toplanarak deger3 e atanır. değer artımı yapılarak eşitleme yapılır

            Console.WriteLine("deger3 için :" + deger3);
            //*******************************************
            int s1 = 10;
            int s2 = 20;
            int toplam= s1 + s2;//30
            Console.WriteLine("hesaplanan toplam:"+toplam);
            Console.WriteLine("string toplam:"+s1+s2);//1020
            Console.WriteLine("Parantez toplam:"+(s1+s2));//30
            Console.WriteLine("çarpım:"+s1*s2);
            Console.WriteLine("Parantez fark :"+(s1-s2));
            Console.WriteLine("Bölme:"+s1/s2);
            Console.WriteLine("Mod Alam:"+ s1 %s2);
            Console.WriteLine("-----------------------");
            Console.WriteLine(s1+s2);//30 olacaktır, string bir ifade + işleminden önce yok
            Console.WriteLine(""+s1+s2);//1020 olacaktır, + işleminden önce "" var
            //-----------------------------------------------------
            //Bölme işlemi için  bazı notlar
            //  10/2=>5, 10, 2 nin katıdır
            //14125=>2,3,5,11,53 katı mı?
            int kat1 = 14125;
            Console.WriteLine("14125,2'nin katı mı?:"+kat1%2);
            Console.WriteLine("14125,3'nin katı mı?:"+ kat1 %3);
            Console.WriteLine("14125,5'nin katı mı?:"+ kat1 %5);
            Console.WriteLine("14125,11'nin katı mı?:"+ kat1 %11);
            Console.WriteLine("14125,53'nin katı mı?:"+ kat1 %53);






        }
    }
}
