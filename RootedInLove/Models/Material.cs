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
        public virtual Author Author { get; set; }
        public virtual Category Category { get; set; }
    }
}
