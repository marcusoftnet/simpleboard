<workitem-list>
  <ul>
    <li each={wi in this.opts.workitems}>
      <a href="#">
        <p>{wi.description}</p>
      </a>
    </li>
  </ul>

  <style type="text/css">
    ul {
      overflow: hidden;
      padding: 3em;
      list-style: none;
    }
    
    ul,
    li {
      list-style: none;
    }
    
    ul li a {
      text-decoration: none;
      color: #000;
      background: #ffc;
      display: block;
      height: 10em;
      width: 15em;
      padding: 1em;
      -moz-box-shadow: 5px 5px 7px rgba(33, 33, 33, 1);
      -webkit-box-shadow: 5px 5px 7px rgba(33, 33, 33, .7);
      box-shadow: 5px 5px 7px rgba(33, 33, 33, .7);
      -moz-transition: -moz-transform .15s linear;
      -o-transition: -o-transform .15s linear;
      -webkit-transition: -webkit-transform .15s linear;
    }
    
    ul li {
      margin: 1em;
      float: left;
    }
    
    ul li p {
      font-family: "Reenie Beanie", arial, sans-serif;
      font-size: 150%;
    }
           
    ul li a:hover,
    ul li a:focus {
      box-shadow: 10px 10px 7px rgba(0, 0, 0, .7);
      -moz-box-shadow: 10px 10px 7px rgba(0, 0, 0, .7);
      -webkit-box-shadow: 10px 10px 7px rgba(0, 0, 0, .7);
      -webkit-transform: scale(1.25);
      -moz-transform: scale(1.25);
      -o-transform: scale(1.25);
      position: relative;
      z-index: 5;
    }
  </style>


</workitem-list>