.class public final Lyads/oy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ny1;
    .locals 19

    new-instance v0, Lyads/ny1;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/ry1;->h:Lyads/l66;

    sget-object v7, Lyads/ry1;->a:Lyads/xr2;

    const-string v3, "duration"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    sget-object v11, Lyads/ry1;->g:Lyads/m36;

    sget-object v12, Lyads/o11;->d:Lnl3;

    sget-object v14, Lyads/ry1;->b:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "interpolator"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v16, v14

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    sget-object v11, Lyads/w36;->d:Lyads/r36;

    sget-object v12, Lyads/bt4;->d:Lnl3;

    sget-object v13, Lyads/ry1;->i:Lyads/l66;

    sget-object v14, Lyads/ry1;->c:Lyads/xr2;

    const-string v10, "pivot_x"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v17, v14

    goto :goto_2

    :cond_2
    move-object/from16 v17, v1

    :goto_2
    sget-object v13, Lyads/ry1;->j:Lyads/l66;

    sget-object v14, Lyads/ry1;->d:Lyads/xr2;

    const-string v10, "pivot_y"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v18, v14

    goto :goto_3

    :cond_3
    move-object/from16 v18, v1

    :goto_3
    sget-object v13, Lyads/ry1;->k:Lyads/l66;

    sget-object v14, Lyads/ry1;->e:Lyads/xr2;

    const-string v10, "scale"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v14, v1

    :goto_4
    sget-object v6, Lyads/ry1;->l:Lyads/l66;

    sget-object v7, Lyads/ry1;->f:Lyads/xr2;

    const-string v3, "start_delay"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v6, v7

    :goto_5
    move-object v5, v14

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_6

    :cond_5
    move-object v6, v1

    goto :goto_5

    :goto_6
    invoke-direct/range {v0 .. v6}, Lyads/ny1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lyads/oy1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ny1;

    move-result-object p0

    return-object p0
.end method
