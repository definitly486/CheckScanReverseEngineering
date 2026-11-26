.class public final Lyads/x71;
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

    iput-object p1, p0, Lyads/x71;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/a81;Lorg/json/JSONObject;)Lyads/a81;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v6

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v2

    new-instance v10, Lyads/a81;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lyads/a81;->a:Lyads/zw2;

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    iget-object v4, v0, Lyads/x71;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->l1:Lcl4;

    const-string v4, "cancel_actions"

    move v5, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    move v6, v5

    sget-object v5, Lyads/z71;->e:Lyads/m36;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lyads/a81;->b:Lyads/zw2;

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

    iget-object v3, v1, Lyads/a81;->c:Lyads/zw2;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v11

    :goto_2
    sget-object v8, Lyads/bt4;->e:Lnl3;

    sget-object v9, Lyads/z71;->g:Lyads/l66;

    const-string v4, "duration"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v9}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    if-eqz v1, :cond_3

    iget-object v3, v1, Lyads/a81;->d:Lyads/zw2;

    goto :goto_3

    :cond_3
    move-object v3, v11

    :goto_3
    iget-object v4, v0, Lyads/x71;->a:Lyads/tq3;

    iget-object v7, v4, Lyads/tq3;->l1:Lcl4;

    const-string v4, "end_actions"

    move v5, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v18

    move v6, v5

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lyads/a81;->e:Lyads/zw2;

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object v7, v11

    :goto_4
    sget-object v8, Lyads/bt4;->a:Lnl3;

    const-string v4, "end_value"

    move-object/from16 v3, p3

    move-object v9, v14

    invoke-static/range {v2 .. v9}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    if-eqz v1, :cond_5

    iget-object v4, v1, Lyads/a81;->f:Lyads/zw2;

    goto :goto_5

    :cond_5
    move-object v4, v11

    :goto_5
    const-string v5, "id"

    invoke-static {v2, v3, v5, v6, v4}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v21

    sget-object v5, Lyads/z71;->f:Lyads/m36;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lyads/a81;->g:Lyads/zw2;

    move-object v7, v4

    goto :goto_6

    :cond_6
    move-object v7, v11

    :goto_6
    sget-object v8, Lyads/o11;->d:Lnl3;

    const-string v4, "interpolator"

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v22

    move-object/from16 v23, v9

    if-eqz v1, :cond_7

    iget-object v3, v1, Lyads/a81;->h:Lyads/zw2;

    goto :goto_7

    :cond_7
    move-object v3, v11

    :goto_7
    iget-object v0, v0, Lyads/x71;->a:Lyads/tq3;

    iget-object v7, v0, Lyads/tq3;->w2:Lcl4;

    const-string v4, "repeat_count"

    move v5, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move v6, v5

    if-eqz v1, :cond_8

    iget-object v3, v1, Lyads/a81;->i:Lyads/zw2;

    move-object v7, v3

    goto :goto_8

    :cond_8
    move-object v7, v11

    :goto_8
    sget-object v9, Lyads/z71;->h:Lyads/l66;

    const-string v4, "start_delay"

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    if-eqz v1, :cond_9

    iget-object v3, v1, Lyads/a81;->j:Lyads/zw2;

    move-object v7, v3

    goto :goto_9

    :cond_9
    move-object v7, v11

    :goto_9
    const-string v4, "start_value"

    move-object/from16 v3, p3

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v23

    invoke-static/range {v2 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v17

    if-eqz v1, :cond_a

    iget-object v11, v1, Lyads/a81;->k:Lyads/zw2;

    :cond_a
    const-string v1, "variable_name"

    invoke-static {v2, v3, v1, v6, v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v1

    move-object v7, v10

    move-object v8, v12

    move-object v9, v13

    move-object v12, v14

    move-object v10, v15

    move-object/from16 v11, v18

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v7 .. v18}, Lyads/a81;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v7
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0, p2}, Lyads/x71;->a(Lyads/ys4;Lyads/a81;Lorg/json/JSONObject;)Lyads/a81;

    move-result-object p0

    return-object p0
.end method
