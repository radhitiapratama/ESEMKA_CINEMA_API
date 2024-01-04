using EsemkaCinemaAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EsemkaCinemaAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieController(EsemkaCinemaContext context) : ControllerBase
    {
        private readonly EsemkaCinemaContext _context = context;

        [HttpGet("/Movie")]
        public ActionResult<Movie> All([FromQuery] string? search, [FromQuery] int? minPrice, [FromQuery] int? maxPrice)
        {
            var query = _context.Movies.AsQueryable();

            if (search != null)
            {
                query = query.Where(f => f.Title.Contains(search));
            }

            if (minPrice != null)
            {
                query = query.Where(f => f.TicketPrice >= minPrice);
            }


            if (maxPrice != null)
            {
                query = query.Where(f => f.TicketPrice <= maxPrice);
            }

            return Ok(query.ToList());

        }

        [HttpGet("{id}")]
        public ActionResult<Movie> Detail(int? id)
        {
            if (id == null) return NotFound();
            var data = _context.Movies.Find(id);
            if (data == null) return BadRequest();

            return Ok(data);
        }

        [HttpPost("/Store")]
        public Movie Store([FromBody] Movie movie)
        {
            _context.Movies.Add(movie);
            _context.SaveChanges();
            return movie;
        }

        [HttpPut("{id}")]
        public ActionResult<Movie> Update(int id, [FromBody] Movie movie)
        {
            Movie? oldMovie = _context.Movies.Find(id);
            if (oldMovie == null) return NotFound();

            oldMovie.Title = movie.Title;
            oldMovie.ReleaseDate = movie.ReleaseDate;
            oldMovie.TicketPrice = movie.TicketPrice;
            oldMovie.Genre = movie.Genre;
            _context.SaveChanges();

            return oldMovie;
        }

        [HttpDelete("{id}")]
        public ActionResult<Movie> Delete(int id)
        {
            Movie? movie = _context.Movies.Find(id);
            if (movie == null) return NotFound();

            _context.Movies.Remove(movie);
            _context.SaveChanges();

            return movie;
        }
    }
}