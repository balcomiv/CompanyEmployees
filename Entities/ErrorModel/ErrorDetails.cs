using System.Text.Json;
using System.Text.Json.Serialization;

namespace Entities.ErrorModel
{
    public class ErrorDetails
    {
        public int StatusCode { get; set; }

        public string Message { get; set; }

        //  This is the old NewtonSoft method
        // public override string ToString() => JsonConvert.SerializeObject(this);

        public override string ToString() => JsonSerializer.Serialize(this);

    }

}