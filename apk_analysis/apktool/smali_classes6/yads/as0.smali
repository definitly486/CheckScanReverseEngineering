.class public final Lyads/as0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/as0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/ds0;Lorg/json/JSONObject;)Lyads/ds0;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v6

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v2

    new-instance v10, Lyads/ds0;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lyads/ds0;->a:Lyads/zw2;

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    const-string v4, "animator_id"

    move-object/from16 v5, p3

    invoke-static {v2, v5, v4, v6, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v12

    sget-object v5, Lyads/cs0;->a:Lyads/m36;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lyads/ds0;->b:Lyads/zw2;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v11

    :goto_1
    sget-object v8, Lyads/m11;->d:Lnl3;

    sget-object v9, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "direction"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    move-object v14, v9

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lyads/ds0;->c:Lyads/zw2;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v11

    :goto_2
    sget-object v8, Lyads/bt4;->e:Lnl3;

    sget-object v9, Lyads/cs0;->c:Lyads/l66;

    const-string v4, "duration"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    if-eqz v1, :cond_3

    iget-object v3, v1, Lyads/ds0;->d:Lyads/zw2;

    goto :goto_3

    :cond_3
    move-object v3, v11

    :goto_3
    iget-object v4, v0, Lyads/as0;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->Y8:Lcl4;

    const-string v4, "end_value"

    move v5, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v18

    move v6, v5

    sget-object v5, Lyads/cs0;->b:Lyads/m36;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lyads/ds0;->e:Lyads/zw2;

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object v7, v11

    :goto_4
    sget-object v8, Lyads/o11;->d:Lnl3;

    const-string v4, "interpolator"

    move-object/from16 v3, p3

    move-object v9, v14

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    if-eqz v1, :cond_5

    iget-object v3, v1, Lyads/ds0;->f:Lyads/zw2;

    goto :goto_5

    :cond_5
    move-object v3, v11

    :goto_5
    iget-object v4, v0, Lyads/as0;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->w2:Lcl4;

    const-string v4, "repeat_count"

    move v5, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v19

    move v6, v5

    if-eqz v1, :cond_6

    iget-object v3, v1, Lyads/ds0;->g:Lyads/zw2;

    move-object v7, v3

    goto :goto_6

    :cond_6
    move-object v7, v11

    :goto_6
    sget-object v9, Lyads/cs0;->d:Lyads/l66;

    const-string v4, "start_delay"

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v7

    if-eqz v1, :cond_7

    iget-object v11, v1, Lyads/ds0;->h:Lyads/zw2;

    :cond_7
    move-object v4, v11

    iget-object v0, v0, Lyads/as0;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->Y8:Lcl4;

    move-object v0, v2

    const-string v2, "start_value"

    move-object/from16 v1, p3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object v8, v12

    move-object v9, v13

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v13, v19

    move-object v14, v7

    move-object v7, v10

    move-object v10, v15

    move-object v15, v0

    invoke-direct/range {v7 .. v15}, Lyads/ds0;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v7
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0, p2}, Lyads/as0;->a(Lyads/ys4;Lyads/ds0;Lorg/json/JSONObject;)Lyads/ds0;

    move-result-object p0

    return-object p0
.end method
