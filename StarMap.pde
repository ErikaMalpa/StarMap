//Erika Secillano
//C15339871

void setup()
{
  size(800,800);
  //LoadData
  loadData();
}

//Array Lists
ArrayList<Star> stars = new ArrayList<Star>();
 
void loadData()
{
//TableRow
Table StTable = loadTable("File.csv");

StTable.addColumn("Column",loadTable.FLOAT);
StTable.addColumn("Name",loadTable.STRING);
StTable.addColumn("Description",loadTable.STRING);

TableRow row = table.addRow();
row.setFloat("Column", 2);
row.setString("Name", "Hab?");
row.setString("Descriprion");
}

//the size of the square
int size = 10;
int x = 0;
int y = 0;
int row = 0;

void draw()
{
  //Drawing the purple grid lines
  while (y < height - 50) //-50 for the pixels
  {
    noStroke();
    fill(0);
    rect(x, y, size, size);
    
    x += size * 2;
    
    if (x > width - 50) //-50 for the pixels
}