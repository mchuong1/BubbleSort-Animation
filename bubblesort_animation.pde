float[] values;
int i = 0; int j = 0;
void setup()
{
 size(1000,800);
 values = new float[width];
 for(int i = 0; i < values.length; i++)
 {
   values[i] = random(height);
 }
}


void draw()
{
  background(0);
  for(int i = 0; i < values.length; i++)
  {
   stroke(200);
   line(i, height, i , height-values[i]);
   
  }
    if(i < values.length) {
    for(int j = 0; j < values.length-i-1; j++)
    {
      if(values[j] > values[j+1])
      {
        swap(values,j,j+1);
      }
    }
    i++;
    }
}
    
void bubblesort(float[] arr)
{
  for(int i = 0; i < arr.length; i++)
  {
    for(int j = 0; j < arr.length-i-1; j++)
    {
      if(arr[j] > arr[j+1])
      {
        swap(arr,j,j+1);
      }
    }
  }
}

void swap( float[] arr, int a, int b)
{
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}
