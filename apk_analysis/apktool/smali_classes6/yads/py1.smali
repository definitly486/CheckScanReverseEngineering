.class public final Lyads/py1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/sy1;
    .locals 17

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p0 .. p0}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/sy1;

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lyads/sy1;->a:Lyads/zw2;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/ry1;->h:Lyads/l66;

    move-object v4, v3

    const-string v3, "duration"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    move-object v12, v4

    move-object v13, v7

    sget-object v4, Lyads/ry1;->g:Lyads/m36;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lyads/sy1;->b:Lyads/zw2;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v10

    :goto_1
    sget-object v7, Lyads/o11;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "interpolator"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lyads/sy1;->c:Lyads/zw2;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v10

    :goto_2
    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/ry1;->i:Lyads/l66;

    const-string v3, "pivot_x"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    if-eqz v0, :cond_3

    iget-object v2, v0, Lyads/sy1;->d:Lyads/zw2;

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v10

    :goto_3
    sget-object v8, Lyads/ry1;->j:Lyads/l66;

    const-string v3, "pivot_y"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    if-eqz v0, :cond_4

    iget-object v2, v0, Lyads/sy1;->e:Lyads/zw2;

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v10

    :goto_4
    sget-object v8, Lyads/ry1;->k:Lyads/l66;

    const-string v3, "scale"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    if-eqz v0, :cond_5

    iget-object v10, v0, Lyads/sy1;->f:Lyads/zw2;

    :cond_5
    sget-object v7, Lyads/ry1;->l:Lyads/l66;

    const-string v2, "start_delay"

    move-object v0, v1

    move v4, v5

    move-object v5, v10

    move-object v3, v12

    move-object v6, v13

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v12

    move-object v6, v9

    move-object v7, v11

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v11, v8

    move-object v8, v14

    invoke-direct/range {v6 .. v12}, Lyads/sy1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 0

    const/4 p0, 0x0

    .line 143
    invoke-static {p1, p0, p2}, Lyads/py1;->a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/sy1;

    move-result-object p0

    return-object p0
.end method
