.class public final Lyads/er1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ys4;Lyads/gr1;Lorg/json/JSONObject;)Lyads/br1;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Lyads/br1;

    iget-object v3, v0, Lyads/gr1;->a:Lyads/zw2;

    sget-object v6, Lyads/fr1;->g:Lyads/m36;

    sget-object v7, Lyads/o11;->d:Lnl3;

    sget-object v8, Lyads/fr1;->a:Lyads/xr2;

    const-string v5, "interpolator"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v10, v0, Lyads/gr1;->b:Lyads/zw2;

    sget-object v13, Lyads/w36;->d:Lyads/r36;

    sget-object v14, Lyads/bt4;->d:Lnl3;

    sget-object v15, Lyads/fr1;->h:Lyads/l66;

    sget-object v16, Lyads/fr1;->b:Lyads/xr2;

    const-string v12, "next_page_alpha"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v2, v16

    :cond_1
    iget-object v10, v0, Lyads/gr1;->c:Lyads/zw2;

    sget-object v15, Lyads/fr1;->i:Lyads/l66;

    sget-object v16, Lyads/fr1;->c:Lyads/xr2;

    const-string v12, "next_page_scale"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v3, v16

    :cond_2
    iget-object v10, v0, Lyads/gr1;->d:Lyads/zw2;

    sget-object v15, Lyads/fr1;->j:Lyads/l66;

    sget-object v16, Lyads/fr1;->d:Lyads/xr2;

    const-string v12, "previous_page_alpha"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v4, v16

    :cond_3
    iget-object v10, v0, Lyads/gr1;->e:Lyads/zw2;

    sget-object v15, Lyads/fr1;->k:Lyads/l66;

    sget-object v16, Lyads/fr1;->e:Lyads/xr2;

    const-string v12, "previous_page_scale"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_4

    move-object/from16 v5, v16

    :cond_4
    iget-object v10, v0, Lyads/gr1;->f:Lyads/zw2;

    sget-object v13, Lyads/w36;->a:Lyads/o36;

    sget-object v14, Lyads/bt4;->c:Lnl3;

    sget-object v15, Lyads/fr1;->f:Lyads/xr2;

    const-string v12, "reversed_stacking_order"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v6, v15

    :goto_1
    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_5
    move-object v6, v0

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v6}, Lyads/br1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p2, Lyads/gr1;

    invoke-static {p1, p2, p3}, Lyads/er1;->a(Lyads/ys4;Lyads/gr1;Lorg/json/JSONObject;)Lyads/br1;

    move-result-object p0

    return-object p0
.end method
