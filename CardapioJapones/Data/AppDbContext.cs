using Microsoft.EntityFrameworkCore;
using CardapioJapones.Models;


namespace CardapioJapones.Data;

public class AppDbContext: DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {

    }

    public DbSet<Categoria> Categorias { get; set; }
    public DbSet<Prato> Pratos { get; set; }
}
