using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EsemkaCinemaAPI.Models;

public partial class Movie
{
    public int Id { get; set; }

    [Required]
    public string Title { get; set; } = null!;

    [Required]
    [DataType(DataType.Date)]
    public DateOnly ReleaseDate { get; set; }

    [Required]
    [Range(1, 1000000)]
    public double TicketPrice { get; set; }

    [Required]
    [DataType(DataType.Text)]
    public string Genre { get; set; } = null!;
}
