.class public final Lyads/hc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hc1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    new-instance v8, Lyads/gc1;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/kc1;->e:Lyads/l66;

    sget-object v7, Lyads/kc1;->a:Lyads/xr2;

    const-string v3, "disappear_duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v9, v4

    move-object v10, v5

    if-nez v3, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v3

    :goto_0
    iget-object v3, v0, Lyads/hc1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R2:Lcl4;

    const-string v4, "download_callbacks"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lyads/nc1;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/kc1;->b:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v13, v7

    goto :goto_1

    :cond_1
    move-object v13, v3

    :goto_1
    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "log_id"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v14

    sget-object v6, Lyads/kc1;->f:Lyads/l66;

    sget-object v7, Lyads/kc1;->c:Lyads/xr2;

    const-string v3, "log_limit"

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    const-string v3, "payload"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/json/JSONObject;

    sget-object v3, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v10, "referer"

    invoke-static {v1, v2, v10, v3, v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v10

    const-string v15, "scope_id"

    invoke-static {v1, v2, v15}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v0, v0, Lyads/hc1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->b1:Lcl4;

    move-object/from16 v16, v4

    const-string v4, "typed"

    invoke-static {v1, v2, v4, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lyads/ry0;

    const-string v0, "url"

    invoke-static {v1, v2, v0, v3, v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v18

    move-object v4, v5

    sget-object v5, Lyads/kc1;->g:Lyads/l66;

    sget-object v6, Lyads/kc1;->d:Lyads/xr2;

    const-string v2, "visibility_percentage"

    move-object v0, v1

    move-object/from16 v3, v16

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    move-object v5, v11

    if-nez v0, :cond_3

    move-object v11, v6

    move-object v0, v8

    move-object v2, v9

    move-object v9, v10

    move-object v4, v12

    move-object v1, v15

    move-object/from16 v3, v17

    move-object/from16 v10, v18

    move-object v8, v7

    move-object v6, v13

    :goto_3
    move-object v7, v14

    goto :goto_4

    :cond_3
    move-object v11, v0

    move-object v2, v9

    move-object v9, v10

    move-object v4, v12

    move-object v6, v13

    move-object v1, v15

    move-object/from16 v3, v17

    move-object/from16 v10, v18

    move-object v0, v8

    move-object v8, v7

    goto :goto_3

    :goto_4
    invoke-direct/range {v0 .. v11}, Lyads/gc1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lyads/ry0;Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
