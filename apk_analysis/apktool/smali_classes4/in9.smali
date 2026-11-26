.class public Lin9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqw9;

.field public final b:Llia;

.field public final c:Lz2a;


# direct methods
.method public constructor <init>(Lz2a;Llia;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lin9;->b:Llia;

    iput-object p1, p0, Lin9;->c:Lz2a;

    new-instance v0, Lqw9;

    invoke-direct {v0, p1, p2}, Lqw9;-><init>(Lz2a;Llia;)V

    iput-object v0, p0, Lin9;->a:Lqw9;

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lev9;)V
    .locals 3

    iget v0, p1, Lev9;->a:I

    const-string v1, "ctaButtonColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->a:I

    iget v0, p1, Lev9;->b:I

    const-string v1, "ctaButtonTouchColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->b:I

    iget v0, p1, Lev9;->c:I

    const-string v1, "ctaButtonTextColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->c:I

    iget v0, p1, Lev9;->d:I

    const-string v1, "backgroundColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->d:I

    iget v0, p1, Lev9;->e:I

    const-string v1, "textColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->e:I

    const-string v1, "titleTextColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->f:I

    iget v0, p1, Lev9;->i:I

    const-string v1, "domainTextColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->i:I

    iget v0, p1, Lev9;->h:I

    const-string v1, "progressBarColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->h:I

    iget v0, p1, Lev9;->g:I

    const-string v1, "barColor"

    invoke-static {p0, v1, v0}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lev9;->g:I

    iget v0, p1, Lev9;->j:F

    float-to-double v0, v0

    const-string v2, "barOverlayAlpha"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iput v0, p1, Lev9;->j:F

    :cond_0
    const-string v0, "storeIcon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lh14;

    invoke-direct {v0, p0}, Lxha;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lev9;->k:Lh14;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lj8a;Lyda;)Ljia;
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    const-string v5, "type"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<banner>"

    invoke-virtual {v0, v8}, Lyda;->a(Ljava/lang/String;)Lyda;

    move-result-object v8

    iget-object v9, v8, Lyda;->b:Ljava/lang/String;

    const-string v10, "[0]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lyda;

    iget-object v8, v8, Lyda;->a:Lz8a;

    invoke-direct {v10, v8, v9}, Lyda;-><init>(Lz8a;Ljava/lang/String;)V

    const-string v8, "bannerID"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/16 v15, 0xbbe

    const/16 v20, 0xbbf

    const-string v11, "id"

    if-eqz v9, :cond_0

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10, v8}, Lyda;->a(Ljava/lang/String;)Lyda;

    move-result-object v8

    iget-object v9, v8, Lyda;->a:Lz8a;

    invoke-virtual {v8, v6}, Lyda;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v21}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    move-object v9, v11

    move/from16 v8, v20

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v10, v11}, Lyda;->a(Ljava/lang/String;)Lyda;

    move-result-object v8

    iget-object v9, v8, Lyda;->a:Lz8a;

    invoke-virtual {v8, v6}, Lyda;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v21}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v17, v9

    move-object v9, v11

    move/from16 v8, v20

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v8}, Lyda;->a(Ljava/lang/String;)Lyda;

    move-result-object v8

    move-object v9, v11

    iget-object v11, v8, Lyda;->a:Lz8a;

    invoke-virtual {v8, v6}, Lyda;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    move/from16 v8, v20

    invoke-virtual/range {v11 .. v16}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_1
    const-string v10, "<no-banner-id>"

    move-object/from16 v17, v10

    :goto_2
    const-string v10, "impressionId"

    invoke-static {v2, v10}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v10, "padId"

    invoke-static {v2, v10}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v10, "patternId"

    invoke-static {v2, v10}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v10, "dspId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_3

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v12, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v21, v10

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    :goto_3
    invoke-static {v2}, Ly14;->q(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v22

    new-instance v16, Lzm9;

    invoke-direct/range {v16 .. v22}, Lzm9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    move-object/from16 v10, v16

    if-eqz v18, :cond_4

    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    iget-object v11, v1, Lin9;->c:Lz2a;

    iget-object v14, v11, Lz2a;->g:Lz8a;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lpp9;

    invoke-direct {v15, v14, v10}, Lpp9;-><init>(Lz8a;Lzm9;)V

    iget-object v0, v0, Lyda;->a:Lz8a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v10, "html"

    const-string v14, "banner"

    sparse-switch v0, :sswitch_data_0

    :goto_4
    move v0, v12

    goto :goto_5

    :sswitch_0
    const-string v0, "playableAds"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x4

    goto :goto_5

    :sswitch_1
    const-string v0, "fullscreen"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    goto :goto_5

    :sswitch_2
    const-string v0, "promo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    goto :goto_5

    :sswitch_3
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_4
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_5
    const-string v7, "styleSettings"

    const-string v13, "title"

    const-string v12, "url"

    const-string v8, "bitrate"

    move/from16 v22, v0

    const-string v0, "closeDelayActionText"

    const-string v3, "closeActionText"

    move-object/from16 v23, v15

    const-string v15, "previewHeight"

    move-object/from16 v24, v7

    const-string v7, "previewWidth"

    move-object/from16 v25, v13

    const-string v13, "previewLink"

    move-object/from16 v26, v6

    const-string v6, "automute"

    move-object/from16 v27, v12

    const-string v12, "adIconClickLink"

    move-object/from16 v28, v8

    const-string v8, "adIconLink"

    move-object/from16 v29, v0

    const-string v0, "closeOnClick"

    move-object/from16 v30, v3

    const-string v3, "mediafiles"

    move-object/from16 v31, v3

    const-string v3, "width"

    move-object/from16 v32, v3

    const-string v3, "height"

    move-object/from16 v33, v3

    const-string v3, "src"

    move-object/from16 v34, v3

    const-string v3, "items"

    move-object/from16 v35, v15

    const-string v15, "statistics"

    move-object/from16 v36, v15

    const-string v15, "allowCloseDelay"

    move-object/from16 v37, v7

    const-string v7, "duration"

    move-object/from16 v38, v7

    const-string v7, "video"

    move-object/from16 v39, v13

    iget-object v13, v1, Lin9;->b:Llia;

    packed-switch v22, :pswitch_data_0

    sget-object v0, Ll6a;->s:Ll6a;

    invoke-virtual {v4, v0}, Lj8a;->a(Ll6a;)V

    :cond_a
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_63

    :pswitch_0
    new-instance v1, Lj1a;

    sget-object v4, Lpp9;->d:Lpp9;

    invoke-direct {v1, v4}, Lj1a;-><init>(Lpp9;)V

    new-instance v4, Li2a;

    invoke-direct {v4, v11, v13}, Li2a;-><init>(Lz2a;Llia;)V

    invoke-virtual {v4, v2, v1}, Lin9;->c(Lorg/json/JSONObject;Ljia;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_b

    goto :goto_6

    :cond_b
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v2, 0x0

    const/16 v16, 0x1

    :goto_7
    if-ge v2, v13, :cond_2b

    move/from16 p0, v13

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v20, v2

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_1

    :goto_8
    const/16 p2, -0x1

    goto :goto_9

    :sswitch_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    const/16 p2, 0x2

    goto :goto_9

    :sswitch_6
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    const/16 p2, 0x1

    goto :goto_9

    :sswitch_7
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    const/16 p2, 0x0

    :goto_9
    iget-object v2, v4, Li2a;->d:Lqn9;

    packed-switch p2, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    move-object/from16 p2, v3

    new-instance v3, Ly8a;

    move-object/from16 v22, v4

    const/4 v4, 0x6

    move-object/from16 v40, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lu1;-><init>(IB)V

    iput-object v3, v1, Lj1a;->a0:Ly8a;

    iget-object v4, v3, Lu1;->b:Ljava/lang/Object;

    check-cast v4, Ln4a;

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v43, v6

    move-object/from16 v41, v9

    :goto_a
    move-object/from16 v46, v10

    move-object/from16 v42, v12

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v44, v37

    move-object/from16 v37, v39

    const/4 v2, 0x0

    move-object/from16 v39, v8

    move-object/from16 v34, v33

    move-object/from16 v8, v36

    move-object/from16 v33, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v35

    move-object/from16 v35, v0

    goto/16 :goto_13

    :cond_10
    move-object/from16 v41, v9

    const/4 v5, -0x1

    invoke-virtual {v13, v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_11

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    :goto_b
    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v43, v6

    goto :goto_a

    :cond_11
    iput v9, v3, Ly8a;->c:I

    const/4 v5, 0x0

    invoke-virtual {v13, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    new-instance v9, Lh14;

    invoke-direct {v9, v5}, Lxha;-><init>(Ljava/lang/String;)V

    iput-object v9, v3, Ly8a;->d:Lh14;

    :cond_12
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    goto :goto_b

    :cond_13
    move-object/from16 v42, v12

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v3, Ly8a;->e:Z

    move-object/from16 v9, v39

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v43, v6

    move-object/from16 v39, v8

    move-object/from16 v8, v37

    move-object/from16 v37, v9

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v44, v8

    move-object/from16 v8, v35

    move-object/from16 v35, v0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v6, v9, :cond_14

    if-eq v0, v9, :cond_14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-static {v6, v0, v12}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v0

    iput-object v0, v3, Ly8a;->f:Lh14;

    :cond_14
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-object/from16 v6, v29

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-object/from16 v9, v31

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-nez v23, :cond_16

    :cond_15
    move-object/from16 v29, v38

    move-object/from16 v38, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v31, v9

    move-object/from16 v46, v10

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v8, v36

    move-object/from16 v34, v33

    move-object/from16 v33, v0

    goto/16 :goto_12

    :cond_16
    move-object/from16 v31, v9

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_17

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v30, v6

    move-object/from16 v29, v8

    :goto_c
    move-object/from16 v46, v10

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v8, v36

    const/4 v2, 0x0

    move-object/from16 v34, v33

    move-object/from16 v33, v0

    goto/16 :goto_13

    :cond_17
    move-object/from16 v30, v6

    move-object/from16 v29, v8

    move-object/from16 v8, v32

    const/4 v9, -0x1

    invoke-virtual {v12, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_18

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v32, v8

    goto :goto_c

    :cond_18
    move-object/from16 v32, v8

    move-object/from16 v8, v33

    move-object/from16 v33, v0

    invoke-virtual {v12, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_19

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v46, v10

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    const/4 v2, 0x0

    move-object/from16 v34, v8

    move-object/from16 v8, v36

    goto/16 :goto_13

    :cond_19
    move-object/from16 v9, v34

    move-object/from16 v34, v8

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    move-object/from16 v2, v38

    move-object/from16 v38, v14

    move-object v14, v2

    move-object/from16 v45, v9

    move-object/from16 v46, v10

    :goto_d
    move-object/from16 v6, v28

    move-object/from16 v8, v36

    :goto_e
    const/4 v2, 0x0

    goto :goto_13

    :cond_1a
    move-object/from16 v45, v38

    move-object/from16 v38, v14

    move-object/from16 v14, v45

    move-object/from16 v45, v9

    move-object/from16 v46, v10

    const/4 v9, -0x1

    invoke-virtual {v5, v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_1b

    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    goto :goto_d

    :cond_1b
    iput v10, v3, Ly8a;->h:I

    new-instance v10, Lrn9;

    invoke-direct {v10, v8, v6, v0}, Lrn9;-><init>(Ljava/lang/String;II)V

    move-object/from16 v6, v28

    invoke-virtual {v12, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    iput-object v10, v3, Ly8a;->g:Lrn9;

    move-object/from16 v8, v36

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v0, 0x2

    iput v0, v2, Lqn9;->b:I

    iget v0, v1, Lao9;->z:F

    invoke-virtual {v2, v4, v13, v0}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    iget v0, v1, Lao9;->z:F

    invoke-virtual {v2, v4, v5, v0}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    :goto_f
    move-object/from16 v4, p3

    move-object/from16 v10, v25

    move-object/from16 v9, v27

    :goto_10
    move-object/from16 v2, v38

    const/4 v0, -0x1

    goto/16 :goto_19

    :cond_1d
    :goto_11
    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    goto :goto_e

    :goto_12
    invoke-static/range {p3 .. p3}, Li2a;->d(Lj8a;)V

    goto :goto_e

    :goto_13
    iput-object v2, v1, Lj1a;->a0:Ly8a;

    goto :goto_f

    :pswitch_2
    move-object/from16 p2, v38

    move-object/from16 v38, v14

    move-object/from16 v14, p2

    move-object/from16 p2, v3

    move-object/from16 v22, v4

    move-object/from16 v40, v5

    move-object/from16 v43, v6

    move-object/from16 v41, v9

    move-object/from16 v46, v10

    move-object/from16 v42, v12

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v44, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v8

    move-object/from16 v34, v33

    move-object/from16 v8, v36

    move-object/from16 v33, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v35

    move-object/from16 v35, v0

    sget-object v0, Lks9;->d:Lks9;

    move-object/from16 v4, p3

    invoke-static {v13, v4, v0}, Lqw9;->a(Lorg/json/JSONObject;Lj8a;Lks9;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v5, v1, Lj1a;->X:Lj4a;

    if-eqz v3, :cond_1e

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    :goto_14
    move-object/from16 v0, v26

    move-object/from16 v9, v27

    goto :goto_15

    :cond_1e
    iput-object v0, v5, Lj4a;->c:Ljava/lang/String;

    goto :goto_14

    :goto_15
    invoke-virtual {v13, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    :goto_16
    const/4 v3, -0x1

    goto :goto_17

    :cond_1f
    iput-object v3, v5, Lj4a;->d:Ljava/lang/String;

    goto :goto_16

    :goto_17
    invoke-virtual {v13, v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v3, :cond_20

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_20
    iput v10, v5, Lj4a;->e:I

    const/4 v3, 0x5

    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_18

    :cond_21
    const/4 v3, 0x1

    iput v3, v2, Lqn9;->b:I

    iget-object v3, v5, Lu1;->b:Ljava/lang/Object;

    check-cast v3, Ln4a;

    iget v5, v1, Lao9;->z:F

    invoke-virtual {v2, v3, v13, v5}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    move-object/from16 v3, v46

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v26, v0

    move-object/from16 v10, v25

    goto/16 :goto_10

    :cond_22
    :goto_18
    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 p2, v38

    move-object/from16 v38, v14

    move-object/from16 v14, p2

    move-object/from16 p2, v3

    move-object/from16 v22, v4

    move-object/from16 v40, v5

    move-object/from16 v43, v6

    move-object/from16 v41, v9

    move-object v3, v10

    move-object/from16 v42, v12

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v44, v37

    move-object/from16 v37, v39

    const/4 v5, -0x1

    move-object/from16 v4, p3

    move-object/from16 v39, v8

    move-object/from16 v34, v33

    move-object/from16 v8, v36

    move-object/from16 v33, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v35

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v15, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v5, :cond_23

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_23
    iget-object v5, v1, Lj1a;->Y:Lk6a;

    iput v10, v5, Lk6a;->c:I

    const-string v10, "iconLink"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_24
    const-string v12, "iconWidth"

    move-object/from16 v26, v0

    const/4 v0, -0x1

    invoke-virtual {v13, v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v46, v3

    const-string v3, "iconHeight"

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v12, v0, :cond_2a

    if-ne v3, v0, :cond_25

    goto/16 :goto_1b

    :cond_25
    invoke-static {v12, v3, v10}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v3

    iput-object v3, v5, Lk6a;->d:Lh14;

    move-object/from16 v10, v25

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_26
    iput-object v3, v5, Lk6a;->e:Ljava/lang/String;

    const-string v3, "ctaText"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_27

    iput-object v3, v5, Lk6a;->f:Ljava/lang/String;

    :cond_27
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_1a

    :cond_28
    const/4 v3, 0x1

    iput v3, v2, Lqn9;->b:I

    iget-object v3, v5, Lu1;->b:Ljava/lang/Object;

    check-cast v3, Ln4a;

    iget v5, v1, Lao9;->z:F

    invoke-virtual {v2, v3, v13, v5}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    move-object/from16 v2, v38

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    :goto_19
    add-int/lit8 v3, v20, 0x1

    move/from16 v13, p0

    move-object/from16 v28, v6

    move-object/from16 v36, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move-object/from16 v38, v14

    move-object/from16 v4, v22

    move-object/from16 v0, v35

    move-object/from16 v8, v39

    move-object/from16 v5, v40

    move-object/from16 v9, v41

    move-object/from16 v12, v42

    move-object/from16 v6, v43

    move-object/from16 v10, v46

    move-object v14, v2

    move v2, v3

    move-object/from16 v35, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v33

    move-object/from16 v33, v34

    move-object/from16 v39, v37

    move-object/from16 v37, v44

    move-object/from16 v34, v45

    move-object/from16 v3, p2

    goto/16 :goto_7

    :cond_29
    :goto_1a
    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_2a
    :goto_1b
    invoke-static {v4}, Li2a;->d(Lj8a;)V

    goto/16 :goto_6

    :cond_2b
    if-nez v16, :cond_2c

    goto/16 :goto_6

    :cond_2c
    move-object/from16 v2, p1

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v2, v1, Lj1a;->Z:Lev9;

    invoke-static {v0, v2}, Lin9;->b(Lorg/json/JSONObject;Lev9;)V

    :cond_2d
    return-object v1

    :pswitch_4
    move-object/from16 v43, v6

    move-object/from16 v41, v9

    move-object/from16 v42, v12

    move-object/from16 v10, v25

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    move-object/from16 v45, v34

    move-object/from16 v44, v37

    move-object/from16 v14, v38

    move-object/from16 v37, v39

    move-object/from16 v39, v8

    move-object/from16 v34, v33

    move-object/from16 v8, v36

    move-object/from16 v33, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v35

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    new-instance v5, Lxda;

    move-object/from16 v12, v23

    invoke-direct {v5, v12}, Lxda;-><init>(Lpp9;)V

    iget-object v12, v11, Lz2a;->g:Lz8a;

    new-instance v4, Lyda;

    invoke-direct {v4, v12}, Lyda;-><init>(Lz8a;)V

    invoke-virtual {v1, v2, v5}, Lin9;->c(Lorg/json/JSONObject;Ljia;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v12, v5, Lxda;->X:Lev9;

    invoke-static {v0, v12}, Lin9;->b(Lorg/json/JSONObject;Lev9;)V

    :cond_2e
    iget v0, v13, Llia;->n:I

    if-lez v0, :cond_2f

    iput v0, v5, Lxda;->f0:I

    goto :goto_1c

    :cond_2f
    iget v0, v5, Lxda;->f0:I

    const-string v12, "style"

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lxda;->f0:I

    :goto_1c
    invoke-virtual {v5}, Lxda;->k()Z

    move-result v0

    move-object/from16 v12, v35

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Lxda;->d0:Z

    iget-boolean v0, v5, Lxda;->e0:Z

    const-string v12, "videoRequired"

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Lxda;->e0:Z

    iget-boolean v0, v5, Lao9;->L:Z

    const-string v12, "isSmartBanner"

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Lao9;->L:Z

    const-string v0, "pattern"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cards"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v12, v5, Lxda;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    :try_start_1
    const-class v19, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v28, v6

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v4, :cond_35

    move/from16 v22, v4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v23, v0

    if-eqz v4, :cond_33

    new-instance v0, Lfo9;

    move/from16 v24, v6

    iget-object v6, v5, Lao9;->Q:Lpp9;

    invoke-direct {v0, v6}, Lao9;-><init>(Lpp9;)V

    sget-object v6, Lt2a;->s:Lt2a;

    iput-object v6, v0, Lao9;->r:Lt2a;

    iget-object v6, v5, Lao9;->B:Ljava/lang/String;

    iput-object v6, v0, Lao9;->B:Ljava/lang/String;

    iget-object v6, v5, Lao9;->d:Ljava/lang/String;

    iput-object v6, v0, Lao9;->d:Ljava/lang/String;

    iget-object v6, v5, Lao9;->m:Ljava/lang/String;

    iput-object v6, v0, Lao9;->m:Ljava/lang/String;

    iget-object v6, v5, Lao9;->C:Ljava/lang/String;

    iput-object v6, v0, Lao9;->C:Ljava/lang/String;

    iget-object v6, v5, Lao9;->D:Ljava/lang/String;

    iput-object v6, v0, Lao9;->D:Ljava/lang/String;

    iget-boolean v6, v5, Lao9;->t:Z

    iput-boolean v6, v0, Lao9;->t:Z

    iget-boolean v6, v5, Lao9;->s:Z

    iput-boolean v6, v0, Lao9;->s:Z

    iget-object v6, v5, Lao9;->E:Ljava/lang/String;

    iput-object v6, v0, Lao9;->E:Ljava/lang/String;

    iget-object v6, v5, Lao9;->r:Lt2a;

    iput-object v6, v0, Lao9;->r:Lt2a;

    iget-object v6, v5, Lao9;->h:Ljava/lang/Float;

    iput-object v6, v0, Lao9;->h:Ljava/lang/Float;

    iget-object v6, v5, Lao9;->i:Ljava/lang/Integer;

    iput-object v6, v0, Lao9;->i:Ljava/lang/Integer;

    iget-object v6, v5, Lao9;->l:Ljava/lang/String;

    iput-object v6, v0, Lao9;->l:Ljava/lang/String;

    iget-object v6, v5, Lao9;->j:Ljava/lang/String;

    iput-object v6, v0, Lao9;->j:Ljava/lang/String;

    iget-object v6, v5, Lao9;->k:Ljava/lang/String;

    iput-object v6, v0, Lao9;->k:Ljava/lang/String;

    iget-object v6, v5, Lao9;->M:Ljava/lang/String;

    iput-object v6, v0, Lao9;->M:Ljava/lang/String;

    iget-object v6, v5, Lao9;->K:Ljava/lang/String;

    iput-object v6, v0, Lao9;->K:Ljava/lang/String;

    iget-object v6, v5, Lao9;->J:Ljava/lang/String;

    iput-object v6, v0, Lao9;->J:Ljava/lang/String;

    iget-object v6, v5, Lao9;->r:Lt2a;

    iput-object v6, v0, Lao9;->r:Lt2a;

    sget-object v6, Lks9;->d:Lks9;

    move-object/from16 v38, v14

    iget-object v14, v1, Lin9;->a:Lqw9;

    invoke-virtual {v14, v4, v0, v6}, Lqw9;->b(Lorg/json/JSONObject;Lao9;Lks9;)V

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30

    const/4 v6, 0x1

    iput-boolean v6, v0, Lfo9;->R:Z

    goto :goto_1e

    :cond_30
    const/4 v6, 0x1

    :goto_1e
    iget-object v14, v0, Lao9;->F:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_31

    :goto_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_31
    iget-object v14, v0, Lao9;->p:Lh14;

    if-nez v14, :cond_32

    goto :goto_1f

    :cond_32
    iget-object v14, v0, Lao9;->B:Ljava/lang/String;

    const-string v6, "cardID"

    invoke-virtual {v4, v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lao9;->B:Ljava/lang/String;

    :goto_20
    if-eqz v0, :cond_34

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    move/from16 v24, v6

    move-object/from16 v38, v14

    :cond_34
    :goto_21
    add-int/lit8 v6, v24, 0x1

    move/from16 v4, v22

    move-object/from16 v0, v23

    move-object/from16 v14, v38

    goto/16 :goto_1d

    :cond_35
    :goto_22
    move-object/from16 v38, v14

    goto :goto_23

    :catchall_1
    move-object/from16 v19, v4

    move-object/from16 v28, v6

    move-object/from16 v38, v14

    const-string v0, "UiUtils: RecyclerView doesn\'t exist, add RecyclerView dependency to show cards"

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_36
    move-object/from16 v19, v4

    move-object/from16 v28, v6

    goto :goto_22

    :goto_23
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_86

    sget-object v0, Lpp9;->d:Lpp9;

    new-instance v6, Lkha;

    invoke-direct {v6, v0}, Lkha;-><init>(Lpp9;)V

    iget-object v0, v5, Lao9;->B:Ljava/lang/String;

    iput-object v0, v6, Lao9;->B:Ljava/lang/String;

    iget-boolean v0, v5, Lao9;->O:Z

    iput-boolean v0, v6, Lao9;->O:Z

    new-instance v0, Lp0a;

    invoke-direct {v0, v11, v13}, Lp0a;-><init>(Lz2a;Llia;)V

    sget-object v7, Lks9;->d:Lks9;

    iget-object v11, v0, Lp0a;->c:Ljava/lang/Object;

    check-cast v11, Lqw9;

    new-instance v12, Lks9;

    iget-object v14, v7, Lks9;->a:Lpp9;

    iget-object v1, v7, Lks9;->b:Ljava/lang/String;

    iget-boolean v2, v7, Lks9;->c:Z

    invoke-direct {v12, v14, v1, v2}, Lks9;-><init>(Lpp9;Ljava/lang/String;Z)V

    invoke-virtual {v11, v4, v6, v12}, Lqw9;->b(Lorg/json/JSONObject;Lao9;Lks9;)V

    iget-object v1, v6, Lao9;->A:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0, v4, v6}, Lp0a;->a(Lorg/json/JSONObject;Lkha;)V

    move-object/from16 v25, v5

    goto/16 :goto_4e

    :cond_37
    iget v1, v6, Lao9;->z:F

    const/4 v2, 0x0

    cmpg-float v12, v1, v2

    if-gtz v12, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wrong parsed getDuration()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xbbf

    invoke-virtual {v7, v8, v0}, Lks9;->c(ILjava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_52

    :cond_38
    const-string v1, "Close"

    move-object/from16 v12, v33

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lkha;->T:Ljava/lang/String;

    iget-object v1, v6, Lkha;->U:Ljava/lang/String;

    const-string v12, "replayActionText"

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lkha;->U:Ljava/lang/String;

    iget-object v1, v6, Lkha;->V:Ljava/lang/String;

    move-object/from16 v12, v30

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lkha;->V:Ljava/lang/String;

    iget-object v1, v13, Llia;->D:Ljava/lang/Boolean;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_24

    :cond_39
    iget-boolean v1, v6, Lkha;->X:Z

    move-object/from16 v12, v43

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_24
    iput-boolean v1, v6, Lkha;->X:Z

    iget-boolean v1, v6, Lkha;->b0:Z

    const-string v12, "showPlayerControls"

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lkha;->b0:Z

    iget-object v1, v13, Llia;->E:Ljava/lang/Boolean;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_25

    :cond_3a
    iget-boolean v1, v6, Lkha;->Y:Z

    const-string v12, "autoplay"

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_25
    iput-boolean v1, v6, Lkha;->Y:Z

    iget-boolean v1, v6, Lkha;->Z:Z

    const-string v12, "hasCtaButton"

    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lkha;->Z:Z

    iget v1, v6, Lkha;->g0:F

    move/from16 p4, v2

    move-object v14, v3

    float-to-double v2, v1

    const-string v1, "allowSkipDelay"

    invoke-virtual {v4, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v6, Lkha;->g0:F

    iget-boolean v1, v6, Lkha;->d0:Z

    const-string v2, "allowSkip"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lkha;->d0:Z

    invoke-virtual {v0, v4, v6}, Lp0a;->a(Lorg/json/JSONObject;Lkha;)V

    iget-object v0, v13, Llia;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_26

    :cond_3b
    iget-boolean v0, v6, Lkha;->c0:Z

    const-string v1, "allowClose"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_26
    iput-boolean v0, v6, Lkha;->c0:Z

    iget-object v0, v13, Llia;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_27

    :cond_3c
    iget-boolean v0, v6, Lkha;->e0:Z

    const-string v1, "hasPause"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_27
    iput-boolean v0, v6, Lkha;->e0:Z

    iget-object v0, v13, Llia;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_28

    :cond_3d
    iget-boolean v0, v6, Lkha;->a0:Z

    const-string v1, "allowReplay"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_28
    iput-boolean v0, v6, Lkha;->a0:Z

    iget v0, v13, Llia;->t:F

    cmpl-float v1, v0, p4

    if-ltz v1, :cond_3e

    goto :goto_29

    :cond_3e
    iget v0, v6, Lkha;->f0:F

    float-to-double v0, v0

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_29
    iput v0, v6, Lkha;->f0:F

    const-string v0, "shoppable"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v45

    if-eqz v1, :cond_42

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3f

    const-string v0, "CommonVideoParser: encoded shoppable source is empty or null"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_3f
    :try_start_2
    new-instance v12, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v3, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, "interactionTimeout"

    const/4 v12, 0x2

    invoke-virtual {v1, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    :goto_2a
    const/4 v15, 0x2

    goto :goto_2b

    :cond_40
    if-gez v15, :cond_41

    goto :goto_2a

    :cond_41
    :goto_2b
    int-to-float v3, v15

    iget v12, v6, Lao9;->z:F

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    new-instance v3, Ln1a;

    invoke-direct {v3}, Lao9;-><init>()V

    iput-object v0, v3, Lao9;->A:Ljava/lang/String;

    invoke-virtual {v11, v1, v3, v7}, Lqw9;->b(Lorg/json/JSONObject;Lao9;Lks9;)V

    goto :goto_2c

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CommonVideoParser: shoppable source parsing is ended with exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_42
    :goto_2c
    const-string v0, "shoppableAdsData"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "text"

    if-eqz v0, :cond_52

    sget-object v3, Lpp9;->d:Lpp9;

    new-instance v12, Ln4a;

    invoke-direct {v12, v3}, Ln4a;-><init>(Lpp9;)V

    new-instance v3, Lqn9;

    invoke-direct {v3, v13}, Lqn9;-><init>(Llia;)V

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v8, :cond_43

    invoke-virtual {v3, v12, v0, v13}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    :cond_43
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_44

    const-string v0, "ShoppableAdsDataParser: can\'t parse \u2013 ShoppableAdItems\'"

    const/4 v15, 0x0

    invoke-static {v15, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_44
    const/4 v15, 0x0

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-nez v13, :cond_45

    const-string v0, "ShoppableAdsDataParser: can\'t parse \u2013 shoppableAdItems size is 0"

    invoke-static {v15, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_45
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move/from16 v18, v8

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v13, :cond_50

    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_46

    const-string v0, "ShoppableAdsDataParser: can\'t parse \u2013 hasn\'t shoppableItemJson"

    move/from16 v22, v8

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v45, v2

    move-object/from16 v25, v5

    move/from16 v23, v13

    move-object/from16 v24, v14

    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_33

    :cond_46
    move/from16 v22, v8

    const-string v8, "deeplink_fallback_url"

    move/from16 v23, v13

    const-string v13, "deeplink"

    move-object/from16 v24, v14

    const-string v14, "price"

    move-object/from16 v25, v5

    const-string v5, "oldPrice"

    :try_start_3
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_47

    const-string v0, "ShoppableAdsDataParser: can\'t parse ShoppableAdsItem \u2013 hasn\'t url"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v45, v2

    :goto_2e
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_2f
    const/4 v8, 0x0

    goto/16 :goto_32

    :catchall_3
    move-exception v0

    move-object/from16 v45, v2

    :goto_30
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_31

    :cond_47
    move-object/from16 v45, v2

    move-object/from16 v2, v41

    :try_start_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_48

    const-string v0, "ShoppableAdsDataParser: can\'t parse ShoppableAdsItem \u2013 hasn\'t id"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v41, v2

    goto :goto_2e

    :catchall_4
    move-exception v0

    move-object/from16 v41, v2

    goto :goto_30

    :cond_48
    move-object/from16 v41, v2

    :try_start_5
    const-string v2, "picture"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v0, "ShoppableAdsDataParser: can\'t parse ShoppableAdsItem \u2013 hasn\'t picture"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :catchall_5
    move-exception v0

    goto :goto_30

    :cond_49
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v0, "ShoppableAdsDataParser: can\'t parse ShoppableAdsItem \u2013 hasn\'t text"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_4a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4b
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4c
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4d
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4e
    sget-object v2, Lpp9;->d:Lpp9;

    new-instance v5, Ln4a;

    invoke-direct {v5, v2}, Ln4a;-><init>(Lpp9;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/high16 v2, -0x40800000    # -1.0f

    :try_start_6
    invoke-virtual {v3, v5, v0, v2}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    new-instance v0, Lj6a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_2f

    :catchall_6
    move-exception v0

    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "ShoppableAdsDataParser: can\'t parse ShoppableAdsItem \u2013 "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v8, v5, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_32
    if-nez v0, :cond_4f

    const-string v0, "ShoppableAdsDataParser: can\'t parse shoppableAdsItem"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_4f
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_33
    add-int/lit8 v0, v22, 0x1

    move v8, v0

    move/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v45

    goto/16 :goto_2d

    :cond_50
    move-object/from16 v45, v2

    move-object/from16 v25, v5

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "ShoppableAdsDataParser: can\'t parse \u2013 no one valid shoppableAdItem"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_51
    if-eqz v18, :cond_53

    const-string v0, "shoppableAdsItemShow"

    invoke-virtual {v12, v0}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "show"

    invoke-virtual {v12, v0}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "ShoppableAdsDataParser: hasn\'t show stat\'"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_52
    :goto_34
    move-object/from16 v45, v2

    move-object/from16 v25, v5

    :cond_53
    :goto_35
    const-string v0, "companionAds"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_55

    :cond_54
    move-object/from16 v2, v37

    goto/16 :goto_3a

    :cond_55
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v2, :cond_54

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_56

    goto :goto_39

    :cond_56
    new-instance v8, Lg1a;

    invoke-direct {v8}, Lg1a;-><init>()V

    sget-object v12, Lks9;->d:Lks9;

    invoke-virtual {v11, v3, v8, v12}, Lqw9;->b(Lorg/json/JSONObject;Lao9;Lks9;)V

    iget v12, v8, Lao9;->x:I

    if-nez v12, :cond_57

    :goto_37
    const/4 v8, 0x0

    goto :goto_38

    :cond_57
    iget v12, v8, Lao9;->y:I

    if-nez v12, :cond_58

    goto :goto_37

    :cond_58
    const-string v12, "assetWidth"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v12, "assetHeight"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v12, "expandedWidth"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v12, "expandedHeight"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v12, "staticResource"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lg1a;->R:Ljava/lang/String;

    const-string v12, "iframeResource"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "htmlResource"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lg1a;->S:Ljava/lang/String;

    const-string v12, "apiFramework"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "adSlotID"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "required"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_59

    const-string v12, "all"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_59

    const-string v12, "any"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_59

    const-string v12, "none"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_59
    :goto_38
    if-eqz v8, :cond_5a

    iget-object v3, v6, Lkha;->R:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :goto_3a
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    move-object/from16 v8, v44

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v8, v29

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v0

    iput-object v0, v6, Lkha;->S:Lh14;

    :cond_5b
    const-string v0, "aboutCompany"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v0, "marker"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v0, "cta"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "additionalText"

    const v3, 0x7fffffff

    if-eqz v0, :cond_62

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const-string v0, "CommonVideoParser: CTA button hasn\'t button link"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_5c
    const/4 v8, 0x0

    const-string v9, "buttonText"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5d

    const-string v0, "CommonVideoParser: CTA button hasn\'t button link text"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_5d
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5e

    const-string v9, "CommonVideoParser: CTA button hasn\'t text"

    invoke-static {v8, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    const-string v9, "buttonColor"

    invoke-static {v0, v9, v3}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_5f

    const-string v9, "CommonVideoParser: CTA button hasn\'t button color"

    invoke-static {v8, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    const-string v9, "buttonTextColor"

    invoke-static {v0, v9, v3}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_60

    const-string v9, "CommonVideoParser: CTA button hasn\'t button text color"

    invoke-static {v8, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    const-string v8, "icon"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-static {v0}, Lp0a;->b(Lorg/json/JSONObject;)Lh14;

    :cond_61
    new-instance v0, Lsda;

    invoke-direct {v0, v5}, Lsda;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    :goto_3b
    iput-object v8, v6, Lkha;->W:Lsda;

    :cond_62
    const-string v0, "qrCta"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6f

    const-string v0, "timers"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_63

    :try_start_7
    const-string v0, "startValue"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3c

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "TimersParser: invalid startValue field:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v15, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    :try_start_8
    const-string v0, "startPvalue"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3d

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "TimersParser: invalid startPvalue field:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v15, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    :try_start_9
    const-string v0, "extraDuration"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3e

    :catch_2
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TimersParser: invalid extraDuration field:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    new-instance v0, Liw9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_3f

    :cond_63
    const/4 v0, 0x0

    :goto_3f
    if-nez v0, :cond_64

    goto/16 :goto_44

    :cond_64
    const-string v0, "qrImage"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-static {v0}, Ly14;->d(Lorg/json/JSONObject;)Lh14;

    move-result-object v0

    goto :goto_40

    :cond_65
    const/4 v0, 0x0

    :goto_40
    if-nez v0, :cond_66

    goto :goto_44

    :cond_66
    const-string v0, "qrIconImage"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "position"

    if-eqz v0, :cond_68

    invoke-static {v0}, Ly14;->d(Lorg/json/JSONObject;)Lh14;

    move-result-object v9

    if-nez v9, :cond_67

    goto :goto_41

    :cond_67
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-static {v0}, Ly14;->e(Lorg/json/JSONObject;)Lja6;

    move-result-object v0

    :cond_68
    :goto_41
    const-string v0, "additionalImage"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-static {v0}, Ly14;->d(Lorg/json/JSONObject;)Lh14;

    :cond_69
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6a

    goto :goto_42

    :cond_6a
    const/4 v0, 0x0

    :goto_42
    if-nez v0, :cond_6b

    goto :goto_44

    :cond_6b
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_43

    :cond_6c
    const/4 v0, 0x0

    :goto_43
    if-nez v0, :cond_6d

    goto :goto_44

    :cond_6d
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-static {v0}, Ly14;->e(Lorg/json/JSONObject;)Lja6;

    move-result-object v0

    :cond_6e
    const-string v0, "colorScheme"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6f
    :goto_44
    const-string v0, "postView"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string v2, "CommonVideoParser: PostView hasn\'t text"

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    const-string v2, "backgroundImage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-static {v2}, Lp0a;->b(Lorg/json/JSONObject;)Lh14;

    move-result-object v2

    goto :goto_45

    :cond_71
    const/4 v2, 0x0

    :goto_45
    if-nez v2, :cond_72

    const-string v5, "CommonVideoParser: PostView hasn\'t backgroundImage"

    const/4 v8, 0x0

    invoke-static {v8, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_72
    const/4 v8, 0x0

    :goto_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    if-nez v2, :cond_73

    const-string v0, "CommonVideoParser: PostView Text or Background Image should exist but both are empty"

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_73
    const-string v1, "pauseOnHide"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v1, "overlay"

    invoke-static {v0, v1, v3}, Ly14;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_74

    const-string v1, "CommonVideoParser: PostView hasn\'t overlay"

    invoke-static {v8, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    move-object/from16 v14, v38

    invoke-virtual {v0, v14, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    new-instance v0, Lk5a;

    :goto_47
    move-object/from16 v9, v31

    goto :goto_49

    :cond_75
    :goto_48
    const/4 v5, 0x0

    goto :goto_47

    :goto_49
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v7, v9}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_77

    :cond_76
    move-object/from16 v2, v25

    goto/16 :goto_51

    :cond_77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v8, v5

    :goto_4a
    if-ge v8, v3, :cond_7e

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v8}, Lks9;->d(I)Lks9;

    move-result-object v5

    if-eqz v4, :cond_7c

    move-object/from16 v9, v45

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v32

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v13, v34

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7b

    if-lez v12, :cond_7b

    if-lez v14, :cond_7b

    const-string v15, "loudnessMetadata"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_78

    move-object/from16 p4, v0

    const-string v0, "integratedLufs"

    move/from16 v16, v8

    move-object/from16 v34, v9

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v0, v8

    const-string v8, "truePeak"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    goto :goto_4b

    :cond_78
    move-object/from16 p4, v0

    move/from16 v16, v8

    move-object/from16 v34, v9

    :cond_79
    :goto_4b
    new-instance v0, Lrn9;

    invoke-direct {v0, v10, v12, v14}, Lrn9;-><init>(Ljava/lang/String;II)V

    move-object/from16 v8, v28

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v4, ".m3u8"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    sget-boolean v4, Lho9$a;->b:Z

    if-nez v4, :cond_7a

    const-string v0, "CommonVideoParser: HLS Video does not supported, add \'androidx.media3:media3-exoplayer-hls\' dependency to play HLS video "

    const/4 v15, 0x0

    invoke-static {v15, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbc1

    const-string v4, "HLS Video does not supported, add..."

    invoke-virtual {v5, v0, v4}, Lks9;->c(ILjava/lang/String;)V

    const/4 v0, 0x0

    :cond_7a
    const/16 v4, 0xbbf

    goto :goto_4c

    :cond_7b
    move-object/from16 p4, v0

    move/from16 v16, v8

    move-object/from16 v34, v9

    move-object/from16 v8, v28

    const-string v0, ", width = "

    const-string v4, ", height = "

    const-string v9, "bad mediafile object, src = "

    invoke-static {v12, v9, v10, v0, v4}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xbbf

    invoke-virtual {v5, v4, v0}, Lks9;->c(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_4c
    if-eqz v0, :cond_7d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_7c
    move-object/from16 p4, v0

    move/from16 v16, v8

    move-object/from16 v8, v28

    move-object/from16 v11, v32

    move-object/from16 v13, v34

    move-object/from16 v34, v45

    const/16 v4, 0xbbf

    invoke-virtual {v5, v4}, Lks9;->f(I)V

    :cond_7d
    :goto_4d
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v28, v8

    move-object/from16 v32, v11

    move-object/from16 v45, v34

    move v8, v0

    move-object/from16 v34, v13

    move-object/from16 v0, p4

    goto/16 :goto_4a

    :cond_7e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_82

    invoke-static {v2}, Lrn9;->a(Ljava/util/ArrayList;)Lrn9;

    move-result-object v0

    if-eqz v0, :cond_81

    iput-object v0, v6, Lkha;->h0:Lxha;

    :goto_4e
    iget-object v0, v6, Lao9;->a:Ln4a;

    iget-object v1, v0, Ln4a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Ln4a;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Ln4a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Ln4a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Ln4a;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, v0, Ln4a;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_80

    :cond_7f
    move-object/from16 v2, v25

    goto :goto_4f

    :cond_80
    move-object/from16 v2, v25

    iget-object v1, v2, Lao9;->a:Ln4a;

    iget v3, v6, Lao9;->z:F

    invoke-virtual {v0, v1, v3}, Ln4a;->g(Ln4a;F)V

    :goto_4f
    iput-object v6, v2, Lxda;->Z:Lkha;

    iget-boolean v0, v6, Lkha;->Y:Z

    if-eqz v0, :cond_83

    iget-boolean v0, v6, Lkha;->c0:Z

    iput-boolean v0, v2, Ljia;->V:Z

    iget v0, v6, Lkha;->f0:F

    iput v0, v2, Ljia;->S:F

    iget v0, v6, Lkha;->g0:F

    iput v0, v2, Ljia;->T:F

    goto :goto_52

    :cond_81
    move-object/from16 v2, v25

    const-string v0, "Unable to find best video data for q=360"

    const/16 v8, 0xbbf

    invoke-virtual {v7, v8, v0}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_50

    :cond_82
    move-object/from16 v2, v25

    :goto_50
    const/16 v0, 0xbc0

    const-string v1, "no video data parsed"

    invoke-virtual {v7, v0, v1}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_52

    :goto_51
    const-string v0, "CommonVideoParser: Mediafiles array is empty"

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unable to find mediaFiles in MediaBanner"

    const/16 v15, 0xbbe

    invoke-virtual {v1, v15, v0}, Lks9;->c(ILjava/lang/String;)V

    :cond_83
    :goto_52
    const-string v0, "endcard"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_85

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v5, v19

    invoke-virtual {v3, v0, v4, v6, v5}, Lin9;->a(Lorg/json/JSONObject;Ljava/lang/String;Lj8a;Lyda;)Ljia;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v3, v0, Lao9;->B:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, v2, Lao9;->B:Ljava/lang/String;

    iput-object v3, v0, Lao9;->B:Ljava/lang/String;

    :cond_84
    iput-object v0, v2, Lxda;->a0:Ljia;

    :cond_85
    :goto_53
    move-object/from16 v3, v39

    goto :goto_54

    :cond_86
    move-object v1, v2

    move-object v2, v5

    goto :goto_53

    :goto_54
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    new-instance v3, Lh14;

    invoke-direct {v3, v0}, Lxha;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lxda;->b0:Lh14;

    move-object/from16 v3, v42

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lxda;->c0:Ljava/lang/String;

    :cond_87
    return-object v2

    :pswitch_5
    move-object v3, v1

    move-object v1, v2

    move-object v6, v4

    move-object/from16 v12, v23

    move-object/from16 v4, p2

    new-instance v2, Lwv9;

    invoke-direct {v2, v12}, Ljia;-><init>(Lpp9;)V

    invoke-virtual {v3, v1, v2}, Lin9;->c(Lorg/json/JSONObject;Ljia;)V

    sget-object v0, Lks9;->d:Lks9;

    invoke-static {v1, v6, v0}, Lqw9;->a(Lorg/json/JSONObject;Lj8a;Lks9;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_88

    sget-object v0, Ll6a;->q:Ll6a;

    invoke-virtual {v6, v0}, Lj8a;->a(Ll6a;)V

    goto/16 :goto_6

    :cond_88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_55

    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8a

    const-string v5, "<script\\s+[^>]*\\bsrc\\s*=\\s*(\\\\?[\\\"\\\'])mraid\\.js\\1[^>]*>\\s*<\\/script>\\n*"

    const/4 v12, 0x2

    invoke-static {v5, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<script src=\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"></script>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    :cond_8a
    :goto_55
    const/4 v3, 0x0

    :goto_56
    if-eqz v3, :cond_8b

    const-string v0, "mraid"

    iput-object v0, v2, Lao9;->A:Ljava/lang/String;

    move-object v0, v3

    :cond_8b
    iget-object v3, v2, Lao9;->I:Laga;

    if-eqz v3, :cond_8d

    sget-object v3, Lcom/my/target/e3;->k:Landroid/os/Handler;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :goto_57
    const/4 v13, 0x0

    goto :goto_58

    :cond_8c
    :try_start_a
    const-string v3, ";(function(omidGlobal) {\n  \'use strict\';var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function p(a){var b=\'undefined\'!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}function q(a){if(!(a instanceof Array)){a=p(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}var ba=\'function\'==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b},ca;\nif(\'function\'==typeof Object.setPrototypeOf)ca=Object.setPrototypeOf;else{var da;a:{var ea={S:!0},fa={};try{fa.__proto__=ea;da=fa.S;break a}catch(a){}da=!1}ca=da?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+\' is not extensible\');return a}:null}var ha=ca;\nfunction r(a,b){a.prototype=ba(b.prototype);a.prototype.constructor=a;if(ha)ha(a,b);else for(var c in b)if(\'prototype\'!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.Ca=b.prototype}var t=\'undefined\'!=typeof window&&window===this?this:\'undefined\'!=typeof global&&null!=global?global:this;function u(a,b){return Object.prototype.hasOwnProperty.call(a,b)}\nvar ia=\'function\'==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)u(d,e)&&(a[e]=d[e])}return a},w=\'function\'==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){a!=Array.prototype&&a!=Object.prototype&&(a[b]=c.value)};\nfunction y(a,b){if(b){var c=t;a=a.split(\'.\');for(var d=0;d<a.length-1;d++){var e=a[d];e in c||(c[e]={});c=c[e]}a=a[a.length-1];d=c[a];b=b(d);b!=d&&null!=b&&w(c,a,{configurable:!0,writable:!0,value:b})}}y(\'Object.assign\',function(a){return a||ia});function ja(){ja=function(){};t.Symbol||(t.Symbol=ka)}function la(a,b){this.a=a;w(this,\'description\',{configurable:!0,writable:!0,value:b})}la.prototype.toString=function(){return this.a};\nvar ka=function(){function a(c){if(this instanceof a)throw new TypeError(\'Symbol is not a constructor\');return new la(\'jscomp_symbol_\'+(c||\'\')+\'_\'+b++,c)}var b=0;return a}();function ma(){ja();var a=t.Symbol.iterator;a||(a=t.Symbol.iterator=t.Symbol(\'Symbol.iterator\'));\'function\'!=typeof Array.prototype[a]&&w(Array.prototype,a,{configurable:!0,writable:!0,value:function(){return na(aa(this))}});ma=function(){}}function na(a){ma();a={next:a};a[t.Symbol.iterator]=function(){return this};return a}\ny(\'WeakMap\',function(a){function b(g){this.a=(l+=Math.random()+1).toString();if(g){g=p(g);for(var h;!(h=g.next()).done;)h=h.value,this.set(h[0],h[1])}}function c(){}function d(g){if(!u(g,f)){var h=new c;w(g,f,{value:h})}}function e(g){var h=Object[g];h&&(Object[g]=function(k){if(k instanceof c)return k;d(k);return h(k)})}if(function(){if(!a||!Object.seal)return!1;try{var g=Object.seal({}),h=Object.seal({}),k=new a([[g,2],[h,3]]);if(2!=k.get(g)||3!=k.get(h))return!1;k.delete(g);k.set(h,4);return!k.has(g)&&\n4==k.get(h)}catch(m){return!1}}())return a;var f=\'$jscomp_hidden_\'+Math.random();e(\'freeze\');e(\'preventExtensions\');e(\'seal\');var l=0;b.prototype.set=function(g,h){d(g);if(!u(g,f))throw Error(\'WeakMap key fail: \'+g);g[f][this.a]=h;return this};b.prototype.get=function(g){return u(g,f)?g[f][this.a]:void 0};b.prototype.has=function(g){return u(g,f)&&u(g[f],this.a)};b.prototype.delete=function(g){return u(g,f)&&u(g[f],this.a)?delete g[f][this.a]:!1};return b});\ny(\'Map\',function(a){function b(){var g={};return g.A=g.next=g.head=g}function c(g,h){var k=g.a;return na(function(){if(k){for(;k.head!=g.a;)k=k.A;for(;k.next!=k.head;)return k=k.next,{done:!1,value:h(k)};k=null}return{done:!0,value:void 0}})}function d(g,h){var k=h&&typeof h;\'object\'==k||\'function\'==k?f.has(h)?k=f.get(h):(k=\'\'+ ++l,f.set(h,k)):k=\'p_\'+h;var m=g.b[k];if(m&&u(g.b,k))for(g=0;g<m.length;g++){var v=m[g];if(h!==h&&v.key!==v.key||h===v.key)return{id:k,list:m,index:g,s:v}}return{id:k,list:m,\nindex:-1,s:void 0}}function e(g){this.b={};this.a=b();this.size=0;if(g){g=p(g);for(var h;!(h=g.next()).done;)h=h.value,this.set(h[0],h[1])}}if(function(){if(!a||\'function\'!=typeof a||!a.prototype.entries||\'function\'!=typeof Object.seal)return!1;try{var g=Object.seal({x:4}),h=new a(p([[g,\'s\']]));if(\'s\'!=h.get(g)||1!=h.size||h.get({x:4})||h.set({x:4},\'t\')!=h||2!=h.size)return!1;var k=h.entries(),m=k.next();if(m.done||m.value[0]!=g||\'s\'!=m.value[1])return!1;m=k.next();return m.done||4!=m.value[0].x||\n\'t\'!=m.value[1]||!k.next().done?!1:!0}catch(v){return!1}}())return a;ma();var f=new WeakMap;e.prototype.set=function(g,h){g=0===g?0:g;var k=d(this,g);k.list||(k.list=this.b[k.id]=[]);k.s?k.s.value=h:(k.s={next:this.a,A:this.a.A,head:this.a,key:g,value:h},k.list.push(k.s),this.a.A.next=k.s,this.a.A=k.s,this.size++);return this};e.prototype.delete=function(g){g=d(this,g);return g.s&&g.list?(g.list.splice(g.index,1),g.list.length||delete this.b[g.id],g.s.A.next=g.s.next,g.s.next.A=g.s.A,g.s.head=null,\nthis.size--,!0):!1};e.prototype.clear=function(){this.b={};this.a=this.a.A=b();this.size=0};e.prototype.has=function(g){return!!d(this,g).s};e.prototype.get=function(g){return(g=d(this,g).s)&&g.value};e.prototype.entries=function(){return c(this,function(g){return[g.key,g.value]})};e.prototype.keys=function(){return c(this,function(g){return g.key})};e.prototype.values=function(){return c(this,function(g){return g.value})};e.prototype.forEach=function(g,h){for(var k=this.entries(),m;!(m=k.next()).done;)m=\nm.value,g.call(h,m[1],m[0],this)};e.prototype[Symbol.iterator]=e.prototype.entries;var l=0;return e});y(\'Object.values\',function(a){return a?a:function(b){var c=[],d;for(d in b)u(b,d)&&c.push(b[d]);return c}});\ny(\'Set\',function(a){function b(c){this.a=new Map;if(c){c=p(c);for(var d;!(d=c.next()).done;)this.add(d.value)}this.size=this.a.size}if(function(){if(!a||\'function\'!=typeof a||!a.prototype.entries||\'function\'!=typeof Object.seal)return!1;try{var c=Object.seal({x:4}),d=new a(p([c]));if(!d.has(c)||1!=d.size||d.add(c)!=d||1!=d.size||d.add({x:4})!=d||2!=d.size)return!1;var e=d.entries(),f=e.next();if(f.done||f.value[0]!=c||f.value[1]!=c)return!1;f=e.next();return f.done||f.value[0]==c||4!=f.value[0].x||\nf.value[1]!=f.value[0]?!1:e.next().done}catch(l){return!1}}())return a;ma();b.prototype.add=function(c){c=0===c?0:c;this.a.set(c,c);this.size=this.a.size;return this};b.prototype.delete=function(c){c=this.a.delete(c);this.size=this.a.size;return c};b.prototype.clear=function(){this.a.clear();this.size=0};b.prototype.has=function(c){return this.a.has(c)};b.prototype.entries=function(){return this.a.entries()};b.prototype.values=function(){return this.a.values()};b.prototype.keys=b.prototype.values;\nb.prototype[Symbol.iterator]=b.prototype.values;b.prototype.forEach=function(c,d){var e=this;this.a.forEach(function(f){return c.call(d,f,f,e)})};return b});y(\'Object.is\',function(a){return a?a:function(b,c){return b===c?0!==b||1/b===1/c:b!==b&&c!==c}});y(\'Array.prototype.includes\',function(a){return a?a:function(b,c){var d=this;d instanceof String&&(d=String(d));var e=d.length;c=c||0;for(0>c&&(c=Math.max(c+e,0));c<e;c++){var f=d[c];if(f===b||Object.is(f,b))return!0}return!1}});\ny(\'Object.entries\',function(a){return a?a:function(b){var c=[],d;for(d in b)u(b,d)&&c.push([d,b[d]]);return c}});\nvar z={qa:\'loaded\',xa:\'start\',ka:\'firstQuartile\',sa:\'midpoint\',ya:\'thirdQuartile\',ia:\'complete\',ta:\'pause\',va:\'resume\',ha:\'bufferStart\',ga:\'bufferFinish\',wa:\'skipped\',Aa:\'volumeChange\',ua:\'playerStateChange\',da:\'adUserInteraction\'},oa={na:\'generic\',za:\'video\',ra:\'media\'},qa={R:\'native\',oa:\'html\',P:\'javascript\'},ra={R:\'native\',P:\'javascript\',NONE:\'none\'},sa={ma:\'full\',ja:\'domain\',pa:\'limited\'},ta={fa:\'backgrounded\',la:\'foregrounded\'},ua={ea:\'app\',Ba:\'web\'};function A(a,b){this.x=null!=a.x?a.x:a.left;this.y=null!=a.y?a.y:a.top;this.width=a.width;this.height=a.height;this.endX=this.x+this.width;this.endY=this.y+this.height;this.adSessionId=a.adSessionId||void 0;this.isFriendlyObstructionFor=a.isFriendlyObstructionFor||[];this.b=a.friendlyObstructionClass||void 0;this.c=a.friendlyObstructionPurpose||void 0;this.f=a.friendlyObstructionReason||void 0;this.clipsToBounds=void 0!==a.clipsToBounds?!0===a.clipsToBounds:!0;this.notVisibleReason=a.notVisibleReason||\nvoid 0;this.childViews=a.childViews||[];this.isCreative=a.isCreative||!1;this.a=b}function va(a){var b={};return b.width=a.width,b.height=a.height,b}function C(a){var b={};return Object.assign({},va(a),(b.x=a.x,b.y=a.y,b))}function wa(a){var b=C(a),c={};return Object.assign({},b,(c.endX=a.endX,c.endY=a.endY,c))}function xa(a,b,c){a.x+=b;a.y+=c;a.endX+=b;a.endY+=c}\nA.prototype.J=function(a){if(null==a)return!1;a=C(a);var b=a.y,c=a.width,d=a.height;return this.x===a.x&&this.y===b&&this.width===c&&this.height===d};function ya(a){return a.width*a.height};function za(a,b){a=C(a);for(var c=[],d=[],e=0;e<b.length;e++){var f=C(b[e]);f=Aa(a,f);Ba(c,f.x);Ba(c,f.endX);Ba(d,f.y);Ba(d,f.endY)}c=c.sort(function(l,g){return l-g});d=d.sort(function(l,g){return l-g});return{ba:c,ca:d}}function Aa(a,b){return{x:Math.max(a.x,b.x),y:Math.max(a.y,b.y),endX:Math.min(a.x+a.width,b.x+b.width),endY:Math.min(a.y+a.height,b.y+b.height)}}function Ba(a,b){-1===a.indexOf(b)&&a.push(b)};function Ca(){this.b=this.a=this.v=this.l=this.g=this.j=void 0;this.m=0;this.h=[];this.o=[];this.u=0;this.i=[];this.c=[];this.f=[]}Ca.prototype.J=function(a){return null==a?!1:JSON.stringify(Da(this))===JSON.stringify(Da(a))};\nfunction Da(a){var b=[],c=[],d={viewport:a.j,adView:{percentageInView:a.m,reasons:a.f},declaredFriendlyObstructions:a.h.length};if(void 0!==a.a){d.adView.geometry=C(a.a);d.adView.geometry.pixels=ya(a.a);d.adView.onScreenGeometry=C(a.b);d.adView.onScreenGeometry.pixels=a.u;for(var e=0;e<a.c.length;e++)b.push(C(a.c[e]));for(e=0;e<a.o.length;e++){var f=a.o[e],l=f,g={};l.b&&(g.obstructionClass=l.b);l.c&&(g.obstructionPurpose=l.c);l.f&&(g.obstructionReason=l.f);f=Aa(a.a,f);c.push(Object.assign({},{x:f.x,\ny:f.y,width:f.endX-f.x,height:f.endY-f.y},g))}d.adView.onScreenGeometry.obstructions=b;d.adView.onScreenGeometry.friendlyObstructions=c;void 0!==a.l&&void 0!==a.v&&(d.adView.containerGeometry=C(a.l),d.adView.onScreenContainerGeometry=C(a.v),d.adView.measuringElement=!0)}return d}function Ea(a,b){b=va(b);a.j={};a.j.width=b.width;a.j.height=b.height;a.g={};a.g.x=0;a.g.y=0;a.g.width=b.width;a.g.height=b.height;a.g.endX=b.width;a.g.endY=b.height}\nfunction Fa(){return{x:0,y:0,endX:0,endY:0,width:0,height:0}}function Ga(a,b){var c={};c.x=Math.max(a.x,b.x);c.y=Math.max(a.y,b.y);c.endX=Math.min(a.endX,b.endX);c.endY=Math.min(a.endY,b.endY);c.width=Math.max(0,c.endX-c.x);c.height=Math.max(0,c.endY-c.y);return c}function Ha(a,b){return a.width<b.width||a.height<b.height}\nfunction Ia(a){if(-1!==a.f.indexOf(\'backgrounded\'))a.m=0,a.u=0;else{var b=ya(a.a);if(0!==b){var c=ya(a.b);var d=a.c,e=0;if(0<d.length){var f=za(a.b,d),l=f.ba;f=f.ca;for(var g=0;g<l.length-1;g++)for(var h=(l[g]+(l[g]+1))/2,k=l[g+1]-l[g],m=0;m<f.length-1;m++){for(var v=(f[m]+(f[m]+1))/2,B=f[m+1]-f[m],x=!1,F=0;F<d.length;F++){var K=C(d[F]);if(K.x<h&&K.x+K.width>h&&K.y<v&&K.y+K.height>v){x=!0;break}}x&&(e+=Math.round(k)*Math.round(B))}}c-=e;b=Math.round(c/b*100);a.m=Math.max(b,0);a.u=Math.max(c,0)}}}\nfunction Ja(a,b){if(0!==b.width&&0!==b.height&&a.b){a=wa(a.b);var c=a.y,d=a.endX,e=a.endY;b=!(b.endX<=a.x||b.x>=d||b.endY<=c||b.y>=e)}else b=!1;return b}function D(a,b){for(var c=!1,d=0;d<a.f.length;d++)a.f[d]===b&&(c=!0);c||a.f.push(b)};function Ka(a,b,c,d,e){var f=new Ca;b=new A(b,!1);Ea(f,b);La(a,b,f,d);if(!e)return f.f=[\'unmeasurable\'],f.j=void 0,f.m=0,f.c=[],f.a&&(a=f.a,c={},a=new A((c.x=0,c.y=0,c.width=a.width,c.height=a.height,c),a.a),f.a=a),f.b=Fa(),f;if(\'backgrounded\'===c)D(f,\'backgrounded\');else if(void 0!==f.a){for(a=0;a<f.h.length;a++)Ja(f,f.h[a])&&f.o.push(f.h[a]);for(a=0;a<f.i.length;a++){if(c=Ja(f,f.i[a])){a:{c=f.i[a];for(d=0;d<f.c.length;d++)if(f.c[d].J(c)){c=!0;break a}c=!1}c=!c}c&&(D(f,\'obstructed\'),f.c.push(f.i[a]))}Ia(f)}else D(f,\n\'notFound\');return f}\nfunction La(a,b,c,d){var e=b.isCreative?!0:b.adSessionId===d;if(e){c.a=b;var f=wa(c.a);a=Ga(c.g,f);var l=c.a;\'notAttached\'===l.notVisibleReason||\'noWindowFocus\'===l.notVisibleReason||\'noAdView\'===l.notVisibleReason?(D(c,\'notFound\'),c.b=new A(Fa(),!1)):(l=c.a,\'viewInvisible\'===l.notVisibleReason||\'viewGone\'===l.notVisibleReason||\'viewNotVisible\'===l.notVisibleReason||\'viewAlphaZero\'===l.notVisibleReason||\'viewHidden\'===l.notVisibleReason||void 0!==c.a.notVisibleReason?(D(c,\'hidden\'),c.b=new A(Fa(),\n!1)):(Ha(a,f)&&D(c,\'clipped\'),c.b=new A(a,!1)))}else if(f=!0,b.a&&(f=-1!==b.isFriendlyObstructionFor.indexOf(d)?!1:!1===b.clipsToBounds),f){l=b.childViews;for(var g=0;g<l.length;g++)f=void 0!==c.a,La(a,new A(l[g],f),c,d)}e||void 0===c.a||(b.a?-1!==b.isFriendlyObstructionFor.indexOf(d)?c.h.push(b):c.i.push(b):(e=wa(b),d=wa(c.b),C(c.b),a=c.b,0!==a.width&&0!==a.height&&b.clipsToBounds&&(b=Ga(d,e),Ha(b,d)&&(D(c,\'clipped\'),c.b=new A(b,!1)))))};function Ma(a,b){this.y=this.x=0;this.width=a;this.height=b};function Na(){return{apiVersion:\'1.0\',accessMode:\'limited\',environment:\'app\',omidJsInfo:{omidImplementer:\'omsdk\',serviceVersion:\'1.3.20-iab2822\'}}}function Oa(){this.adSessionId=null;this.c=Na();this.o=null;this.m=\'foregrounded\';this.l=this.i=\'none\';this.j=this.g=this.f=this.h=this.a=this.b=this.B=this.u=null;this.C=!0;this.v=new Map}var G;function H(){G||(G=new Oa);return G};var Pa=eval(\'this\'),I=function(){if(\'undefined\'!==typeof omidGlobal&&omidGlobal)return omidGlobal;if(\'undefined\'!==typeof global&&global)return global;if(\'undefined\'!==typeof window&&window)return window;if(\'undefined\'!==typeof Pa&&Pa)return Pa;throw Error(\'Could not determine global object context.\');}();function Qa(a,b){this.a=a;this.b=b}t.Object.defineProperties(Qa.prototype,{event:{configurable:!0,enumerable:!0,get:function(){return this.a}},origin:{configurable:!0,enumerable:!0,get:function(){return this.b}}});function J(a){for(var b=[],c=0;c<arguments.length;++c)b[c]=arguments[c];Ra(function(){throw new (Function.prototype.bind.apply(Error,[null,\'Could not complete the test successfully - \'].concat(q(b))));},function(){return console.error.apply(console,q(b))})}function Sa(a){for(var b=[],c=0;c<arguments.length;++c)b[c]=arguments[c];Ra(function(){},function(){return console.error.apply(console,q(b))})}\nfunction Ra(a,b){\'undefined\'!==typeof jasmine&&jasmine?a():\'undefined\'!==typeof console&&console&&console.error&&b()};function Ta(){this.f=[];this.b=[];this.c=[];this.g=[];this.i={};this.a=H()}function Ua(a){a.f=[];a.b=[];a.c=[];a.g=[];a.i={};G.adSessionId=null;G.c=Na();G.o=null;G.G=void 0;G.K=void 0;G.H=null;G.I=null;G.D=null;G.m=\'foregrounded\';G.i=\'none\';G.l=\'none\';G.u=null;G.B=null;G.b=null;G.a=null;G.h=null;G.f=null;G.g=null;G.j=null;G.C=!0;G.v=new Map}\nfunction Va(a,b){void 0!==a.a&&a.a.adSessionId&&!1!==Wa(a,b)&&a.c.filter(function(c){return c.type===b.event.type}).forEach(function(c){return a.h(c.F,b.event)})}function Xa(a,b){a.f.push(b);Va(a,b)}function Ya(a,b,c){void 0!==a.a&&a.a.adSessionId&&a.f.filter(function(d){return d.event.type===b&&Wa(a,d)}).map(function(d){return d.event}).forEach(c)}\nfunction Wa(a,b){var c=b.event.type,d=-1!==Object.values(z).indexOf(c)&&\'volumeChange\'!==c;return\'impression\'===c||\'loaded\'===c&&a.a.a?b.origin===H().l:d?b.origin===H().i:!0}function Za(a,b,c){\'media\'===b||\'video\'===b?$a(a,c):(a.c.push({type:b,F:c}),Ya(a,b,c))}function $a(a,b){Object.keys(z).forEach(function(c){c=z[c];a.c.push({type:c,F:b});Ya(a,c,b)})}function ab(a,b,c,d){var e={O:c,L:d,F:b};a.g.push(e);a.b.forEach(function(f){var l=bb(f);\'sessionStart\'===f.event.type&&cb(a,l,e);a.h(b,l)})}\nfunction db(a,b,c){var d=L(a,\'sessionError\',\'native\',{errorType:b,message:c});a.b.push(d);a.g.forEach(function(e){a.h(e.F,d.event)})}function eb(a,b){a.i=Object.assign(a.i,b);b=a.a.c;if(void 0!==b){b=Object.assign({},fb(a,gb(a,{context:b}),!0),{supportsLoadedEvent:!!a.a.a||\'video\'==a.a.b});Object.assign(b,{pageUrl:null,contentUrl:a.a.o});var c=L(a,\'sessionStart\',\'native\',b);a.b.push(c);a.g.forEach(function(d){var e=d.F,f=bb(c);cb(a,f,d);a.h(e,f)},a);hb(a)}}\nfunction cb(a,b,c){c.O&&(b.data.verificationParameters=a.i[c.O]);c.L&&(c=a.a.v.get(c.L))&&(b.data.verificationParameters=c.verificationParameters,b.data.context.accessMode=c.accessMode,\'full\'===c.accessMode&&(a.a.g&&(b.data.context.videoElement=a.a.g),a.a.f&&(b.data.context.slotElement=a.a.f)))}function ib(a){var b=a.g,c=L(a,\'sessionFinish\',\'native\');a.b.push(c);var d=a.a.c;d&&\'native\'==d.adSessionType||Ua(a);b.forEach(function(e){return a.h(e.F,c.event)})}\nTa.prototype.h=function(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];try{a.apply(null,q(c))}catch(e){Sa(e)}};function jb(a,b){var c=(c=H().D)?Da(c):void 0;c=fb(a,gb(a,c));Xa(a,L(a,\'impression\',b,c))}function kb(a,b,c){if(a.a.a||\'display\'!=a.a.b)b=L(a,\'loaded\',b,fb(a,gb(a,void 0===c?null:c))),Xa(a,b)}\nfunction lb(a,b,c,d){\'start\'!==b&&\'volumeChange\'!==b||null!=(d&&d.deviceVolume)||(d.deviceVolume=a.a.u);if(d&&(\'start\'===b||\'volumeChange\'===b)){var e=d.videoPlayerVolume,f=d.mediaPlayerVolume;null!=e?(Object.assign(d,{mediaPlayerVolume:e}),a.a.B=e):null!=f&&(Object.assign(d,{videoPlayerVolume:f}),a.a.B=f)}Xa(a,L(a,b,c,d))}\nfunction hb(a){var b=a.f.filter(function(f){return Object.values(z).includes(f.event.type)&&\'video\'==a.a.b&&f.origin===a.a.i||\'loaded\'==f.event.type&&\'display\'==a.a.b&&f.origin===a.a.l?!0:!1}).map(function(f){return f.event}),c=a.a.adSessionId||\'\',d={};b=p(b);for(var e=b.next();!e.done;d={w:d.w},e=b.next()){d.w=e.value;d.w.adSessionId||(d.w.adSessionId=c);if(\'loaded\'==d.w.type){if(!a.a.a&&\'display\'==a.a.b)continue;d.w.data=fb(a,gb(a,d.w.data))}a.c.filter(function(f){return function(l){return l.type===\nf.w.type}}(d)).forEach(function(f){return function(l){return l.F(f.w)}}(d))}}function mb(a,b,c){a:{c=new Set(c);a=p(a.f.concat(a.b));for(var d=a.next();!d.done;d=a.next())if(d=d.value,c.has(d.event.type)&&d.origin!=b){b=!0;break a}b=!1}return b?(J(\'Event owner cannot be registered after its events have already been published.\'),!1):!0}function nb(a,b){mb(a,b,Object.values(z))&&M(a,b)&&(a.a.i=b)}function ob(a,b){mb(a,b,[\'impression\'])&&pb(a,b)&&(a.a.l=b)}\nfunction pb(a,b){var c=a.a.l;return\'none\'!=c&&c!=b?(J(\'Impression event is owned by \'+(a.a.l+\', not \')+(b+\'.\')),!1):!0}function M(a,b){var c=a.a.i;return\'none\'!=c&&c!=b?(J(\'Media events are owned by \'+(a.a.i+\', not \'+b+\'.\')),!1):!0}function fb(a,b,c){c=void 0===c?!1:c;b=Object.assign({},b);a.a.b&&Object.assign(b,{mediaType:a.a.b});a.a.a&&(c||\'definedByJavaScript\'!==a.a.a)&&Object.assign(b,{creativeType:a.a.a});return b}function gb(a,b){return a.a.h?Object.assign({},b,{impressionType:a.a.h}):b}\nfunction L(a,b,c,d){return new Qa({adSessionId:a.a.adSessionId||\'\',timestamp:(new Date).getTime(),type:b,data:d},c)}function bb(a){a=a.event;return{adSessionId:a.adSessionId,timestamp:a.timestamp,type:a.type,data:a.data}};function qb(a,b,c){\'container\'===b&&void 0!==a.a.G&&void 0!==a.a&&null!=a.a.adSessionId&&(a.a.H=Ka(a.c,a.a.G,a.a.m,a.a.adSessionId,!0));b=a.a;var d=b.H,e=b.I;if(d)if(e){b=new Ca;var f=d.j,l=d.a,g=d.b,h=e.a;e=e.b;f&&l&&g&&h&&e&&(Ea(b,f),b.l=new A(l,!1),b.v=new A(g,!1),b.i=Object.assign([],d.i),b.c=Object.assign([],d.c),b.h=Object.assign([],d.h),b.o=Object.assign([],d.o),b.f=Object.assign([],d.f),d=b.l.x,f=b.l.y,h=new A(h,!1),e=new A(e,!1),xa(h,d,f),xa(e,d,f),b.a=h,b.b=Ga(e,g),Ia(b))}else b=d;else b=\nnull;g=a.a.D;if(b&&!b.J(g)||c)g=Da(b),c&&(g.adView.reasons=g.adView.reasons||[c]),c=a.b,\'audio\'!=c.a.a&&Xa(c,L(c,\'geometryChange\',\'native\',g)),a.a.D=b};function N(a){return\'object\'===typeof a}function rb(a){return\'number\'===typeof a&&!isNaN(a)&&0<=a}function O(a){return\'string\'===typeof a}function P(a,b){return O(a)&&-1!==Object.values(b).indexOf(a)}function sb(a){var b=a&&a.tagName&&\'iframe\'===a.tagName.toLowerCase();try{b=b&&a instanceof HTMLIFrameElement}catch(c){}return b}function tb(a){var b=a&&a.tagName;try{b=b&&a instanceof a.ownerDocument.defaultView.HTMLElement}catch(c){}return b}\nfunction ub(a){var b=a&&a.tagName&&\'video\'===a.tagName.toLowerCase();try{b=b&&a instanceof a.ownerDocument.defaultView.HTMLVideoElement}catch(c){}return b};function Q(a,b,c){this.f=a;this.K=b;this.G=c;this.c=H();this.b=null;this.a=this.g=this.u=void 0;this.I=!0;this.B=void 0;R(this)}function R(a){if(!a.b){var b;a:{if((b=a.f.document)&&b.getElementsByClassName&&(b=b.getElementsByClassName(\'omid-element\'))){if(1==b.length){b=b[0];break a}1<b.length&&a.I&&(db(a.G,\'generic\',\"More than one element with \'omid-element\' class name.\"),a.I=!1)}b=null}if(ub(b))a.c.g=b;else if(tb(b))a.c.f=b;else return;vb(a)}}\nfunction vb(a){a.c.g?(a.b=a.c.g,a.i()):a.c.f&&(a.b=a.c.f,sb(a.b)?a.c.j&&a.i():a.i())}function wb(a){a.a&&(sb(a.b)?a.c.j&&(a.D(),xb(a)):(a.D(),xb(a)))}Q.prototype.m=function(){this.B&&(this.f.document.removeEventListener(\'visibilitychange\',this.B),this.B=void 0)};Q.prototype.i=function(){};function xb(a){a.u&&(a.c.I=a.u,qb(a.K,\'creative\'))}function yb(a){if(a.a&&a.c.j){var b=new A(a.c.j,!1);xa(b,a.a.x,a.a.y);b.clipsToBounds=!0;return b}};function zb(a,b,c){return Ab(a,\'setInterval\')(b,c)}function Bb(a,b){Ab(a,\'clearInterval\')(b)}function Cb(a,b){Ab(a,\'clearTimeout\')(b)}function Ab(a,b){return a.a&&a.a[b]?a.a[b]:Db(a,b)}\nfunction Eb(a,b,c,d){if(a.a.document&&a.a.document.body){var e=a.a.document.createElement(\'img\');e.width=1;e.height=1;e.style.display=\'none\';e.src=b;c&&e.addEventListener(\'load\',function(){return c()});d&&e.addEventListener(\'error\',function(){return d()});a.a.document.body.appendChild(e)}else Db(a,\'sendUrl\')(b,c,d)}function Db(a,b){if(a.a&&a.a.omidNative&&a.a.omidNative[b])return a.a.omidNative[b].bind(a.a.omidNative);throw Error(\'Native interface method \"\'+b+\'\" not found.\');};function S(a,b,c,d,e){Q.call(this,a,c,e);this.l=b;this.h=void 0;this.j=d}r(S,Q);S.prototype.m=function(){void 0!==this.h&&(Bb(this.j,this.h),this.h=void 0);Q.prototype.m.call(this)};S.prototype.i=function(){var a=this;Q.prototype.i.call(this);null==this.b?this.h=void 0:void 0===this.h&&(this.h=zb(this.j,function(){return Fb(a)},200),Fb(this))};\nS.prototype.D=function(){if(this.g){var a=yb(this);if(a){this.a.isCreative=!1;a.isCreative=!0;for(var b=!1,c=0;c<this.a.childViews.length;c++)if(this.a.childViews[c].isCreative){this.a.childViews[c]=a;b=!0;break}b||this.a.childViews.push(a)}else this.a.isCreative=!0;this.u=Ka(this.l,this.g,this.c.m,this.c.adSessionId,this.C())}};S.prototype.C=function(){return!0};\nfunction Fb(a){if(void 0!==a.h){b:{try{var b=a.f.top;var c=0<=b.innerHeight&&0<=b.innerWidth;break b}catch(d){}c=!1}c?(c=a.f.top,c=new A(new Ma(c.innerWidth,c.innerHeight),!1)):c=new A(new Ma(0,0),!1);b=a.b.getBoundingClientRect();if(null==b.x||isNaN(b.x))b.x=b.left;if(null==b.y||isNaN(b.y))b.y=b.top;b=new A(b,!1);c.J(a.g)&&b.J(a.a)||(a.a=b,a.a.clipsToBounds=!0,a.g=c,a.g.childViews.push(a.a),wb(a))}};function T(a,b,c,d){Q.call(this,a,c,d);this.o=this.j=this.l=this.h=void 0;this.H=!1;this.v=void 0}r(T,Q);T.prototype.m=function(){this.h&&this.h.disconnect();Gb(this);Q.prototype.m.call(this)};T.prototype.i=function(){Q.prototype.i.call(this);this.b&&(this.h||(this.h=Hb(this)),Ib(this),Jb(this.b)&&Kb(this))};\nT.prototype.D=function(){if(this.a&&this.v){var a=yb(this);if(a){var b=a;var c=this.v;var d=Math.max(a.x,c.x);var e=Math.max(a.y,c.y),f=Math.min(a.endX,c.endX);a=Math.min(a.endY,c.endY);f<=d||a<=e?d=null:(c={},d=new A((c.x=d,c.y=e,c.width=Math.abs(f-d),c.height=Math.abs(a-e),c),!1));d||(d=new A({x:0,y:0,width:0,height:0},!1))}else b=this.a,d=this.v;e=new Ca;this.g&&Ea(e,this.g);e.a=b;e.b=d;Ia(e);this.H?100===e.m||D(e,\'clipped\'):D(e,\'viewport\');this.u=e}};T.prototype.C=function(){return!0};\nfunction Gb(a){a.l&&(a.l.disconnect(),a.l=void 0);a.j&&(a.j.disconnect(),a.j=void 0);a.o&&((0,a.f.removeEventListener)(\'resize\',a.o),a.o=void 0)}function Ib(a){a.h&&a.b&&(a.h.unobserve(a.b),a.h.observe(a.b))}function Jb(a){a=a.getBoundingClientRect();return 0==a.width||0==a.height}\nfunction Hb(a){return new a.f.IntersectionObserver(function(b){try{if(b.length){for(var c,d=b[0],e=1;e<b.length;e++)b[e].time>d.time&&(d=b[e]);c=d;a.g=Lb(c.rootBounds);a.a=Lb(c.boundingClientRect);a.v=Lb(c.intersectionRect);a.H=!!c.isIntersecting;wb(a)}}catch(f){a.m(),db(a.G,\'generic\',\'Problem handling IntersectionObserver callback: \'+f.message)}},{root:null,rootMargin:\'0px\',threshold:[0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1]})}\nfunction Kb(a){a.f.ResizeObserver?a.l||(a.l=Mb(a,function(){return Ob(a)}),a.l.observe(a.b)):(a.o||(a.o=function(){return Ob(a)},(0,a.f.addEventListener)(\'resize\',a.o)),a.j||(a.j=new MutationObserver(function(){return Ob(a)}),a.j.observe(a.b,{childList:!1,attributes:!0,subtree:!1})))}function Ob(a){a.b&&!Jb(a.b)&&(Ib(a),Gb(a))}function Mb(a,b){return new a.f.ResizeObserver(b)}function Lb(a){if(a&&null!==a.x&&null!==a.y&&null!==a.width&&null!==a.height)return new A(a,!1)};function Pb(a){return a&&N(a)?Object.entries(a).reduce(function(b,c){var d=p(c);c=d.next().value;d=d.next().value;return b&&O(c)&&null!=d&&N(d)&&O(d.resourceUrl)},!0):!1};function U(a,b,c,d){this.b=a;this.method=b;this.version=c;this.a=d}function Qb(a){return!!a&&void 0!==a.omid_message_guid&&void 0!==a.omid_message_method&&void 0!==a.omid_message_version&&\'string\'===typeof a.omid_message_guid&&\'string\'===typeof a.omid_message_method&&\'string\'===typeof a.omid_message_version&&(void 0===a.omid_message_args||void 0!==a.omid_message_args)}function Rb(a){return new U(a.omid_message_guid,a.omid_message_method,a.omid_message_version,a.omid_message_args)}\nfunction Sb(a){var b={};b=(b.omid_message_guid=a.b,b.omid_message_method=a.method,b.omid_message_version=a.version,b);void 0!==a.a&&(b.omid_message_args=a.a);return b};function Tb(a){this.c=a};function V(a){this.c=a;this.handleExportedMessage=V.prototype.f.bind(this)}r(V,Tb);V.prototype.b=function(a,b){b=void 0===b?this.c:b;if(!b)throw Error(\'Message destination must be defined at construction time or when sending the message.\');b.handleExportedMessage(Sb(a),this)};V.prototype.f=function(a,b){Qb(a)&&this.a&&this.a(Rb(a),b)};function Ub(a,b){this.c=b=void 0===b?I:b;var c=this;a.addEventListener(\'message\',function(d){if(\'object\'===typeof d.data){var e=d.data;Qb(e)&&d.source&&c.a&&c.a(Rb(e),d.source)}})}r(Ub,Tb);Ub.prototype.b=function(a,b){b=void 0===b?this.c:b;if(!b)throw Error(\'Message destination must be defined at construction time or when sending the message.\');b.postMessage(Sb(a),\'*\')};function Vb(){return\'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx\'.replace(/[xy]/g,function(a){var b=16*Math.random()|0;return\'y\'===a?(b&3|8).toString(16):b.toString(16)})};function Wb(a){if(!a.a||!a.a.document)throw Error(\'OMID Service Script is not running within a window.\');var b=a.b;a.b=[];b.forEach(function(c){try{var d=a.c.C?\'limited\':\'full\',e=P(c.accessMode,sa)?c.accessMode:null;var f=e?\'full\'==e&&\'limited\'==d?d:\'domain\'==e?\'limited\':e:d;c.accessMode=f;a:{var l=c.resourceUrl,g=a.a.location.origin;try{var h=new URL(l,g);break a}catch(F){}try{h=new URL(l);break a}catch(F){}h=null}if(d=h){var k=Vb(),m=a.a.document,v=m.createElement(\'iframe\');v.id=\'omid-verification-script-frame-\'+\nk;v.style.display=\'none\';[\'full\',\'limited\'].includes(f)?v.srcdoc=\"<html><head>\\n<script type=\\\"text/javascript\\\">window[\'omidVerificationProperties\'] = {\\n\'serviceWindow\': window.parent,\\n\'injectionSource\': \'app\',\\n\'injectionId\': \'\"+(k+\'\\\',\\n};\\x3c/script>\\n<script type=\"text/javascript\" src=\"\')+d.href+\'\">\\x3c/script>\\n</head><body></body></html>\':\'domain\'==f&&(v.src=Xb(a,k,d).href);[\'domain\',\'limited\'].includes(f)&&(v.sandbox=\'allow-scripts\');m.body.appendChild(v);var B=c.vendorKey,x=c.verificationParameters;\nB=void 0===B?\'\':B;x=void 0===x?\'\':x;B&&\'string\'===typeof B&&\'\'!==B&&x&&\'string\'===typeof x&&\'\'!==x&&(a.f.i[B]=x);a.c.v.set(k,c)}}catch(F){Sa(\'OMID verification script \'+c.resourceUrl+\' failed to load: \'+F)}})}\nfunction Xb(a,b,c){var d=\'/.well-known/omid/omloader-v1.html#\';(new Map([[\'verificationScriptUrl\',c.href],[\'injectionId\',b]])).forEach(function(e,f){d+=encodeURIComponent(f)+\'=\'+encodeURIComponent(e)+\'&\'});b=null;try{b=new URL(d,a.a.parent.location.origin)}catch(e){throw Error(\'OMID Service Script cannot access the parent window.\');}return b};function Yb(){var a=Zb,b=$b,c=this;this.c=W;this.b=a;this.a=H();this.g=b;this.f=!1;this.registerSessionObserver(function(d){return ac(c,d)})}n=Yb.prototype;n.registerSessionObserver=function(a){ab(this.c,a)};n.setSlotElement=function(a){tb(a)?(this.a.f=a,this.b&&vb(this.b)):J(\'setSlotElement called with a non-HTMLElement.  It will be ignored.\')};n.setElementBounds=function(a){this.a.j=a;this.b&&vb(this.b);this.b&&wb(this.b)};n.error=function(a,b){db(this.c,a,b)};\nn.registerAdEvents=function(){ob(this.c,\'javascript\')};n.registerMediaEvents=function(){nb(this.c,\'javascript\')};function Y(a,b,c){\'impression\'==b?pb(a.c,\'javascript\')&&(jb(a.c,\'javascript\'),a.b&&R(a.b)):(\'loaded\'==b?(c=void 0===c?null:c,M(a.c,\'javascript\')&&kb(a.c,\'javascript\',c)):M(a.c,\'javascript\')&&lb(a.c,b,\'javascript\',c),[\'loaded\',\'start\'].includes(b)&&a.b&&R(a.b))}n.injectVerificationScriptResources=function(a){var b=this.g;b.b.push.apply(b.b,q(a));if(this.f)try{Wb(this.g)}catch(c){J(c.message)}};\nn.setCreativeType=function(a,b){b=void 0===b?null:b;if(!this.a.b||this.a.a)this.a.a=a,\'video\'==a||\'audio\'==a?this.a.b=\'video\':\'htmlDisplay\'==a||\'nativeDisplay\'==a?this.a.b=\'display\':\'definedByJavaScript\'==a&&b&&(this.a.b=\'none\'==b?\'display\':\'video\')};n.setImpressionType=function(a){if(!this.a.b||this.a.a)this.a.h=a};\nfunction ac(a,b){if(\'sessionStart\'===b.type){a.f=!0;try{Wb(a.g)}catch(c){J(c.message)}}\'sessionFinish\'===b.type&&(a.f=!1,(b=H().c)&&\'native\'==b.adSessionType||a.registerSessionObserver(function(c){return ac(a,c)}))}n.setClientInfo=function(a,b,c){var d=this.a.c||{};d.omidJsInfo=Object.assign({},d.omidJsInfo,{sessionClientVersion:a,partnerName:b,partnerVersion:c});this.a.c=d;return this.a.c.omidJsInfo.serviceVersion};function bc(a){return/\\d+\\.\\d+\\.\\d+(-.*)?/.test(a)}function cc(a){a=a.split(\'-\')[0].split(\'.\');for(var b=[\'1\',\'0\',\'3\'],c=0;3>c;c++){var d=parseInt(a[c],10),e=parseInt(b[c],10);if(d>e)break;else if(d<e)return!1}return!0};function dc(a,b){return bc(a)&&cc(a)?b?b:[]:b&&\'string\'===typeof b?JSON.parse(b):[]};function ec(){var a=fc;var b=void 0===b?omidGlobal:b;this.a=a;this.f=b;this.b=new V;this.f.omid=this.f.omid||{};this.f.omid.v1_SessionServiceCommunication=this.b;this.c=b&&b.addEventListener&&b.postMessage?new Ub(b):null;this.g=null;this.b.a=this.h.bind(this);this.c&&(this.c.a=this.i.bind(this))}ec.prototype.h=function(a,b){gc(this,a,b,this.b)};\nec.prototype.i=function(a,b){this.g||(this.g=b);this.g!=b?J(\'The source window of session client post messages cannot be changed from the source of the first message.\'):gc(this,a,b,this.c)};\nfunction gc(a,b,c,d){function e(h){for(var k=[],m=0;m<arguments.length;++m)k[m]=arguments[m];k=new U(f,\'response\',g,bc(g)&&cc(g)?k:JSON.stringify(k));d.b(k,c)}var f=b.b,l=b.method,g=b.version;b=dc(g,b.a);try{hc(a,l,e,b)}catch(h){d.b(new U(f,\'error\',g,\'\\n        name: \'+h.name+\'\\n        message: \'+h.message+\'\\n        filename: \'+h.filename+\'\\n        lineNumber: \'+h.lineNumber+\'\\n        columnNumber: \'+h.columnNumber+\'\\n        stack: \'+h.stack+\'\\n        toString(): \'+h.toString()),c)}}\nfunction hc(a,b,c,d){switch(b){case \'SessionService.registerAdEvents\':a.a.registerAdEvents();break;case \'SessionService.registerMediaEvents\':a.a.registerMediaEvents();break;case \'SessionService.registerSessionObserver\':a.a.registerSessionObserver(c);break;case \'SessionService.setSlotElement\':c=p(d).next().value;a.a.setSlotElement(c);break;case \'SessionService.setVideoElement\':c=p(d).next().value;a=a.a;ub(c)?(a.a.g=c,a.b&&vb(a.b)):J(\'setVideoElement called with a non-HTMLVideoElement. It will be ignored.\');\nbreak;case \'SessionService.setElementBounds\':c=p(d).next().value;a.a.setElementBounds(c);break;case \'SessionService.startSession\':J(\'Session start from JS is not supported in mobile app.\');break;case \'SessionService.finishSession\':J(\'Session finish from JS is not supported in mobile app.\');break;case \'SessionService.impressionOccurred\':Y(a.a,\'impression\');break;case \'SessionService.loaded\':(c=p(d).next().value)?(b={skippable:c.isSkippable,autoPlay:c.isAutoPlay,position:c.position},c.isSkippable&&\n(b.skipOffset=c.skipOffset),Y(a.a,\'loaded\',b)):Y(a.a,\'loaded\');break;case \'SessionService.start\':b=p(d);c=b.next().value;b=b.next().value;Y(a.a,\'start\',{duration:c,mediaPlayerVolume:b});break;case \'SessionService.firstQuartile\':Y(a.a,\'firstQuartile\');break;case \'SessionService.midpoint\':Y(a.a,\'midpoint\');break;case \'SessionService.thirdQuartile\':Y(a.a,\'thirdQuartile\');break;case \'SessionService.complete\':Y(a.a,\'complete\');break;case \'SessionService.pause\':Y(a.a,\'pause\');break;case \'SessionService.resume\':Y(a.a,\n\'resume\');break;case \'SessionService.bufferStart\':Y(a.a,\'bufferStart\');break;case \'SessionService.bufferFinish\':Y(a.a,\'bufferFinish\');break;case \'SessionService.skipped\':Y(a.a,\'skipped\');break;case \'SessionService.volumeChange\':c={mediaPlayerVolume:p(d).next().value};Y(a.a,\'volumeChange\',c);break;case \'SessionService.playerStateChange\':c={state:p(d).next().value};Y(a.a,\'playerStateChange\',c);break;case \'SessionService.adUserInteraction\':c={interactionType:p(d).next().value};Y(a.a,\'adUserInteraction\',\nc);break;case \'SessionService.setClientInfo\':var e=p(d);b=e.next().value;d=e.next().value;e=e.next().value;a=a.a.setClientInfo(b,d,e);c(a);break;case \'SessionService.injectVerificationScriptResources\':c=p(d).next().value;a.a.injectVerificationScriptResources(c);break;case \'SessionService.setCreativeType\':c=p(d).next().value;a.a.setCreativeType(c);break;case \'SessionService.setImpressionType\':c=p(d).next().value;a.a.setImpressionType(c);break;case \'SessionService.setContentUrl\':c=p(d).next().value;\na.a.a.o=c;break;case \'SessionService.sessionError\':b=p(d),c=b.next().value,b=b.next().value,a.a.error(c,b)}};function Z(){var a=W,b=ic,c=jc,d=Zb;this.f=fc;this.a=a;this.c=b;this.h=c;this.g=d;this.b=H()}n=Z.prototype;\nn.T=function(a){if(!(!(a&&N(a)&&P(a.impressionOwner,ra))||\'videoEventsOwner\'in a&&null!=a.videoEventsOwner&&!P(a.videoEventsOwner,ra)||\'mediaEventsOwner\'in a&&null!=a.mediaEventsOwner&&!P(a.mediaEventsOwner,ra))){if(a.creativeType&&a.impressionType){var b=a.mediaEventsOwner;null==this.b.a&&this.f.setCreativeType(a.creativeType,b);null==this.b.h&&(this.b.h=a.impressionType);nb(this.a,b)}else b=a.videoEventsOwner,this.b.b=null==b||\'none\'===b?\'display\':\'video\',this.b.a=null,this.b.h=null,nb(this.a,b);\nob(this.a,a.impressionOwner);a&&null!=a.isolateVerificationScripts&&\'boolean\'===typeof a.isolateVerificationScripts&&(this.b.C=a.isolateVerificationScripts)}};\nn.W=function(a,b,c,d){var e;if(N(b)){if(e=P(b.environment,ua)&&P(b.adSessionType,qa))e=b.omidNativeInfo,e=N(e)?O(e.partnerName)&&O(e.partnerVersion):!1;e&&(e=b.app,e=N(e)?O(e.libraryVersion)&&O(e.appId):!1)}else e=!1;e&&(Pb(d)&&(this.b.v=new Map(Object.entries(d))),d=this.f,c=void 0===c?null:c,null==a&&(a=Vb()),b.canMeasureVisibility=d.b.C(),d.a.adSessionId=a,a=d.a,e=b,void 0!==e.contentUrl&&(a.o=e.contentUrl,e.contentUrl=void 0),e=a.c||{},b.omidJsInfo=Object.assign({},e.omidJsInfo||{},b.omidJsInfo||\n{}),e=b=Object.assign({},e,b),a.C||(null!=a.g?(e.videoElement=a.g,e.accessMode=\'full\'):null!=a.f&&(e.slotElement=a.f,e.accessMode=\'full\')),a.c=b,eb(d.c,c),d.b&&R(d.b))};n.U=function(){var a=this.f;ib(a.c);a.b.m()};n.$=function(a){N(a)&&rb(a.x)&&rb(a.y)&&rb(a.width)&&rb(a.height)&&(this.b.G=a,qb(this.c,\'container\'))};n.aa=function(a){P(a,ta)&&(this.b.m=a,\'backgrounded\'===a?qb(this.c,\'container\',\'backgrounded\'):qb(this.c,\'container\'))};n.X=function(a){\'impression\'===a&&(this.M(),this.g&&R(this.g))};\nn.M=function(){pb(this.a,\'native\')&&jb(this.a,\'native\')};n.V=function(a){a=void 0===a?null:a;M(this.a,\'native\')&&kb(this.a,\'native\',a)};n.error=function(a,b){P(a,oa)&&db(this.a,a,b)};n.Y=function(a,b){this.N(a,b)};n.N=function(a,b){M(this.a,\'native\')&&P(a,z)&&(void 0===b||N(b))&&(\'loaded\'==a?kb(this.a,\'native\',b):lb(this.a,a,\'native\',b))};\nn.Z=function(a){if(\'none\'!==this.a.a.i&&\'number\'===typeof a&&!isNaN(a)){this.b.u=a;a=this.h;var b=a.a.B;null!=b&&lb(a.b,\'volumeChange\',\'native\',{mediaPlayerVolume:b,deviceVolume:a.a.u})}};Z.prototype.startSession=Z.prototype.W;Z.prototype.error=Z.prototype.error;Z.prototype.finishSession=Z.prototype.U;Z.prototype.publishAdEvent=Z.prototype.X;Z.prototype.publishImpressionEvent=Z.prototype.M;Z.prototype.publishVideoEvent=Z.prototype.Y;Z.prototype.publishMediaEvent=Z.prototype.N;\nZ.prototype.publishLoadedEvent=Z.prototype.V;Z.prototype.setNativeViewHierarchy=Z.prototype.$;Z.prototype.setState=Z.prototype.aa;Z.prototype.setDeviceVolume=Z.prototype.Z;Z.prototype.init=Z.prototype.T;function kc(){var a=W,b=lc;var c=void 0===c?I:c;this.g=a;this.a=b;this.h={};this.f={};this.c=new V;c.omid=c.omid||{};c.omid.v1_VerificationServiceCommunication=this.c;this.b=null;c&&c.addEventListener&&c.postMessage&&(this.b=new Ub(c));this.c.a=this.i.bind(this);this.b&&(this.b.a=this.j.bind(this))}function mc(a,b,c,d){Eb(a.a,b,c,d)}function nc(a,b,c,d){Db(a.a,\'downloadJavaScriptResource\')(b,c,d)}kc.prototype.j=function(a,b){this.b&&oc(this,a,b,this.b)};kc.prototype.i=function(a,b){oc(this,a,b,this.c)};\nfunction oc(a,b,c,d){function e(E){for(var X=[],pa=0;pa<arguments.length;++pa)X[pa]=arguments[pa];X=new U(f,\'response\',g,bc(g)&&cc(g)?X:JSON.stringify(X));d.b(X,c)}var f=b.b,l=b.method,g=b.version;b=dc(g,b.a);try{switch(l){case \'VerificationService.addEventListener\':var h=p(b).next().value;Za(a.g,h,e);break;case \'VerificationService.addSessionListener\':var k=p(b),m=k.next().value,v=k.next().value;ab(a.g,e,m,v);break;case \'VerificationService.sendUrl\':var B=p(b).next().value;mc(a,B,function(){return e(!0)},\nfunction(){return e(!1)});break;case \'VerificationService.setTimeout\':var x=p(b),F=x.next().value,K=x.next().value;a.h[F]=Ab(a.a,\'setTimeout\')(e,K);break;case \'VerificationService.clearTimeout\':var tc=p(b).next().value;Cb(a.a,a.h[tc]);break;case \'VerificationService.setInterval\':var Nb=p(b),uc=Nb.next().value,vc=Nb.next().value;a.f[uc]=zb(a.a,e,vc);break;case \'VerificationService.clearInterval\':var wc=p(b).next().value;Bb(a.a,a.f[wc]);break;case \'VerificationService.injectJavaScriptResource\':var xc=\np(b).next().value;nc(a,xc,function(E){return e(!0,E)},function(){return e(!1)});break;case \'VerificationService.getVersion\':p(b).next();var yc=H().c.omidJsInfo;e(yc.serviceVersion)}}catch(E){d.b(new U(f,\'error\',g,\'\\n              name: \'+E.name+\'\\n              message: \'+E.message+\'\\n              filename: \'+E.filename+\'\\n              lineNumber: \'+E.lineNumber+\'\\n              columnNumber: \'+E.columnNumber+\'\\n              stack: \'+E.stack+\'\\n              toString(): \'+E.toString()+\'\\n          \'),\nc)}};function pc(){var a=I.document.createElement(\'iframe\');a.id=\'omid_v1_present\';a.name=\'omid_v1_present\';a.style.display=\'none\';I.document.body.appendChild(a)}function qc(){var a=new MutationObserver(function(b){b.forEach(function(c){\'BODY\'===c.addedNodes[0].nodeName&&(pc(),a.disconnect())})});a.observe(I.document.documentElement,{childList:!0})};var W=new Ta,lc=new function(){var a;this.a=a=void 0===a?omidGlobal:a};new kc;var rc=new function(){},sc=new function(){},ic=new function(){this.b=W;this.c=sc;this.a=H()},zc;I?zc=I.IntersectionObserver&&(I.MutationObserver||I.ResizeObserver)?new T(I,rc,ic,W):new S(I,sc,ic,lc,W):zc=null;var Zb=zc,$b=new function(){var a=W;var b=void 0===b?I:b;this.f=a;this.a=b;this.c=H();this.b=[]},fc=new Yb,jc=new function(){var a=W,b=H();this.b=a;this.a=b};I.omidBridge=new Z;new ec;\nif(I.frames&&I.document&&!(\'omid_v1_present\'in I.frames)){var Ac;if(Ac=null==I.document.body)Ac=\'MutationObserver\'in I;Ac?qc():I.document.body?pc():I.document.write(\'<iframe style=\"display:none\" id=\"omid_v1_present\" name=\"omid_v1_present\"></iframe>\')};\n}).call(this, this);"

    invoke-static {v3, v0}, Lcom/iab/omid/library/corpmailru/ScriptInjector;->injectScriptContentIntoHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_58

    :catchall_7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OmTracker: Unable to inject script: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v8, v3, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_57

    :goto_58
    move-object v0, v13

    :cond_8d
    const-string v3, "forceWebMediaPlayback"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lwv9;->Z:Z

    iput-object v0, v2, Lwv9;->X:Ljava/lang/String;

    iget v0, v2, Lwv9;->Y:F

    float-to-double v3, v0

    const-string v0, "timeToReward"

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lwv9;->Y:F

    return-object v2

    :pswitch_6
    move-object v3, v1

    move-object v1, v2

    move-object v6, v4

    move-object/from16 v12, v23

    move-object/from16 v11, v32

    move-object/from16 v13, v33

    const/4 v5, 0x0

    new-instance v0, Lvy9;

    invoke-direct {v0, v12}, Lvy9;-><init>(Lpp9;)V

    invoke-virtual {v3, v1, v0}, Lin9;->c(Lorg/json/JSONObject;Ljia;)V

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "landscape"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_8f

    :cond_8e
    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_8f

    goto/16 :goto_61

    :cond_8f
    iget-object v3, v0, Lvy9;->X:Ljava/util/ArrayList;

    const-string v4, "imageLink"

    if-eqz v2, :cond_94

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v5

    :goto_59
    if-ge v8, v7, :cond_94

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_93

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_91

    :cond_90
    :goto_5a
    const/4 v9, 0x0

    goto :goto_5b

    :cond_91
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-lez v12, :cond_90

    if-gtz v9, :cond_92

    goto :goto_5a

    :cond_92
    invoke-static {v12, v9, v10}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v9

    :goto_5b
    if-eqz v9, :cond_93

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    :cond_94
    iget-object v2, v0, Lvy9;->Y:Ljava/util/ArrayList;

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v5

    :goto_5c
    if-ge v8, v7, :cond_99

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_98

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_96

    :cond_95
    :goto_5d
    const/4 v9, 0x0

    goto :goto_5e

    :cond_96
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-lez v12, :cond_95

    if-gtz v9, :cond_97

    goto :goto_5d

    :cond_97
    invoke-static {v12, v9, v10}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v9

    :goto_5e
    if-eqz v9, :cond_98

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_5f

    :cond_9a
    move v8, v5

    goto :goto_60

    :cond_9b
    :goto_5f
    const/4 v8, 0x1

    :goto_60
    if-eqz v8, :cond_9d

    sget-object v1, Ll6a;->p:Ll6a;

    invoke-virtual {v6, v1}, Lj8a;->a(Ll6a;)V

    goto :goto_62

    :cond_9c
    :goto_61
    sget-object v1, Ll6a;->p:Ll6a;

    invoke-virtual {v6, v1}, Lj8a;->a(Ll6a;)V

    move v8, v5

    :cond_9d
    :goto_62
    if-eqz v8, :cond_a

    return-object v0

    :goto_63
    return-object v17

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        0x3107ab -> :sswitch_3
        0x65fc90f -> :sswitch_2
        0x68f7bbb -> :sswitch_1
        0x32fe6742 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x533a80d4 -> :sswitch_7
        0x3107ab -> :sswitch_6
        0x6b0147b -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lorg/json/JSONObject;Ljia;)V
    .locals 2

    iget-object v0, p0, Lin9;->a:Lqw9;

    sget-object v1, Lks9;->d:Lks9;

    invoke-virtual {v0, p1, p2, v1}, Lqw9;->b(Lorg/json/JSONObject;Lao9;Lks9;)V

    iget-object p0, p0, Lin9;->b:Llia;

    iget-object p0, p0, Llia;->C:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p2, Ljia;->W:Z

    const-string v0, "allowBackButton"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    iput-boolean p0, p2, Ljia;->W:Z

    iget p0, p2, Ljia;->S:F

    float-to-double v0, p0

    const-string p0, "allowCloseDelay"

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p0, v0

    iput p0, p2, Ljia;->S:F

    iget p0, p2, Ljia;->T:F

    float-to-double v0, p0

    const-string p0, "allowSkipDelay"

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p0, v0

    iput p0, p2, Ljia;->T:F

    iget-boolean p0, p2, Ljia;->U:Z

    const-string v0, "allowSkip"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p2, Ljia;->U:Z

    const-string p0, "close_icon_hd"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lh14;

    invoke-direct {v0, p0}, Lxha;-><init>(Ljava/lang/String;)V

    iput-object v0, p2, Ljia;->R:Lh14;

    :cond_1
    :try_start_0
    const-string p0, "featureFlags"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "interstitial"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    :try_start_1
    const-string p1, "isHitMapEnabled"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_3
    const/4 p0, 0x0

    :goto_1
    :try_start_2
    iget-object p1, p2, Lao9;->Q:Lpp9;

    iput-boolean p0, p1, Lpp9;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_2
    return-void
.end method
