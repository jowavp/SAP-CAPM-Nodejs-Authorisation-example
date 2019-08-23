@impl:'../service.js'
@cds.query.limit: 100
service CapmAuthService { //@(requires:'user'){
  
  // @cds.persistence.skip
  entity User {
    key username   : String;
  }
    
}

service CapmAuthUserService @(requires:'user'){
  
  // @cds.persistence.skip
  entity User {
    key username   : String;
  }
    
}