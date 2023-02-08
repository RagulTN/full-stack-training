import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filter'
})
export class FilterPipe implements PipeTransform {

  transform(value:any, filteredString: string){
    if(value.length === 0){
      return value;
    }
    const authors = [];
    for(const quotes of value){
      if(quotes['author'] === filteredString){
        authors.push(quotes);
      }
    }
    return authors;
  }
}
