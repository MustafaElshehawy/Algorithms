main(){
  List<int>data1=[8,6,2,5,4];
  Marge m1=Marge();
  print(m1.margeSort(data1).toString());

}
//class marge sort
class Marge {

  List<int> margeSort(List<int>list) {
    if (list.length <= 1) {
      return list;
    }
    int? r = list.length ~/ 2;
    List<int> left = margeSort(list.sublist(0, r));
    List<int> right = margeSort(list.sublist(r,));
    return merge(left, right);
  }

  List<int> merge(left, right) {
    List<int> sortList = [];
    int? i = 0;
    int? j = 0;
    //search for the smallest in left and right and insert it into sortedlist
    while (i! < left.length && j! < right.length) {
      if (left[i] <= right[j]) {
        sortList.add(left[i]);
        i++;
      }
      else {
        sortList.add(right[j]);
        j++;
      }
    }

    //Insert remaining  left into listedSorted
    while (i! < left.length) {
      sortList.add(left[i]);
      i++;
    }

    //Insert remaining right into listedSorted
    while (j! < right.length) {
      sortList.add(right[j]);
      j++;
    }

    return (sortList);
  }
}