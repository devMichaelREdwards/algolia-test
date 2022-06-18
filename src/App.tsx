import React, { useState } from "react";
import algoliasearch from "algoliasearch/lite";
import {
  Configure,
  Highlight,
  Hits,
  InstantSearch,
  Pagination,
  RefinementList,
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
    console.log(hit);
  return (
    <div className='hit-name'>
        <img src={hit.img} />
        <span className="center-text">
            <h3>{hit.model}</h3>
            <br />
            Caliber: {hit.caliber}
            <br />
            Barrel Length: {hit.barrel_length} {hit.barrel_length_unit}
            <br />
            Type: {hit.type}
            <br />
            What makes it badass: {hit.badass_description}
        </span>
    </div>
  );
}

interface IAttributeName {
    attribute: string;
}

const CheckboxList = ({ attribute }: IAttributeName) => (
    <div className="checkbox-list">
        <div className="header">{attribute}</div>
        <RefinementList attribute={attribute} />
    </div>
);

const Search = () => {
  return (
      <InstantSearch searchClient={searchClient} indexName='dev_mre'>
          <Configure hitsPerPage={21} />
          <SearchBox />
          <div className='filler'></div>
          <div className='filters'>
              <CheckboxList attribute='caliber' />
              <CheckboxList attribute='barrel_length' />
              <CheckboxList attribute='type' />
          </div>
          <div className='results'>
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
