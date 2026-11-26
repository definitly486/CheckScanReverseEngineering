.class public final Lyads/bd1;
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


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p2

    check-cast v0, Lyads/dd1;

    new-instance v1, Lyads/yc1;

    iget-object v3, v0, Lyads/dd1;->a:Lyads/zw2;

    sget-object v8, Lyads/w36;->b:Lyads/s36;

    sget-object v9, Lyads/bt4;->e:Lnl3;

    move-object v6, v8

    sget-object v8, Lyads/cd1;->g:Lyads/l66;

    move-object v7, v9

    sget-object v9, Lyads/cd1;->a:Lyads/xr2;

    const-string v5, "bottom"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v8, v6

    if-nez v3, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v5, v0, Lyads/dd1;->b:Lyads/zw2;

    sget-object v10, Lyads/cd1;->h:Lyads/l66;

    move-object v9, v7

    const-string v7, "end"

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v3

    iget-object v5, v0, Lyads/dd1;->c:Lyads/zw2;

    sget-object v10, Lyads/cd1;->i:Lyads/l66;

    sget-object v11, Lyads/cd1;->b:Lyads/xr2;

    const-string v7, "left"

    invoke-static/range {v4 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v17, v11

    goto :goto_1

    :cond_1
    move-object/from16 v17, v5

    :goto_1
    iget-object v5, v0, Lyads/dd1;->d:Lyads/zw2;

    sget-object v10, Lyads/cd1;->j:Lyads/l66;

    sget-object v11, Lyads/cd1;->c:Lyads/xr2;

    const-string v7, "right"

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 v18, v11

    goto :goto_2

    :cond_2
    move-object/from16 v18, v5

    :goto_2
    iget-object v5, v0, Lyads/dd1;->e:Lyads/zw2;

    sget-object v10, Lyads/cd1;->k:Lyads/l66;

    const-string v7, "start"

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v19

    iget-object v5, v0, Lyads/dd1;->f:Lyads/zw2;

    sget-object v10, Lyads/cd1;->l:Lyads/l66;

    sget-object v11, Lyads/cd1;->d:Lyads/xr2;

    const-string v7, "top"

    invoke-static/range {v4 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v7, v11

    goto :goto_3

    :cond_3
    move-object v7, v5

    :goto_3
    iget-object v11, v0, Lyads/dd1;->g:Lyads/zw2;

    sget-object v14, Lyads/cd1;->f:Lyads/m36;

    sget-object v15, Lyads/g12;->d:Lnl3;

    sget-object v16, Lyads/cd1;->e:Lyads/xr2;

    const-string v13, "unit"

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_4

    move-object/from16 v8, v16

    :goto_4
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_5

    :cond_4
    move-object v8, v0

    goto :goto_4

    :goto_5
    invoke-direct/range {v1 .. v8}, Lyads/yc1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v1
.end method
