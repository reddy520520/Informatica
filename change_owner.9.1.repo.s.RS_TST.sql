 SELECT   DISTINCT  'pmrep  ChangeOwner -o deploymentgroup -n '|| REP_DEPLOY_GROUP_DETAIL.dep_group_name || ' -u Administrator [-s native ]' AS pmrep             
    FROM   REP_DEPLOY_GROUP_DETAIL, REP_DEPLOY_GROUP
   WHERE   target_rep_name = 'RS_TST'
           AND REP_DEPLOY_GROUP_DETAIL.dep_group_name =REP_DEPLOY_GROUP.dep_group_name
           And REP_DEPLOY_GROUP.OWNER_ID <> 2
           AND TO_DATE (REP_DEPLOY_GROUP.CREATION_TIME,'MM/DD/YYYY HH24:MI:SS') < (SYSDATE )
           AND TO_DATE (REP_DEPLOY_GROUP.CREATION_TIME,'MM/DD/YYYY HH24:MI:SS') > (SYSDATE -90)
                        
                   
                          
                         

