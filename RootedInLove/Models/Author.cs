using System.Collections.Generic;

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
        public virtual ICollection<Material> Materials { get; set; }
        public virtual ICollection<Presentation> Presentations { get; set; }
    }
}
