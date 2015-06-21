import crosstab from 'crosstab';

import React from 'react';
import Router from 'react-router';

import Deactivated from './components/Deactivated.react.js';
import Login from './components/Login.react.js';
import Main from './components/Main.react';
import JoinGroup from './components/JoinGroup.react';

import LoginStore from './stores/LoginStore';
import LoginActionCreators from './actions/LoginActionCreators';

const DefaultRoute = Router.DefaultRoute;
const Route = Router.Route;
const RouteHandler = Router.RouteHandler;

const ActorInitEvent = 'concurrentActorInit';

if (crosstab.supported) {
  crosstab.on(ActorInitEvent, (msg) => {
    if (msg.origin !== crosstab.id && window.location.pathname !== '/deactivated') {
      window.location.assign('/deactivated');
    }
  });
}

const initReact = () => {
  if (window.location.pathname !== '/deactivated') {
    if (crosstab.supported) {
      crosstab.broadcast(ActorInitEvent, {});
    }

    window.messenger = new window.actor.ActorApp();
  }

  const App = React.createClass({
    render() {
      return <RouteHandler/>;
    }
  });

  const routes = (
    <Route handler={App} name="app" path="/">
      <Route handler={Main} name="main" path="/"/>
      <Route handler={JoinGroup} name="join" path="/join/:token"/>
      <Route handler={Login} name="login" path="/auth"/>
      <Route handler={Deactivated} name="deactivated" path="/deactivated"/>
      <DefaultRoute handler={Main}/>
    </Route>
  );

  const router = Router.run(routes, Router.HistoryLocation, function (Handler) {
    React.render(<Handler/>, document.getElementById('actor-web-app'));
  });

  if (LoginStore.isLoggedIn()) {
    LoginActionCreators.setLoggedIn(router, {redirect: false});
  }
};

window.jsAppLoaded = () => {
  setTimeout(initReact, 0);
};