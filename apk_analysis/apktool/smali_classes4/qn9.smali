.class public final Lqn9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llia;

.field public b:I


# direct methods
.method public constructor <init>(Llia;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lqn9;->b:I

    iput-object p1, p0, Lqn9;->a:Llia;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;FLks9;)Lm2a;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "isImpression"

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v6}, Ly14;->y(Ljava/lang/String;)Z

    move-result v7

    const/16 v12, 0xbbf

    const/4 v13, 0x0

    if-nez v7, :cond_0

    invoke-virtual {v1, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v0

    invoke-virtual {v0, v12, v6}, Lks9;->c(ILjava/lang/String;)V

    return-object v13

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v14, 0xbbe

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v0

    invoke-virtual {v0, v14}, Lks9;->b(I)V

    return-object v13

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v7, "playheadReachedValue"

    const/4 v15, 0x1

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v2, v8

    goto :goto_1

    :sswitch_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "playheadViewabilityValue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v15

    goto :goto_1

    :sswitch_2
    const-string v2, "orientation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_1
    const/high16 v9, -0x40800000    # -1.0f

    const-string v10, "pvalue"

    const/16 v16, 0x0

    const-string v4, "value"

    const/high16 v18, 0x42c80000    # 100.0f

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lm2a;

    invoke-direct {v1, v3, v6, v5}, Lm2a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_8

    :pswitch_0
    new-instance v2, Lk8a;

    invoke-direct {v2, v7, v6, v11}, Lm2a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput v9, v2, Lk8a;->f:F

    iput v9, v2, Lk8a;->g:F

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v2, Lk8a;->g:F

    float-to-double v5, v3

    invoke-virtual {v0, v10, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v3, v5

    cmpl-float v5, v3, v16

    if-ltz v5, :cond_6

    cmpg-float v5, v3, v18

    if-gtz v5, :cond_6

    cmpl-float v1, p2, v16

    if-lez v1, :cond_5

    mul-float v3, v3, p2

    div-float v3, v3, v18

    iput v3, v2, Lk8a;->f:F

    :goto_2
    move-object v13, v2

    goto :goto_3

    :cond_5
    iput v3, v2, Lk8a;->g:F

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v10}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v12, v3}, Lks9;->c(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v2, Lk8a;->f:F

    float-to-double v5, v3

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v3, v5

    cmpl-float v5, v3, v16

    if-ltz v5, :cond_8

    iput v3, v2, Lk8a;->f:F

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lks9;->c(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {v1, v12}, Lks9;->b(I)V

    :goto_3
    move-object v1, v13

    goto/16 :goto_8

    :pswitch_1
    const-string v2, "viewablePercent"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_14

    const/16 v3, 0x64

    if-le v7, v3, :cond_a

    goto/16 :goto_7

    :cond_a
    const-string v2, "target"

    invoke-static {v0, v2}, Ly14;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object/from16 v8, p0

    iget v2, v8, Lqn9;->b:I

    move v8, v2

    goto :goto_4

    :cond_b
    const-string v8, "video"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x2

    goto :goto_4

    :cond_c
    const-string v8, "banner"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v8, v15

    :goto_4
    const-string v2, "ovv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v10

    move-object v10, v6

    move v6, v5

    new-instance v5, Lht9;

    move/from16 v17, v9

    const-string v9, "ovvStat"

    move-object v13, v3

    move/from16 v3, v17

    invoke-direct/range {v5 .. v10}, Lo2a;-><init>(ZIILjava/lang/String;Ljava/lang/String;)V

    iput v3, v5, Lht9;->i:F

    iput v3, v5, Lht9;->j:F

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Lht9;->h:Z

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v5, Lht9;->j:F

    float-to-double v2, v2

    invoke-virtual {v0, v13, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v2, v16

    if-ltz v3, :cond_e

    cmpg-float v3, v2, v18

    if-gtz v3, :cond_e

    cmpl-float v1, p2, v16

    if-lez v1, :cond_d

    mul-float v2, v2, p2

    div-float v2, v2, v18

    iput v2, v5, Lht9;->i:F

    :goto_5
    move-object v13, v5

    goto :goto_3

    :cond_d
    iput v2, v5, Lht9;->j:F

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v5, Lht9;->i:F

    float-to-double v2, v2

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v2, v16

    if-ltz v3, :cond_10

    iput v2, v5, Lht9;->i:F

    goto :goto_5

    :cond_f
    move-object v10, v6

    move v6, v5

    :cond_10
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-string v4, "duration"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpg-float v3, v2, v16

    if-gez v3, :cond_12

    invoke-virtual {v1, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1, v14}, Lks9;->f(I)V

    goto :goto_6

    :cond_11
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lks9;->g(ILjava/lang/String;)V

    :goto_6
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_12
    const-string v1, "mrc"

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    new-instance v5, Lsna;

    move v11, v6

    move-object v6, v10

    move v10, v8

    move v8, v7

    move v7, v2

    invoke-direct/range {v5 .. v11}, Lsna;-><init>(Ljava/lang/String;FIZIZ)V

    goto :goto_5

    :cond_13
    invoke-virtual {v1, v2}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    invoke-virtual {v1, v12, v3}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_6

    :cond_14
    :goto_7
    invoke-virtual {v1, v2}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_6

    :pswitch_2
    move-object v10, v6

    const-string v2, "view"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v13, Lhq9;

    invoke-direct {v13, v10, v1}, Lhq9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {v1, v2}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    invoke-virtual {v1, v14}, Lks9;->f(I)V

    goto :goto_6

    :goto_8
    if-eqz v1, :cond_16

    iget-boolean v2, v1, Lm2a;->e:Z

    const-string v3, "needDecodeUrl"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lm2a;->e:Z

    const-string v2, "adsLightType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iput-object v0, v1, Lm2a;->c:Ljava/lang/String;

    :cond_16
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x55cd0a30 -> :sswitch_2
        0x63803cc0 -> :sswitch_1
        0x6a94c473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ln4a;Lorg/json/JSONObject;F)V
    .locals 1

    sget-object v0, Lks9;->d:Lks9;

    invoke-virtual {p0, p1, p2, p3, v0}, Lqn9;->c(Ln4a;Lorg/json/JSONObject;FLks9;)V

    return-void
.end method

.method public final c(Ln4a;Lorg/json/JSONObject;FLks9;)V
    .locals 4

    iget-object v0, p0, Lqn9;->a:Llia;

    iget-object v0, v0, Llia;->d:Ln4a;

    invoke-virtual {p1, v0, p3}, Ln4a;->d(Ln4a;F)V

    const-string v0, "statistics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p4, v0}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v0}, Lks9;->d(I)Lks9;

    move-result-object v3

    if-nez v2, :cond_2

    const/16 v2, 0xbbf

    invoke-virtual {v3, v2}, Lks9;->f(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p3, v3}, Lqn9;->a(Lorg/json/JSONObject;FLks9;)Lm2a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ln4a;->c(Lm2a;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
