.class public final Lyads/qj4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pt3;

.field public final b:Lyads/wk;

.field public final c:Lyads/v46;

.field public final d:Lyads/ue3;

.field public final e:Lyads/jo1;

.field public final f:Lyads/sn0;

.field public final g:Lyads/ik4;

.field public final h:Lyads/ek5;

.field public final i:Lyads/hy3;

.field public final j:Lyads/rb;

.field public final k:Lyads/qe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 9

    new-instance v0, Lyads/pt3;

    invoke-direct {v0, p1, p2}, Lyads/pt3;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance v1, Lyads/wk;

    const/16 v2, 0x8

    invoke-direct {v1, p1, p2, v0, v2}, Lyads/wk;-><init>(Landroid/content/Context;Lyads/q84;Lyads/pt3;I)V

    new-instance p1, Lyads/v46;

    invoke-direct {p1}, Lyads/v46;-><init>()V

    new-instance v2, Lyads/ue3;

    invoke-direct {v2}, Lyads/ue3;-><init>()V

    new-instance v3, Lyads/jo1;

    invoke-direct {v3, p2}, Lyads/jo1;-><init>(Lyads/q84;)V

    new-instance v4, Lyads/sn0;

    invoke-direct {v4}, Lyads/sn0;-><init>()V

    new-instance v5, Lyads/ik4;

    invoke-direct {v5}, Lyads/ik4;-><init>()V

    new-instance v6, Lyads/ek5;

    invoke-direct {v6}, Lyads/ek5;-><init>()V

    new-instance v7, Lyads/hy3;

    invoke-direct {v7}, Lyads/hy3;-><init>()V

    new-instance v8, Lyads/rb;

    invoke-direct {v8, p2}, Lyads/rb;-><init>(Lyads/q84;)V

    new-instance p2, Lyads/qe;

    invoke-direct {p2}, Lyads/qe;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qj4;->a:Lyads/pt3;

    iput-object v1, p0, Lyads/qj4;->b:Lyads/wk;

    iput-object p1, p0, Lyads/qj4;->c:Lyads/v46;

    iput-object v2, p0, Lyads/qj4;->d:Lyads/ue3;

    iput-object v3, p0, Lyads/qj4;->e:Lyads/jo1;

    iput-object v4, p0, Lyads/qj4;->f:Lyads/sn0;

    iput-object v5, p0, Lyads/qj4;->g:Lyads/ik4;

    iput-object v6, p0, Lyads/qj4;->h:Lyads/ek5;

    iput-object v7, p0, Lyads/qj4;->i:Lyads/hy3;

    iput-object v8, p0, Lyads/qj4;->j:Lyads/rb;

    iput-object p2, p0, Lyads/qj4;->k:Lyads/qe;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/ck5;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1952
    const-string v0, "delay"

    const-string v3, "url"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 1953
    invoke-static {v2, v4}, Lyads/rj4;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 1954
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1955
    iget-object v0, v1, Lyads/qj4;->c:Lyads/v46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    .line 1956
    :try_start_0
    const-string v0, "visibilityPercent"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1957
    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 1958
    :goto_0
    nop

    instance-of v4, v0, Lk57$a;

    if-eqz v4, :cond_0

    move-object v0, v5

    .line 1959
    :cond_0
    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 1960
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_1
    move-wide v11, v6

    goto :goto_2

    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1

    :goto_2
    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    .line 1961
    invoke-static/range {v11 .. v16}, Lkx6;->c(DDD)D

    move-result-wide v6

    double-to-int v7, v6

    .line 1962
    :try_start_1
    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 1963
    new-instance v2, Lk57$a;

    invoke-direct {v2, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1964
    :goto_3
    nop

    instance-of v2, v0, Lk57$a;

    if-eqz v2, :cond_2

    move-object v0, v5

    .line 1965
    :cond_2
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1966
    :try_start_2
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/dk5;->valueOf(Ljava/lang/String;)Lyads/dk5;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 1967
    new-instance v2, Lk57$a;

    invoke-direct {v2, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1968
    :goto_4
    nop

    instance-of v2, v0, Lk57$a;

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    move-object v5, v0

    .line 1969
    :goto_5
    check-cast v5, Lyads/dk5;

    :cond_4
    if-nez v5, :cond_5

    .line 1970
    iget-object v0, v1, Lyads/qj4;->h:Lyads/ek5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1971
    const-string v0, "/rtbcount/"

    .line 1972
    invoke-static {v10, v0, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1973
    sget-object v5, Lyads/dk5;->c:Lyads/dk5;

    :cond_5
    :goto_6
    move-object v11, v5

    goto :goto_7

    .line 1974
    :cond_6
    const-string v0, "/count/"

    .line 1975
    invoke-static {v10, v0, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1976
    sget-object v5, Lyads/dk5;->b:Lyads/dk5;

    goto :goto_6

    .line 1977
    :cond_7
    sget-object v5, Lyads/dk5;->d:Lyads/dk5;

    goto :goto_6

    .line 1978
    :goto_7
    new-instance v6, Lyads/ck5;

    invoke-direct/range {v6 .. v11}, Lyads/ck5;-><init>(IJLjava/lang/String;Lyads/dk5;)V

    return-object v6

    .line 1979
    :cond_8
    const-string v0, "Native Ad json has not required attributes"

    invoke-static {v0}, Lqg;->g(Ljava/lang/String;)V

    return-object v5
.end method

.method public final a(Ljava/lang/String;Lyads/yo;)Lyads/vg4;
    .locals 57

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "native"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ads"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lyads/rj4;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    const-string v5, "Native Ad json has not required attributes"

    if-eqz v0, :cond_53

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    sget-object v8, Lkx2;->b:Lkx2;

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v15, v12

    move-object/from16 v16, v15

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v14, "ImpressionDataParser"

    const/16 p1, 0x0

    const-string v6, "Json has not required attributes"

    move-object/from16 v20, v7

    const-string v7, "assets"

    move-object/from16 v21, v8

    const-string v8, "showNotices"

    move/from16 v22, v9

    const-string v9, "impressionData"

    move-object/from16 v23, v10

    const-string v10, "renderTrackingUrls"

    move-object/from16 v24, v11

    const-string v11, "null"

    const/16 v25, 0x0

    sparse-switch v22, :sswitch_data_0

    :goto_1
    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    goto/16 :goto_36

    :sswitch_0
    const-string v6, "designs"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v2, Lyads/yo;->b:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move/from16 v8, v25

    :goto_2
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, v1, Lyads/qj4;->f:Lyads/sn0;

    invoke-virtual {v10, v9}, Lyads/sn0;->a(Lorg/json/JSONObject;)Lyads/mn0;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v10, v1, Lyads/qj4;->e:Lyads/jo1;

    invoke-virtual {v10, v9, v0}, Lyads/jo1;->a(Lyads/mn0;Z)Lyads/fo1;

    move-result-object v9

    goto :goto_3

    :cond_1
    move-object/from16 v9, p1

    :goto_3
    if-eqz v9, :cond_2

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    goto :goto_0

    :sswitch_1
    const-string v6, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v27, v7

    move-object/from16 v28, v27

    move/from16 v29, v25

    move/from16 v30, v29

    :cond_5
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto :goto_5

    :sswitch_2
    const-string v9, "mediaAssetImageFallback"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_5

    :sswitch_3
    const-string v9, "isLoopingVideo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v30

    goto :goto_5

    :sswitch_4
    const-string v9, "multiBannerAutoScrollInterval"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    goto :goto_5

    :sswitch_5
    const-string v9, "highlightingEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    goto :goto_5

    :sswitch_6
    const-string v9, "templateType"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    move-object/from16 v27, v8

    goto :goto_5

    :cond_b
    invoke-static {v5}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_c
    if-eqz v7, :cond_d

    iget-object v0, v1, Lyads/qj4;->i:Lyads/hy3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "width"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "height"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lyads/ql5;

    invoke-direct {v7, v0, v6}, Lyads/ql5;-><init>(II)V

    move-object/from16 v31, v7

    goto :goto_6

    :cond_d
    move-object/from16 v31, p1

    :goto_6
    new-instance v26, Lyads/uj5;

    invoke-direct/range {v26 .. v31}, Lyads/uj5;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZLyads/ql5;)V

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v18, v26

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :cond_e
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v7, v25

    :goto_7
    if-ge v7, v6, :cond_3

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :sswitch_8
    const-string v6, "ver"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    move-object/from16 v17, v0

    goto/16 :goto_4

    :cond_10
    invoke-static {v5}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :sswitch_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    :cond_11
    move-object/from16 v22, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v13

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v27, v4

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v28, v15

    move/from16 v15, v25

    :goto_8
    if-ge v15, v4, :cond_3f

    move/from16 v23, v4

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "adType"

    move-object/from16 v29, v13

    const-string v13, "link"

    move/from16 v30, v15

    filled-new-array {v0, v7, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lyads/rj4;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3e

    iget-object v15, v1, Lyads/qj4;->g:Lyads/ik4;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_3d

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3d

    invoke-static {}, Lyads/f95;->values()[Lyads/f95;

    move-result-object v15

    move-object/from16 v31, v7

    array-length v7, v15

    move-object/from16 v32, v15

    move/from16 v15, v25

    :goto_9
    if-ge v15, v7, :cond_13

    move/from16 v33, v7

    aget-object v7, v32, v15

    move/from16 v34, v15

    iget-object v15, v7, Lyads/f95;->b:Ljava/lang/String;

    invoke-static {v15, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v15, v34, 0x1

    move/from16 v7, v33

    goto :goto_9

    :cond_13
    move-object/from16 v7, p1

    :goto_a
    if-eqz v7, :cond_3c

    iget-object v0, v1, Lyads/qj4;->b:Lyads/wk;

    invoke-virtual {v0, v4, v2}, Lyads/wk;->a(Lorg/json/JSONObject;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v36

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v32, v3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v33

    move-object/from16 v34, p1

    move-object/from16 v35, v34

    move-object/from16 v37, v35

    move-object/from16 v38, v37

    move-object/from16 v40, v38

    move-object/from16 v41, v40

    move-object/from16 v47, v41

    move-object/from16 v46, v12

    move-object/from16 v12, v47

    :goto_b
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v39

    move-object/from16 v42, v12

    const-string v12, ""

    sparse-switch v39, :sswitch_data_2

    :goto_c
    move-object/from16 v39, v4

    move-object/from16 v49, v5

    move-object/from16 v48, v10

    goto/16 :goto_1f

    :sswitch_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move-object/from16 v48, v10

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v10

    move-object/from16 v49, v8

    move/from16 v8, v25

    :goto_d
    if-ge v8, v10, :cond_15

    move/from16 v39, v10

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v39

    goto :goto_d

    :cond_15
    invoke-virtual {v15, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_16
    :goto_e
    move-object/from16 v39, v4

    move-object/from16 v8, v49

    :goto_f
    move-object/from16 v49, v5

    goto/16 :goto_1f

    :sswitch_b
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "analyticsParameters"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    :goto_10
    goto :goto_e

    :cond_17
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v8, v1, Lyads/qj4;->k:Lyads/qe;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    invoke-static {v8}, Ldp7;->f(Ljava/util/Iterator;)Lzo7;

    move-result-object v8

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Llx1;

    invoke-virtual {v8}, Llx1;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v39, v8

    move-object v8, v12

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v10, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v39

    goto :goto_11

    :cond_18
    move-object/from16 v47, v10

    :goto_12
    move-object/from16 v12, v42

    :goto_13
    move-object/from16 v10, v48

    move-object/from16 v8, v49

    goto/16 :goto_b

    :sswitch_c
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "showNotice"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lyads/qj4;->a(Lorg/json/JSONObject;)Lyads/ck5;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :sswitch_d
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "renderTrackingUrl"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v8, v1, Lyads/qj4;->c:Lyads/v46;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :sswitch_e
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v8, v1, Lyads/qj4;->a:Lyads/pt3;

    invoke-virtual {v8, v0, v2}, Lyads/pt3;->a(Lorg/json/JSONObject;Lyads/yo;)Lyads/ot3;

    move-result-object v40

    goto :goto_12

    :sswitch_f
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "info"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v4, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    :goto_14
    goto :goto_12

    :cond_1d
    move-object/from16 v38, p1

    goto :goto_12

    :sswitch_10
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "crid"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    goto :goto_14

    :cond_1f
    move-object/from16 v34, p1

    goto/16 :goto_12

    :sswitch_11
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "cid"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_10

    :cond_20
    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    goto :goto_14

    :cond_21
    move-object/from16 v35, p1

    goto/16 :goto_12

    :sswitch_12
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_10

    :cond_22
    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    goto :goto_14

    :cond_23
    move-object/from16 v37, p1

    goto/16 :goto_12

    :sswitch_13
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_10

    :cond_24
    iget-object v0, v1, Lyads/qj4;->d:Lyads/ue3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lyads/zq3;->a:Lxb4;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_25

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    new-instance v8, Lyads/j5;

    invoke-direct {v8, v0}, Lyads/j5;-><init>(Ljava/lang/String;)V

    move-object/from16 v41, v8

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto :goto_15

    :cond_25
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v41, p1

    goto/16 :goto_12

    :sswitch_14
    move-object/from16 v49, v8

    move-object/from16 v48, v10

    const-string v8, "additionalInfo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_10

    :cond_26
    iget-object v10, v1, Lyads/qj4;->j:Lyads/rb;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "offerId"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v54

    sget-object v8, Lyads/f95;->f:Lyads/f95;

    if-ne v7, v8, :cond_28

    if-eqz v54, :cond_27

    goto :goto_16

    :cond_27
    new-instance v0, Lyads/rg4;

    invoke-direct {v0, v5}, Lyads/rg4;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1d

    :cond_28
    :goto_16
    const-string v8, "additionalText"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v55

    const-string v8, "performanceOpeningUrl"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_29

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_29

    move-object/from16 v56, v8

    goto :goto_17

    :cond_29
    move-object/from16 v56, p1

    :goto_17
    sget-object v8, Lyads/zq3;->a:Lxb4;

    const-string v8, "attributes"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2a
    move-object/from16 v0, p1

    :goto_18
    if-eqz v0, :cond_2b

    invoke-static {v0}, Lyads/zq3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_19

    :cond_2b
    move-object/from16 v0, p1

    :goto_19
    if-eqz v0, :cond_2c

    const-string v8, "campaignId"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v52, v8

    goto :goto_1a

    :cond_2c
    move-object/from16 v52, p1

    :goto_1a
    if-eqz v0, :cond_2d

    const-string v8, "bannerId"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v51, v8

    goto :goto_1b

    :cond_2d
    move-object/from16 v51, p1

    :goto_1b
    if-eqz v0, :cond_2e

    const-string v8, "placeId"

    invoke-static {v8, v0}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v53, v0

    goto :goto_1c

    :cond_2e
    move-object/from16 v53, p1

    :goto_1c
    new-instance v50, Lyads/qb;

    invoke-direct/range {v50 .. v56}, Lyads/qb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, v48

    move-object/from16 v8, v49

    move-object/from16 v12, v50

    goto/16 :goto_b

    :goto_1d
    iget-object v8, v10, Lyads/rb;->a:Lyads/q84;

    const-string v10, "Failed to create AdInfo"

    invoke-virtual {v8, v10, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v12, p1

    goto/16 :goto_13

    :sswitch_15
    move-object/from16 v48, v10

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    move-object/from16 v39, v4

    goto/16 :goto_f

    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    move-object/from16 v39, v4

    move/from16 v4, v25

    :goto_1e
    if-ge v4, v12, :cond_30

    move-object/from16 v49, v5

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lyads/qj4;->a(Lorg/json/JSONObject;)Lyads/ck5;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v49

    goto :goto_1e

    :cond_30
    move-object/from16 v49, v5

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1f

    :cond_31
    move-object/from16 v39, v4

    move-object/from16 v49, v5

    move-object/from16 v48, v10

    move-object/from16 v42, v12

    :goto_1f
    move-object/from16 v4, v39

    move-object/from16 v12, v42

    move-object/from16 v10, v48

    move-object/from16 v5, v49

    goto/16 :goto_b

    :cond_32
    move-object/from16 v49, v5

    move-object/from16 v48, v10

    move-object/from16 v42, v12

    new-instance v50, Lyads/s70;

    move-object/from16 v4, v42

    if-eqz v42, :cond_34

    iget-object v0, v4, Lyads/qb;->a:Ljava/lang/String;

    if-nez v0, :cond_33

    goto :goto_20

    :cond_33
    move-object/from16 v51, v0

    goto :goto_21

    :cond_34
    :goto_20
    move-object/from16 v51, v34

    :goto_21
    if-eqz v4, :cond_36

    iget-object v0, v4, Lyads/qb;->b:Ljava/lang/String;

    if-nez v0, :cond_35

    goto :goto_22

    :cond_35
    move-object/from16 v52, v0

    goto :goto_23

    :cond_36
    :goto_22
    move-object/from16 v52, v35

    :goto_23
    if-eqz v4, :cond_37

    iget-object v0, v4, Lyads/qb;->c:Ljava/lang/String;

    move-object/from16 v53, v0

    goto :goto_24

    :cond_37
    move-object/from16 v53, p1

    :goto_24
    if-eqz v4, :cond_38

    iget-object v0, v4, Lyads/qb;->d:Ljava/lang/String;

    move-object/from16 v54, v0

    goto :goto_25

    :cond_38
    move-object/from16 v54, p1

    :goto_25
    if-eqz v4, :cond_39

    iget-object v0, v4, Lyads/qb;->f:Ljava/lang/String;

    move-object/from16 v55, v0

    goto :goto_26

    :cond_39
    move-object/from16 v55, p1

    :goto_26
    invoke-direct/range {v50 .. v55}, Lyads/s70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v34, Lyads/sd4;

    if-eqz v4, :cond_3a

    iget-object v0, v4, Lyads/qb;->e:Ljava/lang/String;

    move-object/from16 v39, v0

    goto :goto_27

    :cond_3a
    move-object/from16 v39, p1

    :goto_27
    invoke-static {v15}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v42

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v43

    new-instance v0, Lyads/ai4;

    move-object/from16 v10, v47

    invoke-direct {v0, v10}, Lyads/ai4;-><init>(Ljava/util/LinkedHashMap;)V

    move-object/from16 v45, v0

    move-object/from16 v35, v7

    move-object/from16 v44, v50

    invoke-direct/range {v34 .. v45}, Lyads/sd4;-><init>(Lyads/f95;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/ot3;Lyads/j5;Ljava/util/List;Ljava/util/List;Lyads/s70;Lyads/ai4;)V

    move-object/from16 v0, v34

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    if-eqz v40, :cond_3b

    move-object/from16 v3, v46

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v30, 0x1

    move-object v12, v3

    move/from16 v4, v23

    move-object/from16 v13, v29

    move-object/from16 v7, v31

    move-object/from16 v3, v32

    move-object/from16 v10, v48

    move-object/from16 v5, v49

    goto/16 :goto_8

    :cond_3b
    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_3c
    move-object/from16 v49, v5

    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_3d
    move-object/from16 v49, v5

    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_3e
    move-object/from16 v49, v5

    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_3f
    move-object/from16 v32, v3

    move-object v3, v12

    move-object v10, v3

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v24

    move-object/from16 v13, v26

    move-object/from16 v4, v27

    move-object/from16 v15, v28

    move-object/from16 v3, v32

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v32, v3

    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    move-object/from16 v3, v32

    goto/16 :goto_36

    :cond_40
    iget-object v0, v1, Lyads/qj4;->d:Lyads/ue3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    sget-object v0, Lyads/zq3;->a:Lxb4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v3, v32

    :try_start_3
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v13, Lyads/j5;

    invoke-direct {v13, v0}, Lyads/j5;-><init>(Ljava/lang/String;)V

    :goto_28
    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    :goto_29
    move-object/from16 v4, v27

    move-object/from16 v15, v28

    move-object/from16 v5, v49

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_2a

    :cond_41
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_3
    move-exception v0

    move-object/from16 v3, v32

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p1

    goto :goto_28

    :sswitch_17
    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object v4, v7

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_36

    :cond_42
    iget-object v0, v1, Lyads/qj4;->b:Lyads/wk;

    invoke-virtual {v0, v3, v2}, Lyads/wk;->a(Lorg/json/JSONObject;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    :goto_2b
    move-object/from16 v13, v26

    goto :goto_29

    :sswitch_18
    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    const-string v4, "ad_pod"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_36

    :cond_43
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "items"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v7, v25

    :goto_2c
    if-ge v7, v5, :cond_4c

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v11, "skip"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_48

    const-string v12, "transition_strategy"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lyads/fm5;->values()[Lyads/fm5;

    move-result-object v13

    array-length v14, v13

    move/from16 v15, v25

    :goto_2d
    if-ge v15, v14, :cond_45

    aget-object v2, v13, v15

    move-object/from16 v19, v4

    iget-object v4, v2, Lyads/fm5;->b:Ljava/lang/String;

    invoke-static {v4, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_2e

    :cond_44
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v19

    goto :goto_2d

    :cond_45
    move-object/from16 v19, v4

    move-object/from16 v2, p1

    :goto_2e
    const-string v4, "visibility"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lyads/hm5;->values()[Lyads/hm5;

    move-result-object v12

    array-length v13, v12

    move/from16 v14, v25

    :goto_2f
    if-ge v14, v13, :cond_47

    aget-object v15, v12, v14

    move/from16 v29, v5

    iget-object v5, v15, Lyads/hm5;->b:Ljava/lang/String;

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_30

    :cond_46
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v29

    goto :goto_2f

    :cond_47
    move/from16 v29, v5

    move-object/from16 v15, p1

    :goto_30
    const-string v4, "delay"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v11, Lyads/v6;

    invoke-direct {v11, v2, v15, v4, v5}, Lyads/v6;-><init>(Lyads/fm5;Lyads/hm5;J)V

    goto :goto_31

    :cond_48
    move-object/from16 v19, v4

    move/from16 v29, v5

    move-object/from16 v11, p1

    :goto_31
    const-string v2, "transition_policy"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lyads/w6;->values()[Lyads/w6;

    move-result-object v4

    array-length v5, v4

    move/from16 v8, v25

    :goto_32
    if-ge v8, v5, :cond_4a

    aget-object v12, v4, v8

    iget-object v13, v12, Lyads/w6;->b:Ljava/lang/String;

    invoke-static {v13, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    goto :goto_33

    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_4a
    move-object/from16 v12, p1

    :goto_33
    new-instance v2, Lyads/u6;

    invoke-direct {v2, v9, v10, v11, v12}, Lyads/u6;-><init>(JLyads/v6;Lyads/w6;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v19

    move/from16 v5, v29

    goto/16 :goto_2c

    :cond_4b
    move-object/from16 v6, v21

    :cond_4c
    const-string v2, "closable_ad_position"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_4d

    move/from16 v4, v25

    :cond_4d
    const-string v5, "reward_ad_position"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Lyads/n6;

    invoke-direct {v4, v6, v2, v0}, Lyads/n6;-><init>(Ljava/util/List;II)V

    move-object/from16 v2, p2

    move-object/from16 v19, v4

    :goto_34
    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    goto/16 :goto_2b

    :sswitch_19
    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_36

    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v5, v25

    :goto_35
    if-ge v5, v4, :cond_4f

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lyads/qj4;->a(Lorg/json/JSONObject;)Lyads/ck5;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_4f
    move-object/from16 v2, p2

    move-object/from16 v16, v0

    goto :goto_34

    :cond_50
    move-object/from16 v27, v4

    move-object/from16 v49, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    const/16 p1, 0x0

    :goto_36
    move-object/from16 v2, p2

    goto :goto_34

    :cond_51
    move-object/from16 v49, v5

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v28, v15

    const/16 p1, 0x0

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Lyads/f75;->c:Lyads/f75;

    const-string v1, "status"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lyads/vg4;

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v13, v26

    move-object/from16 v15, v28

    invoke-direct/range {v9 .. v19}, Lyads/vg4;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/j5;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lyads/uj5;Lyads/n6;)V

    return-object v9

    :cond_52
    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_53
    move-object/from16 v49, v5

    const/16 p1, 0x0

    invoke-static/range {v49 .. v49}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69f1e522 -> :sswitch_19
        -0x54cbdbd7 -> :sswitch_18
        -0x53ef8c7d -> :sswitch_17
        -0x6c936ad -> :sswitch_16
        0x178b0 -> :sswitch_9
        0x1c7a3 -> :sswitch_8
        0x4eb92cf1 -> :sswitch_7
        0x5582bc23 -> :sswitch_1
        0x5cce7675 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a2bfd2c -> :sswitch_6
        0x161c84b3 -> :sswitch_5
        0x509a04e6 -> :sswitch_4
        0x757bfea7 -> :sswitch_3
        0x78ef2f51 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x69f1e522 -> :sswitch_15
        -0x3a129a8b -> :sswitch_14
        -0x6c936ad -> :sswitch_13
        0xd1b -> :sswitch_12
        0x180be -> :sswitch_11
        0x2eb9ca -> :sswitch_10
        0x3164ae -> :sswitch_f
        0x32affa -> :sswitch_e
        0x1b504bc2 -> :sswitch_d
        0x25df6c35 -> :sswitch_c
        0x31b00a10 -> :sswitch_b
        0x4eb92cf1 -> :sswitch_a
    .end sparse-switch
.end method
