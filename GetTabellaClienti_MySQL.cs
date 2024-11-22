public DataTable GetTabellaClienti()
{
    MySqlConnection conn = new MySqlConnection(stringaConn);
    MySqlCommand com = new MySqlCommand();
    MySqlDataAdapter adapter = new MySqlDataAdapter();
    DataTable tabella = new DataTable();

    com.Connection = conn;
    com.CommandText = $"SELECT * FROM Clienti";
    adapter.SelectCommand = com;
    // Adattiamo il formato dei dati per la DataTabl
    adapter.Fill(tabella);
    return tabella;
}