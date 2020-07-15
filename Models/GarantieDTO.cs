using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lebra.Models
{
    class GarantieDTO
    {
        private int ID_GARANTIE;
        private int ID_TYPE;
        private string GARANTIE;
        private string DESC_PUBLIC;

        public GarantieDTO(int ID_TYPE, string GARANTIE, string DESC_PUBLIC)
        {
            this.ID_TYPE1 = ID_TYPE;
            this.GARANTIE1 = GARANTIE;
            this.DESC_PUBLIC1 = DESC_PUBLIC;
        }

        public int ID_TYPE1 { get => ID_TYPE; set => ID_TYPE = value; }
        public string GARANTIE1 { get => GARANTIE; set => GARANTIE = value; }
        public string DESC_PUBLIC1 { get => DESC_PUBLIC; set => DESC_PUBLIC = value; }
        public int ID_GARANTIE1 { set => ID_GARANTIE = value; }
    }
}
