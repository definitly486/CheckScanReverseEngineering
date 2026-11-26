.class public final Lyads/x82;
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

    iput-object p1, p0, Lyads/x82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Lyads/x72;

    iget-object v3, v0, Lyads/x82;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->w8:Lcl4;

    const-string v4, "accessibility"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyads/u72;

    sget-object v4, Lyads/a92;->g:Lyads/m36;

    sget-object v5, Lyads/d82;->d:Lnl3;

    sget-object v7, Lyads/a92;->a:Lyads/xr2;

    sget-object v3, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "alignment_vertical"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v10, v7

    goto :goto_0

    :cond_0
    move-object v10, v3

    :goto_0
    iget-object v3, v0, Lyads/x82;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->v3:Lcl4;

    const-string v4, "height"

    invoke-static {v1, v2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/af1;

    if-nez v3, :cond_1

    sget-object v3, Lyads/a92;->b:Lyads/af1;

    :cond_1
    move-object v11, v3

    sget-object v4, Lyads/a92;->h:Lyads/m36;

    sget-object v5, Lyads/w72;->d:Lnl3;

    sget-object v7, Lyads/a92;->c:Lyads/xr2;

    const-string v3, "indexing_direction"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v12, v7

    goto :goto_1

    :cond_2
    move-object v12, v3

    :goto_1
    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/a92;->d:Lyads/xr2;

    const-string v3, "preload_required"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    move-object v13, v6

    if-nez v3, :cond_3

    move-object v14, v7

    goto :goto_2

    :cond_3
    move-object v14, v3

    :goto_2
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/a92;->j:Lyads/l66;

    const-string v3, "start"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v15

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    const-string v5, "tint_color"

    invoke-static {v1, v2, v5, v3, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v16

    sget-object v4, Lyads/a92;->i:Lyads/m36;

    sget-object v5, Lyads/y41;->d:Lnl3;

    sget-object v7, Lyads/a92;->e:Lyads/xr2;

    const-string v3, "tint_mode"

    move-object v6, v13

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    const-string v3, "url"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v3

    iget-object v0, v0, Lyads/x82;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->v3:Lcl4;

    const-string v4, "width"

    invoke-static {v1, v2, v4, v0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/af1;

    if-nez v0, :cond_5

    sget-object v0, Lyads/a92;->f:Lyads/af1;

    :cond_5
    move-object v1, v9

    move-object v2, v10

    move-object v4, v12

    move-object v5, v14

    move-object v6, v15

    move-object v10, v0

    move-object v9, v3

    move-object v0, v8

    move-object v3, v11

    move-object v8, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v10}, Lyads/x72;-><init>(Lyads/u72;Lyads/as2;Lyads/af1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/af1;)V

    return-object v0
.end method
