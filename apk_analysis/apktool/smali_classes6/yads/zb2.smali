.class public final Lyads/zb2;
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

    iput-object p1, p0, Lyads/zb2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/qb2;

    iget-object v3, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_in"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/k11;

    iget-object v3, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_out"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lyads/k11;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "background_accessibility_description"

    invoke-static {v1, v2, v4, v3}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v11

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/cc2;->a:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "close_by_tap_outside"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v12, v6

    if-nez v3, :cond_0

    move-object v13, v7

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    iget-object v3, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->s9:Lcl4;

    const-string v4, "div"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lyads/br0;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/cc2;->e:Lyads/l66;

    sget-object v7, Lyads/cc2;->b:Lyads/xr2;

    const-string v3, "duration"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    const-string v3, "id"

    invoke-static {v3, v2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    iget-object v3, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->L8:Lcl4;

    const-string v4, "mode"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/fc2;

    if-nez v3, :cond_2

    sget-object v3, Lyads/cc2;->c:Lyads/dc2;

    :cond_2
    move-object/from16 v16, v3

    iget-object v3, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->R5:Lcl4;

    const-string v4, "offset"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lyads/nv1;

    sget-object v4, Lyads/cc2;->d:Lyads/m36;

    sget-object v5, Lyads/pb2;->d:Lnl3;

    const-string v3, "position"

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v3

    iget-object v0, v0, Lyads/zb2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "tap_outside_actions"

    invoke-static {v1, v2, v4, v0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v0

    move-object v6, v7

    move-object v1, v9

    move-object v2, v10

    move-object v4, v13

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v9, v17

    move-object v10, v3

    move-object v3, v11

    move-object v11, v0

    move-object v0, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v11}, Lyads/qb2;-><init>(Lyads/k11;Lyads/k11;Lyads/as2;Lyads/as2;Lyads/br0;Lyads/as2;Ljava/lang/String;Lyads/fc2;Lyads/nv1;Lyads/as2;Ljava/util/List;)V

    return-object v0
.end method
