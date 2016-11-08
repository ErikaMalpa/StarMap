//Erika Secillano
//C15339871

void setup()
{
  size(800,800);
  //LoadData
  loadData();
  printStars();
}

//Array Lists
ArrayList<Star> stars = new ArrayList<Star>();
 
void loadData()
{
//TableRow
Table StTable = loadTable("File.csv");

Star.clear();

for (TableRow r : t.rows())
{
  Star s = new Star(
  r.getFloat("Column")
  , r.getString("Name")
  , r.getString("Description")
  );

/*
StTable.addColumn("Column",loadTable.FLOAT);
StTable.addColumn("Name",loadTable.STRING);
StTable.addColumn("Description",loadTable.STRING);

TableRow row = table.addRow();
row.setFloat("Column", 2);
row.setString("Name", "Hab?");
row.setString("Descriprion");
*/

//to go to print star
printStars();
}

//To print stars
void printStars()
{
  
  
  String s = PrintStars("File.csv");
  println(s);
}

//the size of the square
int size = 30;
int x = 0;
int y = 0;
int row = 0;

void draw()
{
  //to plot the stars
  //yellow cross
  fill(0);
  stroke(0,50,0);
  //red circle
  stroke(255,0,0);
  fill(0);
  fill(5,5,5);
  
  //Drawing the purple grid lines
  while (y < height - 50) //-50 for the pixels
  {
    stroke(255,0,255);//for the colour purple
    fill(255);
    rect(x, y, size, size);
    
    x += size * 2;
    
    if (x > width - 50) //-50 for the pixels
    {

      y+=size;
      
      if(row%2 == 0)
      {
        x = size;
      }
      else
      {
        x = 0;
      }
       row++;
    }
  } 
  
  x = size;
  y = 0;
  row = 0;
  
  while (y < height)
  {
    stroke(255,0,255);//for the colour purple
    fill(255);
    rect(x, y, size, size);
    
    x+=size*2;
    
    if(x > width)
    {

      y+=size;
      
      if(row%2 == 0)
      {
        x = 0;
      }
      else
      {
        x = size;
      }
       row++;
    }
  }
  
}