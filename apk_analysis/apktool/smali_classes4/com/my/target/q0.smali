.class public final Lcom/my/target/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;Lks9;)Lcom/my/target/q;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "iconLink"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0xbbe

    const/16 v6, 0xbbf

    if-nez v4, :cond_0

    invoke-static {v3}, Ly14;->y(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v8, v2

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_1
    const-string v4, "clickLink"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v9

    invoke-virtual {v9, v5}, Lks9;->b(I)V

    goto :goto_0

    :cond_2
    invoke-static {v8}, Ly14;->y(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lks9;->c(ILjava/lang/String;)V

    :cond_3
    :goto_0
    const-string v9, "options"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "complain"

    const-string v12, "hide"

    if-nez v10, :cond_4

    :goto_1
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v11

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    const-string v14, "closeUrl"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_6

    :goto_2
    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v15}, Ly14;->y(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v1, v14}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v14

    invoke-virtual {v14, v6, v15}, Lks9;->c(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v1, v9}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v14

    const/16 v16, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    move/from16 v5, v17

    :goto_4
    if-ge v5, v13, :cond_15

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v18, v10

    invoke-virtual {v14, v5}, Lks9;->d(I)Lks9;

    move-result-object v10

    if-nez v6, :cond_8

    move/from16 v19, v5

    const/16 v5, 0xbbf

    invoke-virtual {v10, v5}, Lks9;->f(I)V

    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v11

    move/from16 v20, v13

    move-object/from16 v21, v14

    :goto_5
    move-object/from16 v2, v16

    goto/16 :goto_a

    :cond_8
    move/from16 v19, v5

    const-string v5, "type"

    move/from16 v20, v13

    invoke-virtual {v10, v5}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v13

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v21, v14

    const/16 v14, 0xbbe

    invoke-virtual {v13, v14}, Lks9;->b(I)V

    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v11

    goto :goto_5

    :cond_9
    move-object/from16 v21, v14

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "default"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move/from16 v22, v14

    const-string v14, "alias"

    move-object/from16 v30, v2

    const-string v2, "shouldCloseAd"

    move-object/from16 v31, v8

    const-string v8, "name"

    if-nez v22, :cond_a

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_a
    move-object/from16 v32, v11

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_b
    move-object/from16 v32, v11

    const-string v11, "copy"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v10, v8}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v2

    const/16 v14, 0xbbe

    invoke-virtual {v2, v14}, Lks9;->b(I)V

    goto :goto_5

    :cond_c
    const/4 v5, 0x1

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v6, v15, v2, v10}, Lcom/my/target/q0;->b(Lorg/json/JSONObject;Ljava/lang/String;ZLks9;)Ljava/lang/String;

    move-result-object v36

    const-string v5, "copyText"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    move-object/from16 v38, v16

    goto :goto_6

    :cond_d
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v38, v8

    :goto_6
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v10, v5}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v2

    const/16 v14, 0xbbe

    invoke-virtual {v2, v14}, Lks9;->b(I)V

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v39, v16

    goto :goto_7

    :cond_f
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v39, v5

    :goto_7
    new-instance v33, Lcom/my/target/q$a;

    const-string v35, "copy"

    const/16 v37, 0x0

    move/from16 v40, v2

    invoke-direct/range {v33 .. v40}, Lcom/my/target/q$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v2, v33

    goto :goto_a

    :cond_10
    const/16 v2, 0xbbf

    invoke-virtual {v13, v2, v5}, Lks9;->c(ILjava/lang/String;)V

    goto/16 :goto_5

    :goto_8
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v10, v8}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v2

    const/16 v14, 0xbbe

    invoke-virtual {v2, v14}, Lks9;->b(I)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v6, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v15, v2, v10}, Lcom/my/target/q0;->b(Lorg/json/JSONObject;Ljava/lang/String;ZLks9;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {v8}, Ly14;->y(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v10, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v10

    const/16 v11, 0xbbf

    invoke-virtual {v10, v11, v8}, Lks9;->c(ILjava/lang/String;)V

    if-nez v25, :cond_12

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    move-object/from16 v28, v16

    goto :goto_9

    :cond_13
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v6

    :goto_9
    new-instance v22, Lcom/my/target/q$a;

    const/16 v27, 0x0

    move/from16 v29, v2

    move-object/from16 v24, v5

    move-object/from16 v26, v8

    invoke-direct/range {v22 .. v29}, Lcom/my/target/q$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v2, v22

    :goto_a
    if-nez v2, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v10, v18

    move/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v2, v30

    move-object/from16 v8, v31

    move-object/from16 v11, v32

    const/16 v6, 0xbbf

    goto/16 :goto_4

    :cond_15
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v7, v16

    :cond_16
    :goto_c
    if-nez v7, :cond_19

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static/range {v31 .. v31}, Ly14;->y(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1, v9}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v0

    const/16 v2, 0xbbf

    invoke-virtual {v0, v2}, Lks9;->b(I)V

    :cond_18
    return-object v16

    :cond_19
    :try_start_0
    const-string v1, "aboutCompany"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-object/from16 v1, v16

    :goto_d
    new-instance v2, Lh14;

    invoke-direct {v2, v3}, Lxha;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/my/target/q;

    move-object/from16 v4, v31

    invoke-direct {v3, v2, v4}, Lcom/my/target/q;-><init>(Lh14;Ljava/lang/String;)V

    iput-object v7, v3, Lcom/my/target/q;->c:Ljava/util/List;

    iget-object v2, v3, Lcom/my/target/q;->d:Ljava/util/List;

    if-eqz v2, :cond_1a

    invoke-static {v7}, Lcom/my/target/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/my/target/q;->d:Ljava/util/List;

    :cond_1a
    iput-object v1, v3, Lcom/my/target/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fromActionText"

    const-string v4, "fromOptionsTitle"

    const-string v5, "fromTitle"

    const-string v6, ""

    if-nez v1, :cond_1b

    :goto_e
    move-object/from16 v7, v16

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_e

    :cond_1c
    new-instance v7, Li1a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v7, Li1a;->c:Ljava/lang/Object;

    iput-object v6, v7, Li1a;->d:Ljava/lang/Object;

    iput-object v6, v7, Li1a;->e:Ljava/lang/Object;

    iput-object v6, v7, Li1a;->b:Ljava/lang/Object;

    move-object/from16 v8, v30

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "fromIconLink"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Li1a;->b:Ljava/lang/Object;

    const-string v8, "fromDescription"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Li1a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Li1a;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Li1a;->e:Ljava/lang/Object;

    :goto_f
    iput-object v7, v3, Lcom/my/target/q;->f:Li1a;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1d

    :goto_10
    move-object/from16 v7, v16

    goto :goto_11

    :cond_1d
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_10

    :cond_1e
    new-instance v7, Le2a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v7, Le2a;->a:Ljava/lang/String;

    iput-object v6, v7, Le2a;->b:Ljava/lang/String;

    iput-object v6, v7, Le2a;->c:Ljava/lang/String;

    iput-object v6, v7, Le2a;->d:Ljava/lang/String;

    iput-object v6, v7, Le2a;->e:Ljava/lang/String;

    iput-object v6, v7, Le2a;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Le2a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Le2a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Le2a;->c:Ljava/lang/String;

    const-string v1, "resultIconLink"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "resultTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Le2a;->d:Ljava/lang/String;

    const-string v1, "resultDescription"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Le2a;->e:Ljava/lang/String;

    const-string v1, "resultActionText"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Le2a;->f:Ljava/lang/String;

    :goto_11
    iput-object v7, v3, Lcom/my/target/q;->g:Le2a;

    return-object v3

    :goto_12
    invoke-virtual {v1, v8}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v14, 0xbbe

    invoke-virtual {v0, v14}, Lks9;->b(I)V

    return-object v16

    :cond_1f
    const/16 v2, 0xbbf

    invoke-virtual {v0, v2, v3}, Lks9;->c(ILjava/lang/String;)V

    return-object v16
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;ZLks9;)Ljava/lang/String;
    .locals 4

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly14;->y(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v3, 0xbbf

    if-nez v2, :cond_0

    invoke-virtual {p3, v0}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lks9;->c(ILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string p2, "&reason="

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p3, p2}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    invoke-virtual {p0, v3}, Lks9;->b(I)V

    :cond_2
    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v1
.end method
