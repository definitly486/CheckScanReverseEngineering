.class public final Lyads/q11;
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

    iput-object p1, p0, Lyads/q11;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 20

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/t11;

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/s11;->g:Lyads/l66;

    move-object v4, v3

    const-string v3, "duration"

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    move-object v11, v4

    move-object v12, v7

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    move-object v4, v3

    const-string v3, "end_value"

    move-object v7, v6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    move-object v14, v4

    move-object v15, v7

    sget-object v4, Lyads/s11;->e:Lyads/m36;

    sget-object v7, Lyads/o11;->d:Lnl3;

    const-string v3, "interpolator"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    iget-object v2, v0, Lyads/q11;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->r1:Lcl4;

    const-string v3, "items"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v17

    move v5, v4

    sget-object v4, Lyads/s11;->f:Lyads/m36;

    const/4 v6, 0x0

    sget-object v7, Lyads/j11;->d:Lnl3;

    const-string v3, "name"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v18

    iget-object v0, v0, Lyads/q11;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->w2:Lcl4;

    const-string v2, "repeat"

    const/4 v4, 0x0

    move v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v19

    move-object v1, v0

    move v5, v3

    const/4 v0, 0x0

    sget-object v7, Lyads/s11;->h:Lyads/l66;

    const-string v2, "start_delay"

    move v4, v5

    move-object v3, v11

    move-object v6, v12

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    move-object v1, v0

    move v5, v4

    const-string v2, "start_value"

    const/4 v5, 0x0

    move-object v7, v8

    move-object v3, v14

    move-object v6, v15

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    move-object v6, v9

    move-object v7, v10

    move-object v8, v13

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v12, v19

    move-object v13, v11

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v14}, Lyads/t11;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
