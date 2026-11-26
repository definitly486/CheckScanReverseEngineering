.class public final Lyads/gq1;
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

    iput-object p1, p0, Lyads/gq1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/gq1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/fq1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/fq1;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/fq1;

    iget-object v3, v0, Lyads/gq1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "cancel_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v9

    sget-object v4, Lyads/jq1;->e:Lyads/m36;

    sget-object v5, Lyads/m11;->d:Lnl3;

    sget-object v7, Lyads/jq1;->a:Lyads/xr2;

    sget-object v3, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "direction"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v10, v6

    if-nez v3, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v3

    :goto_0
    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v4, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/jq1;->g:Lyads/l66;

    move-object v5, v4

    move-object v4, v3

    const-string v3, "duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v12

    move-object v13, v4

    move-object v14, v5

    iget-object v3, v0, Lyads/gq1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "end_actions"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v15

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    const-string v3, "end_value"

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v10

    const-string v1, "id"

    invoke-static {v1, v2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    move-object v1, v4

    sget-object v4, Lyads/jq1;->f:Lyads/m36;

    move-object v3, v5

    sget-object v5, Lyads/o11;->d:Lnl3;

    sget-object v7, Lyads/jq1;->b:Lyads/xr2;

    move-object/from16 v17, v3

    const-string v3, "interpolator"

    move-object/from16 v18, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v8

    move-object v8, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    iget-object v0, v0, Lyads/gq1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->v2:Lcl4;

    const-string v3, "repeat_count"

    invoke-static {v1, v2, v3, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x91;

    if-nez v0, :cond_2

    sget-object v0, Lyads/jq1;->c:Lyads/v91;

    :cond_2
    move-object/from16 v19, v0

    sget-object v5, Lyads/jq1;->h:Lyads/l66;

    sget-object v6, Lyads/jq1;->d:Lyads/xr2;

    const-string v2, "start_delay"

    move-object v0, v1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    const-string v2, "start_value"

    invoke-static {v1, v0, v2, v8, v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    const-string v2, "variable_name"

    invoke-static {v2, v0}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v6

    move-object v5, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v19

    move-object v11, v0

    move-object v10, v1

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v11}, Lyads/fq1;-><init>(Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    return-object v0
.end method
