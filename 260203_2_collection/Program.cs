using System.Collections;//ArrayList için gerekli

namespace _260203_2_collection;

internal class Program
{
    static void Main(string[] args)
    {

        //List,Collection,Array, Delegate
        //ArrayList kullanmak için using System.Collections; kütüphanesini en başa eklemeniz gereklidir
        ArrayList arrayList = new ArrayList();
        
        arrayList.Add("Arı Bilgi");//ArrayList için eleman Add ile eklenir
        arrayList.Add(45);
        arrayList.Add(25.5m);//decimal
        arrayList.Add(true);
        arrayList.Add(DateTime.Now);

        for (int i = 0; i < arrayList.Count; i++)
        {
            Console.WriteLine(arrayList[i]);
        }

        ArrayList sayilar = new ArrayList();
        sayilar.Add(87);
        sayilar.Add(23);
        sayilar.Add(54);
        sayilar.Add(5);
        sayilar.Add(4);
        sayilar.Add(1);

        sayilar.Sort();//küçükten büyüğe doğru sıralama yapar

        for (int i = 0; i < sayilar.Count; i++)
        {
            Console.Write(sayilar[i] +"-");
        }
        Console.WriteLine();
        int kapasite = arrayList.Capacity;//kapasite 2 nin üstü şeklinde değer ile artar
        //
        Console.WriteLine("Kapasite, eleman sayısı değildir:"+kapasite);
        Console.WriteLine("count ile eleman sayısı:"+arrayList.Count);//Count , ArrayList eleman sayısını verir
                                                                      //index nedir??
        Console.WriteLine("index no:" +arrayList.IndexOf("Arı Bilgi"));
        Console.WriteLine("index no:" +arrayList.IndexOf(25.5m));
        Console.WriteLine("45 elemanı var mı:"+arrayList.Contains(45));

        if (arrayList.Contains(45))
        {
            Console.WriteLine( "Index numarası:"+arrayList.IndexOf(45));
        }
        //*************************************************************
        //ArrayList kopyalamak=> Devam edilecek?


  
    }
}
