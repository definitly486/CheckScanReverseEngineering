.class public final Lyads/y82;
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

    iput-object p1, p0, Lyads/y82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/db2;

    iget-object v2, v0, Lyads/y82;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->x8:Lcl4;

    const-string v3, "accessibility"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v10

    move v5, v4

    sget-object v4, Lyads/a92;->g:Lyads/m36;

    sget-object v7, Lyads/d82;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "alignment_vertical"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    iget-object v2, v0, Lyads/y82;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->w3:Lcl4;

    const-string v3, "height"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    move v5, v4

    sget-object v4, Lyads/a92;->h:Lyads/m36;

    const/4 v6, 0x0

    sget-object v7, Lyads/w72;->d:Lnl3;

    const-string v3, "indexing_direction"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    const-string v3, "preload_required"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    move-object v15, v8

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/a92;->j:Lyads/l66;

    const-string v3, "start"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    const-string v3, "tint_color"

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v15

    sget-object v4, Lyads/a92;->i:Lyads/m36;

    sget-object v7, Lyads/y41;->d:Lnl3;

    const-string v3, "tint_mode"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v17

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v7, Lyads/bt4;->b:Lnl3;

    const-string v3, "url"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    iget-object v0, v0, Lyads/y82;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->w3:Lcl4;

    const-string v2, "width"

    const/4 v4, 0x0

    move v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object v7, v10

    move-object v8, v11

    move-object v10, v13

    move-object v11, v14

    move-object v13, v15

    move-object/from16 v14, v17

    move-object v15, v6

    move-object v6, v9

    move-object v9, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lyads/db2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
