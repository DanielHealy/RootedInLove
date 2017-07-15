namespace RootedInLove.Models
{
    public class Presentation
    {
        public short ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PDF { get; set; }
        public string URLReference { get; set; }
        public virtual Author Author { get; set; }
    }
}
