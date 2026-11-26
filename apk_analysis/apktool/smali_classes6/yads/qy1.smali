.class public final Lyads/qy1;
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

.method public static a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/ny1;
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Lyads/ny1;

    iget-object v3, v0, Lyads/sy1;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/ry1;->h:Lyads/l66;

    sget-object v9, Lyads/ry1;->a:Lyads/xr2;

    const-string v5, "duration"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v9

    :cond_0
    iget-object v11, v0, Lyads/sy1;->b:Lyads/zw2;

    sget-object v14, Lyads/ry1;->g:Lyads/m36;

    sget-object v15, Lyads/o11;->d:Lnl3;

    sget-object v16, Lyads/ry1;->b:Lyads/xr2;

    const-string v13, "interpolator"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v2, v16

    :cond_1
    iget-object v11, v0, Lyads/sy1;->c:Lyads/zw2;

    sget-object v14, Lyads/w36;->d:Lyads/r36;

    sget-object v15, Lyads/bt4;->d:Lnl3;

    sget-object v16, Lyads/ry1;->i:Lyads/l66;

    sget-object v17, Lyads/ry1;->c:Lyads/xr2;

    const-string v13, "pivot_x"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object/from16 v18, v17

    goto :goto_0

    :cond_2
    move-object/from16 v18, v4

    :goto_0
    iget-object v11, v0, Lyads/sy1;->d:Lyads/zw2;

    sget-object v16, Lyads/ry1;->j:Lyads/l66;

    sget-object v17, Lyads/ry1;->d:Lyads/xr2;

    const-string v13, "pivot_y"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v19, v17

    goto :goto_1

    :cond_3
    move-object/from16 v19, v4

    :goto_1
    iget-object v11, v0, Lyads/sy1;->e:Lyads/zw2;

    sget-object v16, Lyads/ry1;->k:Lyads/l66;

    sget-object v17, Lyads/ry1;->e:Lyads/xr2;

    const-string v13, "scale"

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v17, v4

    :goto_2
    iget-object v5, v0, Lyads/sy1;->f:Lyads/zw2;

    sget-object v10, Lyads/ry1;->l:Lyads/l66;

    sget-object v11, Lyads/ry1;->f:Lyads/xr2;

    move-object v9, v7

    const-string v7, "start_delay"

    move-object/from16 v4, p0

    move-object v8, v6

    move-object/from16 v6, p2

    invoke-static/range {v4 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v6, v11

    :goto_3
    move-object v0, v1

    move-object v1, v3

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_4

    :cond_5
    move-object v6, v0

    goto :goto_3

    :goto_4
    invoke-direct/range {v0 .. v6}, Lyads/ny1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p2, Lyads/sy1;

    invoke-static {p1, p2, p3}, Lyads/qy1;->a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/ny1;

    move-result-object p0

    return-object p0
.end method
