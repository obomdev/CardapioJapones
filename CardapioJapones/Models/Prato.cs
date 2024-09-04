using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CardapioJapones.Models;

public class Prato
{

    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [Required(ErrorMessage = "Informe o nome")]
    [StringLength(100, ErrorMessage = "O nome deve possuir no máximo 30 caracteres")]
    public string Nome { get; set; }

    [Required(ErrorMessage = "Informe a descricao")]
    [StringLength(100, ErrorMessage = "A descricao deve informar o prato em si")]
    public string descricao { get; set; }

    public int categoria_id { get; set; }

    public Categoria categoria { get; set; }
}
