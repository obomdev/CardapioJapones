using CardapioJapones.Models;

namespace CardapioJapones.ViewModels;

public class DetailsVM
{
    public Prato Anterior { get; set; }

    public Prato Atual { get; set; }    

    public Prato Proximo { get; set; }
}
