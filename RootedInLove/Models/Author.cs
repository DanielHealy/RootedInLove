using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace RootedInLove.Models
{
    public class Author
    {
        public short ID { get; set; }
        public string FormalName { get; set; }
        public string Biography { get; set; }
        public string ImageFile { get; set; }
        public string GooglePlayLink { get; set; }
        public string URLReference { get; set; }
        [NotMapped]
        public List<Material> Materials { get; set; }
        [NotMapped]
        public List<Presentation> Presentations { get; set; }
    }
}
