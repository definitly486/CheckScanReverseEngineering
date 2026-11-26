.class public final Lyads/di1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/di1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/gi1;
    .locals 17

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/gi1;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lyads/gi1;->a:Lyads/zw2;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/fi1;->i:Lyads/l66;

    const-string v3, "alpha"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    sget-object v4, Lyads/fi1;->f:Lyads/m36;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lyads/gi1;->b:Lyads/zw2;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v10

    :goto_1
    sget-object v7, Lyads/f11;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "content_alignment_horizontal"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v12

    sget-object v4, Lyads/fi1;->g:Lyads/m36;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lyads/gi1;->c:Lyads/zw2;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v10

    :goto_2
    sget-object v7, Lyads/h11;->d:Lnl3;

    const-string v3, "content_alignment_vertical"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    if-eqz v0, :cond_3

    iget-object v2, v0, Lyads/gi1;->d:Lyads/zw2;

    :goto_3
    move-object/from16 v3, p0

    goto :goto_4

    :cond_3
    move-object v2, v10

    goto :goto_3

    :goto_4
    iget-object v3, v3, Lyads/di1;->a:Lyads/tq3;

    iget-object v6, v3, Lyads/tq3;->k3:Lcl4;

    const-string v3, "filters"

    move v4, v5

    move-object v5, v2

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v14

    move v5, v4

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lyads/gi1;->e:Lyads/zw2;

    move-object v6, v2

    goto :goto_5

    :cond_4
    move-object v6, v10

    :goto_5
    sget-object v7, Lyads/bt4;->b:Lnl3;

    const-string v3, "image_url"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lyads/gi1;->f:Lyads/zw2;

    move-object v6, v2

    goto :goto_6

    :cond_5
    move-object v6, v10

    :goto_6
    sget-object v7, Lyads/bt4;->c:Lnl3;

    const-string v3, "preload_required"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    sget-object v3, Lyads/fi1;->h:Lyads/m36;

    if-eqz v0, :cond_6

    iget-object v10, v0, Lyads/gi1;->g:Lyads/zw2;

    :cond_6
    sget-object v6, Lyads/vi1;->d:Lnl3;

    const-string v2, "scale"

    move-object v0, v1

    move v4, v5

    move-object v7, v8

    move-object v5, v10

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct/range {v6 .. v13}, Lyads/gi1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, v0, p2}, Lyads/di1;->a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/gi1;

    move-result-object p0

    return-object p0
.end method
