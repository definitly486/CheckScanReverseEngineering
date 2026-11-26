.class public final Lyads/tu0;
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

    iput-object p1, p0, Lyads/tu0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    check-cast v8, Lyads/nx0;

    new-instance v9, Lyads/xr0;

    iget-object v2, v8, Lyads/nx0;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/tu0;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->T2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->R2:Lcl4;

    const-string v4, "download_callbacks"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lyads/nc1;

    iget-object v2, v8, Lyads/nx0;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uu0;->a:Lyads/xr2;

    const-string v4, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    iget-object v2, v8, Lyads/nx0;->c:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v5, "log_id"

    invoke-static {v1, v2, v3, v5, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v12

    iget-object v2, v8, Lyads/nx0;->d:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "log_url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v13

    move-object v7, v5

    move-object v14, v6

    iget-object v2, v8, Lyads/nx0;->e:Lyads/zw2;

    iget-object v1, v0, Lyads/tu0;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->p1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->n1:Lcl4;

    const-string v4, "menu_items"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v15

    iget-object v2, v8, Lyads/nx0;->f:Lyads/zw2;

    const-string v4, "payload"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lorg/json/JSONObject;

    iget-object v2, v8, Lyads/nx0;->g:Lyads/zw2;

    const-string v4, "referer"

    move-object v5, v7

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v7

    move-object v14, v5

    move-object/from16 v17, v6

    iget-object v2, v8, Lyads/nx0;->h:Lyads/zw2;

    const-string v4, "scope_id"

    invoke-static {v1, v2, v3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    iget-object v2, v8, Lyads/nx0;->i:Lyads/zw2;

    sget-object v5, Lyads/uu0;->b:Lyads/m36;

    sget-object v6, Lyads/wr0;->d:Lnl3;

    const-string v4, "target"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v6

    iget-object v1, v8, Lyads/nx0;->j:Lyads/zw2;

    iget-object v0, v0, Lyads/tu0;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->d1:Lcl4;

    iget-object v5, v0, Lyads/tq3;->b1:Lcl4;

    const-string v3, "typed"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lyads/ry0;

    iget-object v1, v8, Lyads/nx0;->k:Lyads/zw2;

    const-string v3, "url"

    move-object v4, v14

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v20

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v20}, Lyads/xr0;-><init>(Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lorg/json/JSONObject;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/ry0;Lyads/as2;)V

    return-object v9
.end method
