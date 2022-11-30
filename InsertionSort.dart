//class insertion sort
class InsertionSort{
  void insertionSort(List<int>list){
    for(int i=0;i < list.length;i++)
    {
      int k=list[i];
      int j=i-1;
      while(j>=0 && k<list[j]){
        list[j + 1]=list[j];
        --j;
      }
      list[j+1]=k;
    }
  }
}
main() {
  // List<int>data=[8,6,2,5,4];
  // InsertionSort s1=InsertionSort();
  // s1.insertionSort(data);
  // print(data.toString());
}