.class public final Lyads/dr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ys4;Lyads/gr1;Lorg/json/JSONObject;)Lyads/gr1;
    .locals 16

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p0 .. p0}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/gr1;

    sget-object v4, Lyads/fr1;->g:Lyads/m36;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lyads/gr1;->a:Lyads/zw2;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    sget-object v7, Lyads/o11;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "interpolator"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    move-object v12, v8

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lyads/gr1;->b:Lyads/zw2;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v10

    :goto_1
    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/fr1;->h:Lyads/l66;

    const-string v3, "next_page_alpha"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    if-eqz v0, :cond_2

    iget-object v2, v0, Lyads/gr1;->c:Lyads/zw2;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v10

    :goto_2
    sget-object v8, Lyads/fr1;->i:Lyads/l66;

    const-string v3, "next_page_scale"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    if-eqz v0, :cond_3

    iget-object v2, v0, Lyads/gr1;->d:Lyads/zw2;

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v10

    :goto_3
    sget-object v8, Lyads/fr1;->j:Lyads/l66;

    const-string v3, "previous_page_alpha"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    if-eqz v0, :cond_4

    iget-object v2, v0, Lyads/gr1;->e:Lyads/zw2;

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v10

    :goto_4
    sget-object v8, Lyads/fr1;->k:Lyads/l66;

    const-string v3, "previous_page_scale"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v0, :cond_5

    iget-object v10, v0, Lyads/gr1;->f:Lyads/zw2;

    :cond_5
    sget-object v6, Lyads/bt4;->c:Lnl3;

    const-string v2, "reversed_stacking_order"

    move-object v0, v1

    move v4, v5

    move-object v5, v10

    move-object v7, v12

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v12

    move-object v6, v9

    move-object v7, v11

    move-object v9, v14

    move-object v10, v15

    move-object v11, v8

    move-object v8, v13

    invoke-direct/range {v6 .. v12}, Lyads/gr1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 0

    const/4 p0, 0x0

    .line 137
    invoke-static {p1, p0, p2}, Lyads/dr1;->a(Lyads/ys4;Lyads/gr1;Lorg/json/JSONObject;)Lyads/gr1;

    move-result-object p0

    return-object p0
.end method
