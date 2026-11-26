.class public final Lyads/p11;
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

    iput-object p1, p0, Lyads/p11;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    new-instance v8, Lyads/k11;

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v4, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/s11;->g:Lyads/l66;

    sget-object v7, Lyads/s11;->a:Lyads/xr2;

    move-object v5, v4

    move-object v4, v3

    const-string v3, "duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v9, v4

    move-object v10, v5

    if-nez v3, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v3

    :goto_0
    sget-object v12, Lyads/w36;->d:Lyads/r36;

    sget-object v13, Lyads/bt4;->d:Lnl3;

    const-string v3, "end_value"

    invoke-static {v1, v2, v3, v12, v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v14

    sget-object v4, Lyads/s11;->e:Lyads/m36;

    sget-object v5, Lyads/o11;->d:Lnl3;

    sget-object v7, Lyads/s11;->b:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "interpolator"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    iget-object v3, v0, Lyads/p11;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "items"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v15

    sget-object v4, Lyads/s11;->f:Lyads/m36;

    sget-object v5, Lyads/j11;->d:Lnl3;

    const-string v3, "name"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v16

    iget-object v0, v0, Lyads/p11;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->v2:Lcl4;

    const-string v3, "repeat"

    invoke-static {v1, v2, v3, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x91;

    if-nez v0, :cond_2

    sget-object v0, Lyads/s11;->c:Lyads/w91;

    :cond_2
    move-object/from16 v17, v0

    sget-object v5, Lyads/s11;->h:Lyads/l66;

    sget-object v6, Lyads/s11;->d:Lyads/xr2;

    const-string v2, "start_delay"

    move-object v0, v1

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    const-string v2, "start_value"

    invoke-static {v1, v0, v2, v12, v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v0

    move-object v1, v8

    move-object v8, v0

    move-object v0, v1

    move-object v3, v7

    move-object v1, v11

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v7, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Lyads/k11;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
