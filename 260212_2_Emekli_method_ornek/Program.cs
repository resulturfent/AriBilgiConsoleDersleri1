namespace _260212_2_Emekli_method_ornek;

internal class Program
{
    static void Main(string[] args)
    {
        /*
         Bir ülkede emeklilik hesabı cinsiyet,yaş,prim gün sayısı(Çalıştığı gün sayısı) şartlarına göre hesaplanıp emekli edilmektedir 
        Eğer Cinsiyet kadın ise
        yaş 60 ve üstü ise, prim 7300 ise kişi maaşının 15 katı kadar ikramiye alarak emekli ediliyor

        Eğer Cinsiyet erkek ise
        yaş 65 ve üstü ise, prim 8500 ise kişi maaşının 17.5 katı kadar ikramiye alarak emekli ediliyor 

        bu şartlara kişi emekli ise alacağı ikramiye, emekli değilse emekli olmama nedenini veren yapıyı kodlayınız
        NOT:Cinsiyet seçimi switch case ile yapılacaktır
        NOT:Eğer prim, yaş ve cinsiyet hatalı girilirse kullanıcıdan bir daha girmesi istenecektir, tekrar giriş yapmayacaksa bu koşul kullanıcıya bırakılır ve kullanıcı klavyeden belirlenen bir harf,yazı, karakter ile çıkış sağlanmalıdır

         */
        //Method adları büyük harf ile başlar yasHesapla değil=> YasHesapla
        //Camel(Deve) Case=> değişken ilk harf küçük, sonrasında büyük => ToplamHesapla=> toplamHesapla 


    }


    static void EmekliHesapla(string cinsiyet)
    {
        switch (cinsiyet)
        {
            case "kadın":
            case "bayan":
                byte girilenYas = Yas();
                if (girilenYas >= 60)
                {
                    int girilenPrim = PrimGunSayisi();
                    if (girilenPrim>=7300)
                    {
                        //...Emekli olabilir
                    }
                    else
                    {

                    }

                }
                else
                {
                    Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, girilenYas);
                }
                break;

            case "erkek":
            case "bay":

                break;
            default:
                Console.WriteLine("Hatalı cinsiyet girişi");
                break;
        }
    }
    static byte Yas()
    {
        EkranaYaz("yaşınız");
        return Convert.ToByte(Console.ReadLine());
    }

    static void EkranaYaz(string metin)
    {
        Console.WriteLine(metin);
    }

    static int PrimGunSayisi()
    {
        EkranaYaz("Prim gün sayısı giriniz?");
        return Convert.ToInt32(Console.ReadLine());
    }

}
