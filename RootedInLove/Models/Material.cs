using System.ComponentModel.DataAnnotations.Schema;
namespace RootedInLove.Models
{
    public class Material
    {
        public short ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ImageFile { get; set; }
        public string GooglePlayLink { get; set; }
        public string URLReference { get; set; }
        public short Author_ID { get; set; }
        public short Category_ID { get; set; }
        [NotMapped]
        public Author Author { get; set; }
        [NotMapped]
        public Category Category { get; set; }
    }
}
