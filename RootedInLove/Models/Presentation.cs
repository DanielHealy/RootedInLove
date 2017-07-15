using System.ComponentModel.DataAnnotations.Schema;
namespace RootedInLove.Models
{
    public class Presentation
    {
        public short ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PDF { get; set; }
        public string URLReference { get; set; }
        public short Author_ID { get; set; }
        [NotMapped]
        public Author Author { get; set; }
    }
}
