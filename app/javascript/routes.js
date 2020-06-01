import React from "react";
import HomeScreen from "./screens/home";
import DiscoveryScreen from "./screens/discovery";
import AlbumScreen from "./screens/album";
import FavotitesScreen from "./screens/favorites";
import SearchScreen from "./screens/search";

import { Switch, Route } from 'react-router-dom'
 
const Routes = (props) => (
  <Switch>
    <Route exact path='/' component={HomeScreen}/>
    <Route exact path='/discovery' component={DiscoveryScreen}/>
    <Route exact path='/album/:id' component={AlbumScreen}/>
    <Route exact path='/favorites' component={FavotitesScreen}/>
    <Route exact path='/search' component={SearchScreen}/>
  </Switch>
);
 
export default Routes;