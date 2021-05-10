using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    class Uyeler
    {

        public Uyeler(string _uyead, string _uyesoyad, string _uyeposta, string _password, string _favsilah, string _favlegend)
        {
            UyeAd = _uyead;
            UyeSoyad = _uyesoyad;
            UyeEposta = _uyeposta;
            Password = _password;
            FavSilah = _favsilah;
            FavLegend = _favlegend;
        }
        public string UyeAd { get; set; }
        public string UyeSoyad { get; set; }
        public string UyeEposta { get; set; }

        public string Password { get; set; }

        public string FavSilah { get; set; }

        public string FavLegend { get; set; }

    }
}
