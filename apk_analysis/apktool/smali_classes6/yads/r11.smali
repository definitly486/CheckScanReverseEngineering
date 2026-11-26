.class public final Lyads/r11;
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

    iput-object p1, p0, Lyads/r11;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Lyads/t11;

    new-instance v2, Lyads/k11;

    iget-object v4, v1, Lyads/t11;->a:Lyads/zw2;

    sget-object v7, Lyads/w36;->b:Lyads/s36;

    sget-object v8, Lyads/bt4;->e:Lnl3;

    sget-object v9, Lyads/s11;->g:Lyads/l66;

    sget-object v10, Lyads/s11;->a:Lyads/xr2;

    const-string v6, "duration"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v10}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v3, v10

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v12, v1, Lyads/t11;->b:Lyads/zw2;

    sget-object v15, Lyads/w36;->d:Lyads/r36;

    sget-object v16, Lyads/bt4;->d:Lnl3;

    const-string v14, "end_value"

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v16}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v4

    move-object/from16 v18, v15

    move-object/from16 v19, v16

    iget-object v12, v1, Lyads/t11;->c:Lyads/zw2;

    sget-object v15, Lyads/s11;->e:Lyads/m36;

    sget-object v16, Lyads/o11;->d:Lnl3;

    sget-object v17, Lyads/s11;->b:Lyads/xr2;

    const-string v14, "interpolator"

    invoke-static/range {v11 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v5

    :goto_1
    iget-object v12, v1, Lyads/t11;->d:Lyads/zw2;

    iget-object v5, v0, Lyads/r11;->a:Lyads/tq3;

    iget-object v15, v5, Lyads/tq3;->s1:Lcl4;

    iget-object v5, v5, Lyads/tq3;->q1:Lcl4;

    const-string v14, "items"

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v20

    iget-object v12, v1, Lyads/t11;->e:Lyads/zw2;

    sget-object v15, Lyads/s11;->f:Lyads/m36;

    sget-object v16, Lyads/j11;->d:Lnl3;

    const-string v14, "name"

    invoke-static/range {v11 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v21

    iget-object v12, v1, Lyads/t11;->f:Lyads/zw2;

    iget-object v0, v0, Lyads/r11;->a:Lyads/tq3;

    iget-object v15, v0, Lyads/tq3;->x2:Lcl4;

    iget-object v0, v0, Lyads/tq3;->v2:Lcl4;

    const-string v14, "repeat"

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x91;

    if-nez v0, :cond_2

    sget-object v0, Lyads/s11;->c:Lyads/w91;

    :cond_2
    iget-object v6, v1, Lyads/t11;->g:Lyads/zw2;

    sget-object v11, Lyads/s11;->h:Lyads/l66;

    sget-object v12, Lyads/s11;->d:Lyads/xr2;

    move-object v10, v8

    const-string v8, "start_delay"

    move-object/from16 v5, p1

    move-object v9, v7

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v12}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v9, v12

    goto :goto_2

    :cond_3
    move-object v9, v6

    :goto_2
    iget-object v12, v1, Lyads/t11;->h:Lyads/zw2;

    const-string v14, "start_value"

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-static/range {v11 .. v16}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v10

    move-object v8, v0

    move-object/from16 v5, v17

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    invoke-direct/range {v2 .. v10}, Lyads/k11;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;)V

    return-object v2
.end method
