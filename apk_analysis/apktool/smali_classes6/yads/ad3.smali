.class public final Lyads/ad3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v46;

.field public final b:Lyads/ao5;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/v46;

    invoke-direct {v0}, Lyads/v46;-><init>()V

    new-instance v1, Lyads/ao5;

    invoke-direct {v1}, Lyads/ao5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ad3;->a:Lyads/v46;

    iput-object v1, p0, Lyads/ad3;->b:Lyads/ao5;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/rd3;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v3, "h"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lyads/ad3;->a:Lyads/v46;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "url"

    invoke-static {v6, v1}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "smartCenterSettings"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v0, v0, Lyads/ad3;->b:Lyads/ao5;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ColorWizButton"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const-string v0, "ColorWizButtonText"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_1

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const-string v0, "ColorWizBack"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_2

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const-string v0, "ColorWizBackRight"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_3

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    const-string v0, "backgroundColors"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "smart-center"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "smart-centers"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v10, "y"

    const-string v15, "x"

    if-eqz v8, :cond_4

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v18, v4

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v5

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v20, v6

    new-instance v6, Lyads/rn5;

    invoke-direct {v6, v9, v4, v5, v8}, Lyads/rn5;-><init>(IIII)V

    move-object/from16 v16, v6

    goto :goto_4

    :cond_4
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    const/16 v16, 0x0

    :goto_4
    if-eqz v0, :cond_9

    const-string v4, "top"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    const-string v5, "right"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    const-string v6, "left"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_7

    check-cast v6, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    const-string v8, "bottom"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_8

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    new-instance v8, Lyads/pn;

    invoke-direct {v8, v4, v5, v6, v0}, Lyads/pn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    :goto_9
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lkx6;->n(II)Ly74;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lw74;->b()Lx74;

    move-result-object v0

    :goto_a
    iget-boolean v5, v0, Lx74;->d:Z

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lx74;->nextInt()I

    move-result v5

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 p0, v0

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v17, v2

    new-instance v2, Lyads/rn5;

    invoke-direct {v2, v6, v9, v0, v5}, Lyads/rn5;-><init>(IIII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    goto :goto_a

    :cond_a
    move-object/from16 v17, v4

    goto :goto_b

    :cond_b
    const/16 v17, 0x0

    :goto_b
    new-instance v10, Lyads/zn5;

    move-object v15, v8

    invoke-direct/range {v10 .. v17}, Lyads/zn5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/pn;Lyads/rn5;Ljava/util/ArrayList;)V

    move-object v8, v10

    goto :goto_c

    :cond_c
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    const/4 v8, 0x0

    :goto_c
    const-string v0, "sizeType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    move-object v7, v0

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    const-string v0, "preload"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v0, "preview"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    move-object v10, v0

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    new-instance v3, Lyads/rd3;

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    invoke-direct/range {v3 .. v10}, Lyads/rd3;-><init>(IILjava/lang/String;Ljava/lang/String;Lyads/zn5;ZLjava/lang/String;)V

    return-object v3
.end method
