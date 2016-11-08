//Erika Secillano
//C15339871

void setup()
{
  size(800,800);
  
  loadStar();
}

//Array Lists
ArrayList<Star> stars = new ArrayList<Star>();
  
Table StTable = loadTable("File.csv");

table.addColumn("Column",Table.FLOAT);
table.addColumn("Name",Table.STRING);
table.addColumn("Description",Table.STRING);

void draw()
{
  
}