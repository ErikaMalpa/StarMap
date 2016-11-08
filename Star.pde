class Star
{
  float Column;
  String Name;
  String Description;
  
  Star()
  {
    Name = "";
    Description="";
  }
  
  Star(Float Column, String Name, String Description)
  {
   this.Column = Column;
   this.Name = Name;
   this.Description = Description;
  }
  
  //Converts into string so it can be printed
  String toString()
  {
   return Column + "\t" + Name + "\t" + Description; 
  }
}