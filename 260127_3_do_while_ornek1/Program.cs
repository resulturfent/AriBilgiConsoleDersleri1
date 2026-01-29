namespace _260127_3_do_while_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //kullanıcıdan negatif sayı alınakadar girilen pozitif sayıların toplamını ve adetini hesaplayan do while yapısını kodlayınız
            //kullanıcıdan 1-100 arasında sayı girmesini isteyiniz, girilen sayı 1-100 arasında değil ise tekrar sayı girmesini isteyiniz, girilen sayı 1-100 arasında ise sayıyı ekranda gösteriniz ve 1-100 arasında 11 sayı girildikten sonra işlemi sonlandırıp girilen sayıların toplamını ekranda gösteriniz

            //kullanıcı adı admin, şifresi 12?ab olan bir sistem için 3 defa giriş hakkı tanıyan do while sistemini kodlayınız



            //******************************************************************
            //kullanıcıdan alınan 5 sayıdan en büyük sayıyı hesaplayan yapıyı kodlayınız


            int sayiAdeti = 0;
            int enbuyukSayi=0;
            do
            {

                Console.WriteLine(sayiAdeti+1+".soruyu giriniz?");
                int sayi1 = Convert.ToInt32(Console.ReadLine());

                if (sayi1>enbuyukSayi)
                {
                    enbuyukSayi = sayi1;
                }
                sayiAdeti++;

            } while (sayiAdeti<5);

            Console.WriteLine("Girilen sayılar içinde en büyük sayı:"+enbuyukSayi);
        }
    }
}
