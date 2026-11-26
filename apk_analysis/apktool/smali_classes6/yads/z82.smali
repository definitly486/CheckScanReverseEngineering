.class public final Lyads/z82;
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

    iput-object p1, p0, Lyads/z82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Lyads/db2;

    new-instance v2, Lyads/x72;

    iget-object v4, v1, Lyads/db2;->a:Lyads/zw2;

    iget-object v3, v0, Lyads/z82;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->y8:Lcl4;

    iget-object v8, v3, Lyads/tq3;->w8:Lcl4;

    const-string v6, "accessibility"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lyads/u72;

    iget-object v6, v1, Lyads/db2;->b:Lyads/zw2;

    sget-object v9, Lyads/a92;->g:Lyads/m36;

    sget-object v10, Lyads/d82;->d:Lnl3;

    sget-object v11, Lyads/a92;->a:Lyads/xr2;

    const-string v8, "alignment_vertical"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v11

    :cond_0
    iget-object v6, v1, Lyads/db2;->c:Lyads/zw2;

    iget-object v5, v0, Lyads/z82;->a:Lyads/tq3;

    iget-object v9, v5, Lyads/tq3;->x3:Lcl4;

    iget-object v10, v5, Lyads/tq3;->v3:Lcl4;

    const-string v8, "height"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/af1;

    if-nez v6, :cond_1

    sget-object v6, Lyads/a92;->b:Lyads/af1;

    :cond_1
    move-object v12, v6

    iget-object v6, v1, Lyads/db2;->d:Lyads/zw2;

    sget-object v9, Lyads/a92;->h:Lyads/m36;

    sget-object v10, Lyads/w72;->d:Lnl3;

    sget-object v11, Lyads/a92;->c:Lyads/xr2;

    const-string v8, "indexing_direction"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v13, v11

    goto :goto_0

    :cond_2
    move-object v13, v6

    :goto_0
    iget-object v6, v1, Lyads/db2;->e:Lyads/zw2;

    sget-object v9, Lyads/w36;->a:Lyads/o36;

    sget-object v10, Lyads/bt4;->c:Lnl3;

    sget-object v11, Lyads/a92;->d:Lyads/xr2;

    const-string v8, "preload_required"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v14, v11

    goto :goto_1

    :cond_3
    move-object v14, v6

    :goto_1
    iget-object v6, v1, Lyads/db2;->f:Lyads/zw2;

    sget-object v9, Lyads/w36;->b:Lyads/s36;

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v11, Lyads/a92;->j:Lyads/l66;

    const-string v8, "start"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v15

    iget-object v6, v1, Lyads/db2;->g:Lyads/zw2;

    sget-object v9, Lyads/w36;->f:Lyads/p36;

    sget-object v10, Lyads/bt4;->a:Lnl3;

    const-string v8, "tint_color"

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    iget-object v6, v1, Lyads/db2;->h:Lyads/zw2;

    sget-object v9, Lyads/a92;->i:Lyads/m36;

    sget-object v10, Lyads/y41;->d:Lnl3;

    sget-object v11, Lyads/a92;->e:Lyads/xr2;

    const-string v8, "tint_mode"

    invoke-static/range {v5 .. v11}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v11, v6

    :goto_2
    iget-object v6, v1, Lyads/db2;->i:Lyads/zw2;

    sget-object v9, Lyads/w36;->e:Lyads/v36;

    sget-object v10, Lyads/bt4;->b:Lnl3;

    const-string v8, "url"

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v17

    iget-object v6, v1, Lyads/db2;->j:Lyads/zw2;

    iget-object v0, v0, Lyads/z82;->a:Lyads/tq3;

    iget-object v9, v0, Lyads/tq3;->x3:Lcl4;

    iget-object v10, v0, Lyads/tq3;->v3:Lcl4;

    const-string v8, "width"

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/af1;

    if-nez v0, :cond_5

    sget-object v0, Lyads/a92;->f:Lyads/af1;

    :cond_5
    move-object v10, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Lyads/x72;-><init>(Lyads/u72;Lyads/as2;Lyads/af1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/af1;)V

    return-object v2
.end method
