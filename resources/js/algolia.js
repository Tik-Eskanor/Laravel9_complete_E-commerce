import algoliasearch from 'algoliasearch/lite';
import instantsearch from 'instantsearch.js';
import { searchBox, hits, pagination, stats, refinementList,configure } from 'instantsearch.js/es/widgets';

const searchClient = algoliasearch('BFUTU6DJXM', 'ca8b6edd165a0726eae8760f44c99233');

const search = instantsearch({
  indexName: 'products',
  searchClient,
  urlSync:true
});

search.addWidgets([
  searchBox({
    container: "#searchbox"
  }),

  hits({
    container: "#hits",
    templates:
    {
       empty:'No results',
       item: function(item)
       {
         return  `
            <a href="${window.location.origin}/shop/${item.id}">
             <div class="result-title">
               ${item._highlightResult.name.value}
             </div>
             <div class="result-details">
              ${item._highlightResult.details.value}
             </div>
             <div class="result-price">
             $${item.price}
             </div>
             <img src="${window.location.origin}/storage/${item.image}" clas="algolia-img-result">
            </a>
         `;
       }
      //  item:'<em>Hit {{objectID}} </em>: {{{_highlightResult.name.value}}}'
    }
  }),

    refinementList({
    container: "#refinement-list",
    attribute:'categories'
  }),

  pagination({
    container: "#pagination",
    scrollTo:false
  }),

  stats({
    container: "#stats-container",
  }),

  configure({
          hitsPerPage:4
        })
]);

// // Before `search.start()`
// search.addWidgets([
//     instantsearch.widgets.clearRefinements({
//       container: '#clear-refinements',
//     }),
  
//     instantsearch.widgets.refinementList({
//       container: '#brand-list',
//       attribute: 'brand',
//     }),
  
//     instantsearch.widgets.configure({
//       hitsPerPage: 8
//     }),
//   ]);
  

search.start();
