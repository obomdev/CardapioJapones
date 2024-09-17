using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using CardapioJapones.Models;
using CardapioJapones.Data;
using CardapioJapones.ViewModels;
using Microsoft.EntityFrameworkCore;

namespace CardapioJapones.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly AppDbContext _context;
    public HomeController(ILogger<HomeController> logger, AppDbContext context)
    {
        _logger = logger;
        _context = context;
    }

    public IActionResult Index()
    {
        HomeVM home = new()
        {
            Categorias = _context.Categorias.ToList(),
            Pratos = _context.Pratos
                .Include(p => p.Categoria)
                .ToList()

        };
        return View(home);
        
    
    }

    [HttpGet]
     public IActionResult Details(int id)
    {
        Prato prato = _context.Pratos
        .Where(p => p.Id == id)
        .Include(p => p.Categoria)
        .SingleOrDefault();
        DetailsVM details = new()
        {
            Atual = prato,
            Anterior = _context.Pratos
                .OrderByDescending(p => p.Id)
                .FirstOrDefault(p => p.Id < id),
            Proximo = _context.Pratos
                .OrderBy(p => p.Id)
                .FirstOrDefault(p => p.Id > id)
        };
        return View(details);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
