.class public final Lyads/ru0;
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

    iput-object p1, p0, Lyads/ru0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/xr0;

    iget-object v3, v0, Lyads/ru0;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R2:Lcl4;

    const-string v4, "download_callbacks"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/nc1;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uu0;->a:Lyads/xr2;

    sget-object v3, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "log_id"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v3

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    const-string v6, "log_url"

    invoke-static {v1, v2, v6, v4, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v6

    iget-object v10, v0, Lyads/ru0;->a:Lyads/tq3;

    iget-object v10, v10, Lyads/tq3;->n1:Lcl4;

    const-string v11, "menu_items"

    invoke-static {v1, v2, v11, v10}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v10

    const-string v11, "payload"

    invoke-static {v1, v2, v11}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "referer"

    invoke-static {v1, v2, v12, v4, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    const-string v13, "scope_id"

    invoke-static {v1, v2, v13}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lyads/uu0;->b:Lyads/m36;

    sget-object v15, Lyads/wr0;->d:Lnl3;

    move-object/from16 v16, v3

    const-string v3, "target"

    invoke-static {v1, v2, v3, v14, v15}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v3

    iget-object v0, v0, Lyads/ru0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->b1:Lcl4;

    const-string v14, "typed"

    invoke-static {v1, v2, v14, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ry0;

    const-string v14, "url"

    invoke-static {v1, v2, v14, v4, v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    move-object v4, v6

    move-object v2, v7

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v10, v0

    move-object v11, v1

    move-object v0, v8

    move-object v1, v9

    move-object v8, v13

    move-object v9, v3

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v11}, Lyads/xr0;-><init>(Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lorg/json/JSONObject;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/ry0;Lyads/as2;)V

    return-object v0
.end method
