using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EsemkaCinemaAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UploadFilesController : ControllerBase
    {
        [HttpPost("/upload")]
        public string UploadFile(IFormFile file)
        {
            var extension = "." + file.FileName.Split('.').Last();
            string fileName = DateTime.Now.Ticks.ToString() + extension;

            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "Upload\\Files");
            if (!Directory.Exists(filePath))
            {
                Directory.CreateDirectory(filePath);
            }

            var exactPath = Path.Combine(Directory.GetCurrentDirectory(), "Upload\\Files", fileName);
            var fileStream = new FileStream(exactPath, FileMode.Create);
            file.CopyTo(fileStream);


            return exactPath;
        }
    }
}
