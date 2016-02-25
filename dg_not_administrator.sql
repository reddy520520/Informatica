SELECT 
 DEP_GROUP_NAME,  
   CREATED_BY,   
   CREATION_TIME, LAST_SAVED
FROM INFADMIN9.REP_DEPLOY_GROUP
where  CREATED_BY <> 'Administrator'
ORDER BY 2 ASC NULLS LAST