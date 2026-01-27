namespace _260120_3_if_else_Login
{
    internal class Program
    {
        static void Main(string[] args)
        {

        //Kullanıcıdan bir websitesi için login sayfasında giriş ekranı için kullanıcı ve şifre isteyen sistemi kodlayarak tasarlayınız
        //Kullanıcı Adı: admin
        //Kullanıcı Şifre:ab?0

        BASLA:

            Console.WriteLine("Kullanıcı adınızı giriniz?");
            string kullaniciAdi= Console.ReadLine();

            Console.WriteLine("Şifrenizi giriniz?");
            string sifre = Console.ReadLine();

            if (kullaniciAdi =="admin" && sifre=="ab?0")
            {
                Console.WriteLine("Giriş başarılı");
                Console.WriteLine("!!!!!!Hoş Geldiniz!!!!!!!!!!");
            }
            else
            {
                Console.WriteLine("Kullanıcı adı veya şifre hatalı, tekrar deneyiniz!");
                goto BASLA;
            }
        }
    }
}
