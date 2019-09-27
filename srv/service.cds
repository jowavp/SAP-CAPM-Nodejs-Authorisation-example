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
    roles: association to Roles;
    
    is_admin: Boolean;
    is_user: Boolean;
    is_dummy: Boolean;
    has_admin_user: Boolean;
    has_admin_dummy: Boolean;
    has_user_dummy: Boolean;
  }
  
  entity Roles {
  	key roleName: String;
  	assigned: Boolean;
  }
    
}