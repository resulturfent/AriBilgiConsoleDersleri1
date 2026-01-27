namespace _260115_4_Ornek_Operatorler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool sonuc;


            sonuc = 14 >= 14;//
            //------true
            Console.WriteLine("14 >= 14 sonuç:" + sonuc);
            sonuc = 14 >= 14 || (45 == 45);//
            Console.WriteLine("14 >= 14 || (45 == 45) sonuç:" + sonuc);
            sonuc = 14 >= 14 && (45 == 45 && "software" == "yazılım");//
            //------true    && (true        &&        false)
            //------true    && ( false)
            //------true    && false
            //------false
            //Ödevler
            Console.WriteLine("14 >= 14 && (45 == 45 && \"software\"==\"yazılım\") sonuç:" + sonuc);
            sonuc = 'a' != 'A' && (14 >= 4 || (DateTime.Now.Year == 2026 && true != false));//işlem sonucunu adım adım yazınız
            //--------true|| (true && true)
            //--------true||(true)
            //--------true||true
            //--------true

            sonuc = "Yaşar Kemal Van" != "Orhan Pamuk İstanbul" && ((14.5 == Convert.ToDouble("14.5") || false == true) && (double)45 == Convert.ToDouble("45"));//Adım adım çözümleri veriniz
                                                                                                                                                                 //--------true&&((true||false)&&true)
            sonuc = "Yaşar Kemal Van" != "Orhan Pamuk İstanbul" && ((14.5 == Convert.ToDouble("14.5") || false == true) && (double)45 == Convert.ToDouble("45"));//Adım adım çözümleri veriniz
                                                                                                                                                                 //--------true&&((true||false)&&true)
                                                                                                                                                                 // Atama Operatorleri işlendi,devam edilecek
                                                                                                                                                                 //--------true&&((true)&&true)
                                                                                                                                                                 //--------true&&(true&&true)
                                                                                                                                                                 //--------true&&(true)
                                                                                                                                                                 //--------true&&true
                                                                                                                                                                 //--------true
        }
    }
}
