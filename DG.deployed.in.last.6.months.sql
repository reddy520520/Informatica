/* Formatted on 8/21/2013 1:08:17 PM (QP5 v5.215.12089.38647) */
SELECT DISTINCT
       REP_DEPLOY_GROUP_DETAIL.dep_group_name, REP_DEPLOY_GROUP.CREATION_TIME
  FROM REP_DEPLOY_GROUP_DETAIL, REP_DEPLOY_GROUP
 WHERE     REP_DEPLOY_GROUP_DETAIL.dep_group_name =
              REP_DEPLOY_GROUP.dep_group_name
       AND REP_DEPLOY_GROUP_DETAIL.TARGET_REP_NAME <> 'RS_'
       AND TO_DATE (REP_DEPLOY_GROUP_DETAIL.DEPLOY_TIME,
                    'MM/DD/YYYY HH24:MI:SS') < ADD_MONTHS (SYSDATE, -3)