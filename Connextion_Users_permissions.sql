select DISTINCT OPB_CNX.OBJECT_NAME Connection_Name,OPB_CNX.USER_NAME Schema_Username,OPB_CNX.CONNECT_STRING,OPB_USERS.USER_NAME,OPB_USERS.USER_DESC Inforamtica_user,OPB_GROUPS.GROUP_NAME Assigned from OPB_CNX,OPB_GROUPS,OPB_USER_GROUP,OPB_MMD_CNX,OPB_USERS
where OPB_CNX.GROUP_ID=OPB_GROUPS.GROUP_ID 
AND OPB_USERS.USER_ID=OPB_USER_GROUP.ID
AND OPB_MMD_CNX.CNX_OBJECT_subTYPE=OPB_CNX.OBJECT_subTYPE