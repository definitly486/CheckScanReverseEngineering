.class public final Lyads/bc2;
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

    iput-object p1, p0, Lyads/bc2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    check-cast v9, Lyads/yc2;

    new-instance v10, Lyads/qb2;

    iget-object v2, v9, Lyads/yc2;->a:Lyads/zw2;

    iget-object v1, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->s1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_in"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lyads/k11;

    iget-object v2, v9, Lyads/yc2;->b:Lyads/zw2;

    iget-object v1, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->s1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyads/k11;

    iget-object v1, v9, Lyads/yc2;->c:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v4, "background_accessibility_description"

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v13

    iget-object v2, v9, Lyads/yc2;->d:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/cc2;->a:Lyads/xr2;

    const-string v4, "close_by_tap_outside"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v14, v7

    goto :goto_0

    :cond_0
    move-object v14, v2

    :goto_0
    iget-object v2, v9, Lyads/yc2;->e:Lyads/zw2;

    iget-object v1, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->u9:Lcl4;

    iget-object v6, v1, Lyads/tq3;->s9:Lcl4;

    const-string v4, "div"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lyads/br0;

    iget-object v2, v9, Lyads/yc2;->f:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/cc2;->e:Lyads/l66;

    sget-object v8, Lyads/cc2;->b:Lyads/xr2;

    const-string v4, "duration"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v16, v8

    goto :goto_1

    :cond_1
    move-object/from16 v16, v2

    :goto_1
    iget-object v1, v9, Lyads/yc2;->g:Lyads/zw2;

    const-string v2, "id"

    invoke-static {v1, v3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    iget-object v2, v9, Lyads/yc2;->h:Lyads/zw2;

    iget-object v1, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->N8:Lcl4;

    iget-object v6, v1, Lyads/tq3;->L8:Lcl4;

    const-string v4, "mode"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/fc2;

    if-nez v2, :cond_2

    sget-object v2, Lyads/cc2;->c:Lyads/dc2;

    :cond_2
    move-object/from16 v18, v2

    iget-object v2, v9, Lyads/yc2;->i:Lyads/zw2;

    iget-object v1, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->T5:Lcl4;

    iget-object v6, v1, Lyads/tq3;->R5:Lcl4;

    const-string v4, "offset"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lyads/nv1;

    iget-object v2, v9, Lyads/yc2;->j:Lyads/zw2;

    sget-object v5, Lyads/cc2;->d:Lyads/m36;

    sget-object v6, Lyads/pb2;->d:Lnl3;

    const-string v4, "position"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v20

    iget-object v1, v9, Lyads/yc2;->k:Lyads/zw2;

    iget-object v0, v0, Lyads/bc2;->a:Lyads/tq3;

    iget-object v4, v0, Lyads/tq3;->m1:Lcl4;

    iget-object v5, v0, Lyads/tq3;->k1:Lcl4;

    const-string v3, "tap_outside_actions"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v21

    invoke-direct/range {v10 .. v21}, Lyads/qb2;-><init>(Lyads/k11;Lyads/k11;Lyads/as2;Lyads/as2;Lyads/br0;Lyads/as2;Ljava/lang/String;Lyads/fc2;Lyads/nv1;Lyads/as2;Ljava/util/List;)V

    return-object v10
.end method
