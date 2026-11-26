.class public final Lyads/bs0;
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

    iput-object p1, p0, Lyads/bs0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p2, Lyads/ds0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/bs0;->a(Lyads/ys4;Lyads/ds0;Lorg/json/JSONObject;)Lyads/yr0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ds0;Lorg/json/JSONObject;)Lyads/yr0;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lyads/yr0;

    iget-object v3, v1, Lyads/ds0;->a:Lyads/zw2;

    const-string v4, "animator_id"

    move-object/from16 v7, p3

    invoke-static {v3, v7, v4}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lyads/ds0;->b:Lyads/zw2;

    sget-object v9, Lyads/cs0;->a:Lyads/m36;

    sget-object v10, Lyads/m11;->d:Lnl3;

    const-string v8, "direction"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v4

    iget-object v6, v1, Lyads/ds0;->c:Lyads/zw2;

    sget-object v9, Lyads/w36;->b:Lyads/s36;

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v11, Lyads/cs0;->c:Lyads/l66;

    const-string v8, "duration"

    invoke-static/range {v5 .. v11}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v12

    move-object v11, v9

    move-object v13, v10

    iget-object v6, v1, Lyads/ds0;->d:Lyads/zw2;

    iget-object v5, v0, Lyads/bs0;->a:Lyads/tq3;

    iget-object v9, v5, Lyads/tq3;->Z8:Lcl4;

    iget-object v10, v5, Lyads/tq3;->X8:Lcl4;

    const-string v8, "end_value"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lyads/oe2;

    iget-object v6, v1, Lyads/ds0;->e:Lyads/zw2;

    sget-object v9, Lyads/cs0;->b:Lyads/m36;

    sget-object v10, Lyads/o11;->d:Lnl3;

    const-string v8, "interpolator"

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v15

    iget-object v6, v1, Lyads/ds0;->f:Lyads/zw2;

    iget-object v5, v0, Lyads/bs0;->a:Lyads/tq3;

    iget-object v9, v5, Lyads/tq3;->x2:Lcl4;

    iget-object v10, v5, Lyads/tq3;->v2:Lcl4;

    const-string v8, "repeat_count"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Lyads/x91;

    iget-object v6, v1, Lyads/ds0;->g:Lyads/zw2;

    move-object v9, v11

    sget-object v11, Lyads/cs0;->d:Lyads/l66;

    const-string v8, "start_delay"

    move-object v10, v13

    invoke-static/range {v5 .. v11}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v11

    iget-object v6, v1, Lyads/ds0;->h:Lyads/zw2;

    iget-object v0, v0, Lyads/bs0;->a:Lyads/tq3;

    iget-object v9, v0, Lyads/tq3;->Z8:Lcl4;

    iget-object v10, v0, Lyads/tq3;->X8:Lcl4;

    const-string v8, "start_value"

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lyads/oe2;

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v7, v11

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v8}, Lyads/yr0;-><init>(Ljava/lang/String;Lyads/as2;Lyads/as2;Lyads/oe2;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/oe2;)V

    return-object v0
.end method
