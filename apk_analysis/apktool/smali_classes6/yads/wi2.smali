.class public final Lyads/wi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wi2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    check-cast v9, Lyads/yi2;

    new-instance v10, Lyads/si2;

    iget-object v2, v9, Lyads/yi2;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/wi2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->T2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->R2:Lcl4;

    const-string v4, "download_callbacks"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lyads/nc1;

    iget-object v2, v9, Lyads/yi2;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/xi2;->a:Lyads/xr2;

    const-string v4, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v2

    :goto_0
    iget-object v2, v9, Lyads/yi2;->c:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v5, "log_id"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v16

    iget-object v2, v9, Lyads/yi2;->d:Lyads/zw2;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/xi2;->e:Lyads/l66;

    sget-object v8, Lyads/xi2;->b:Lyads/xr2;

    move-object v6, v5

    move-object v5, v4

    const-string v4, "log_limit"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object v7, v5

    move-object v11, v6

    if-nez v2, :cond_1

    move-object/from16 v17, v8

    goto :goto_1

    :cond_1
    move-object/from16 v17, v2

    :goto_1
    iget-object v2, v9, Lyads/yi2;->e:Lyads/zw2;

    const-string v4, "payload"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    iget-object v2, v9, Lyads/yi2;->f:Lyads/zw2;

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    move-object v6, v5

    move-object v5, v4

    const-string v4, "referer"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v18

    move-object v8, v6

    move-object v6, v5

    iget-object v2, v9, Lyads/yi2;->g:Lyads/zw2;

    const-string v4, "scope_id"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    iget-object v1, v9, Lyads/yi2;->h:Lyads/zw2;

    iget-object v0, v0, Lyads/wi2;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->d1:Lcl4;

    iget-object v5, v0, Lyads/tq3;->b1:Lcl4;

    const-string v3, "typed"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lyads/ry0;

    iget-object v1, v9, Lyads/yi2;->i:Lyads/zw2;

    const-string v3, "url"

    move-object v4, v6

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v8

    iget-object v1, v9, Lyads/yi2;->j:Lyads/zw2;

    sget-object v6, Lyads/xi2;->f:Lyads/l66;

    move-object v4, v7

    sget-object v7, Lyads/xi2;->c:Lyads/xr2;

    const-string v3, "visibility_duration"

    move-object v5, v11

    invoke-static/range {v0 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v20, v7

    goto :goto_2

    :cond_2
    move-object/from16 v20, v1

    :goto_2
    iget-object v1, v9, Lyads/yi2;->k:Lyads/zw2;

    sget-object v6, Lyads/xi2;->g:Lyads/l66;

    sget-object v7, Lyads/xi2;->d:Lyads/xr2;

    const-string v3, "visibility_percentage"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v21, v7

    :goto_3
    move-object v11, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v8

    goto :goto_4

    :cond_3
    move-object/from16 v21, v0

    goto :goto_3

    :goto_4
    invoke-direct/range {v10 .. v21}, Lyads/si2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lyads/ry0;Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v10
.end method
