.class public final Lyads/iq1;
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

    iput-object p1, p0, Lyads/iq1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p2, Lyads/kq1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/iq1;->a(Lyads/ys4;Lyads/kq1;Lorg/json/JSONObject;)Lyads/fq1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/kq1;Lorg/json/JSONObject;)Lyads/fq1;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v10, Lyads/fq1;

    iget-object v3, v1, Lyads/kq1;->a:Lyads/zw2;

    iget-object v2, v0, Lyads/iq1;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->m1:Lcl4;

    iget-object v7, v2, Lyads/tq3;->k1:Lcl4;

    const-string v5, "cancel_actions"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v11

    iget-object v3, v1, Lyads/kq1;->b:Lyads/zw2;

    sget-object v6, Lyads/jq1;->e:Lyads/m36;

    sget-object v7, Lyads/m11;->d:Lnl3;

    sget-object v8, Lyads/jq1;->a:Lyads/xr2;

    const-string v5, "direction"

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v12, v8

    goto :goto_0

    :cond_0
    move-object v12, v3

    :goto_0
    iget-object v3, v1, Lyads/kq1;->c:Lyads/zw2;

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/jq1;->g:Lyads/l66;

    const-string v5, "duration"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v13

    move-object v9, v6

    move-object v14, v7

    iget-object v3, v1, Lyads/kq1;->d:Lyads/zw2;

    iget-object v2, v0, Lyads/iq1;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->m1:Lcl4;

    iget-object v7, v2, Lyads/tq3;->k1:Lcl4;

    const-string v5, "end_actions"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v15

    iget-object v3, v1, Lyads/kq1;->e:Lyads/zw2;

    sget-object v6, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    const-string v5, "end_value"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    iget-object v2, v1, Lyads/kq1;->f:Lyads/zw2;

    const-string v3, "id"

    invoke-static {v2, v4, v3}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    iget-object v3, v1, Lyads/kq1;->g:Lyads/zw2;

    sget-object v6, Lyads/jq1;->f:Lyads/m36;

    sget-object v7, Lyads/o11;->d:Lnl3;

    sget-object v8, Lyads/jq1;->b:Lyads/xr2;

    const-string v5, "interpolator"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v20, v8

    goto :goto_1

    :cond_1
    move-object/from16 v20, v3

    :goto_1
    iget-object v3, v1, Lyads/kq1;->h:Lyads/zw2;

    iget-object v0, v0, Lyads/iq1;->a:Lyads/tq3;

    iget-object v6, v0, Lyads/tq3;->x2:Lcl4;

    iget-object v7, v0, Lyads/tq3;->v2:Lcl4;

    const-string v5, "repeat_count"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x91;

    if-nez v0, :cond_2

    sget-object v0, Lyads/jq1;->c:Lyads/v91;

    :cond_2
    iget-object v3, v1, Lyads/kq1;->i:Lyads/zw2;

    sget-object v8, Lyads/jq1;->h:Lyads/l66;

    move-object v6, v9

    sget-object v9, Lyads/jq1;->d:Lyads/xr2;

    const-string v5, "start_delay"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v7, v14

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v9, v3

    :goto_2
    iget-object v3, v1, Lyads/kq1;->j:Lyads/zw2;

    const-string v5, "start_value"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v2

    iget-object v1, v1, Lyads/kq1;->k:Lyads/zw2;

    const-string v3, "variable_name"

    invoke-static {v1, v4, v3}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v11

    move-object v11, v1

    move-object v1, v3

    move-object v8, v0

    move-object v0, v10

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object v10, v2

    move-object v2, v12

    invoke-direct/range {v0 .. v11}, Lyads/fq1;-><init>(Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    return-object v0
.end method
