using Microsoft.EntityFrameworkCore;
namespace RootedInLove.Models
{
    public class Context : DbContext
    {
        public DbSet<Author> Authors { get; set; }
        public DbSet<Presentation> Presentations { get; set; }
        public DbSet<Material> Materials { get; set; }
        public DbSet<Category> Categories { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySql(@"server=localhost;database=Rooted_In_Love;user=ReadOnlyUser;port=3306;password=ReadOnlyUser;");
        }
    }
}
