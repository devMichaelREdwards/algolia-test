import React, { useState } from "react";
import algoliasearch from "algoliasearch/lite";
import {
  Configure,
  Highlight,
  Hits,
  InstantSearch,
  Pagination,
  SearchBox,
} from "react-instantsearch-hooks-web";
import "./App.scss";
import "instantsearch.css/themes/satellite.css";

const searchClient = algoliasearch(
  "CAZAQ1YGVM",
  "1210b4146e3ef1c2719056e673cf138b"
);

interface IHit {
  hit: any;
}

function Hit({ hit }: IHit) {
  return (
    <div>
      <div className="hit-name">
        <p>
          <Highlight attribute="product_id" hit={hit} />{" "}
        </p>
      </div>
    </div>
  );
}

const Search = () => {
  return (
    <InstantSearch searchClient={searchClient} indexName="dev_mre">
      <Configure hitsPerPage={21} />
      <SearchBox />
      <div className="results">
        <Hits hitComponent={Hit} />
      </div>
      <Pagination />
    </InstantSearch>
  );
};

function App() {
  return <Search />;
}

export default App;
