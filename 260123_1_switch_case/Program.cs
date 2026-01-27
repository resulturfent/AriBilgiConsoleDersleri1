namespace _260123_1_switch_case
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             switch case karar yapısı sadece eşitlik durumunda çalışan bir karar yapısıdır

             */
            int sayi = 0;

            switch (sayi)//değişken sadece tanımlanır, burda tanımlanan değişken herhangi karşılaştırma operatörü ile kullanılmaz, sadece case ler için hangi değişken kullanılacak belirtilir. 
            {
                case 1://sayi değişkeni 1'e eşit olduğunda burdaki kodlar okunacaktır

                    //kod lanaı
                    break;//1 için son
                case 2:


                    break;//her bir case bir break ille sonlanır

                default://bir değer almaz , eğer case lerde verilen değer sayi değişkeniinde yoksa default kısmındaki kodklar okunacaktır.if -else yapısındaki else gibi .alışır

                    //kodlar
                    break;//default için son

                case 56:
                    //56 için kodlar
                    break;
            }

            string metin = "merhaba";

            switch (metin)
            {
                default:
                    break;

                case "hello":
                case "mer":
                case "":
                    //1'den fazla case 1 break ile sonlandırılabilir
                    break;

                case "slaw":

                    break;

                case "hallo":

                    break;

            }

        }
    }
}
