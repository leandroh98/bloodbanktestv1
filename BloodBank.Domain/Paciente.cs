namespace Bank.Domain
{
    public class Paciente
    {
        public int IdCliente { get; private set; }
        public string NombreCliente { get; private set; }
        public static Paciente Registrar(string _nombre)
        {
            return new Cliente(){
                NombreCliente = _nombre
            };
        }   
    }
}