@impl:'../service.js'
@cds.query.limit: 100
service CapmAuthService {
  
  // @cds.persistence.skip
  entity User {
    key username   : String;
  }
    
}

@impl:'../service.js'
service CapmAuthUserService @(requires:'user'){
  
  // @cds.persistence.skip
  entity User {
    key username   : String;
  }
    
}