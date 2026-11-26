.class public final Lyads/ci1;
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

    iput-object p1, p0, Lyads/ci1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ci1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/bi1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/bi1;
    .locals 15

    new-instance v0, Lyads/bi1;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/fi1;->i:Lyads/l66;

    sget-object v7, Lyads/fi1;->a:Lyads/xr2;

    const-string v3, "alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v7

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    sget-object v11, Lyads/fi1;->f:Lyads/m36;

    sget-object v12, Lyads/f11;->d:Lnl3;

    sget-object v14, Lyads/fi1;->b:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "content_alignment_horizontal"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v14

    :cond_1
    sget-object v11, Lyads/fi1;->g:Lyads/m36;

    sget-object v12, Lyads/h11;->d:Lnl3;

    sget-object v14, Lyads/fi1;->c:Lyads/xr2;

    const-string v10, "content_alignment_vertical"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v14

    :cond_2
    iget-object p0, p0, Lyads/ci1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j3:Lcl4;

    const-string v4, "filters"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static {v8, v9, v4, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    sget-object v11, Lyads/w36;->e:Lyads/v36;

    sget-object v12, Lyads/bt4;->b:Lnl3;

    const-string v10, "image_url"

    invoke-static/range {v8 .. v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v5

    sget-object v11, Lyads/w36;->a:Lyads/o36;

    sget-object v12, Lyads/bt4;->c:Lnl3;

    sget-object v14, Lyads/fi1;->d:Lyads/xr2;

    const-string v10, "preload_required"

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    if-nez p0, :cond_3

    move-object v6, v14

    goto :goto_1

    :cond_3
    move-object v6, p0

    :goto_1
    sget-object v11, Lyads/fi1;->h:Lyads/m36;

    sget-object v12, Lyads/vi1;->d:Lnl3;

    sget-object v14, Lyads/fi1;->e:Lyads/xr2;

    const-string v10, "scale"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    if-nez p0, :cond_4

    move-object v7, v14

    goto :goto_2

    :cond_4
    move-object v7, p0

    :goto_2
    invoke-direct/range {v0 .. v7}, Lyads/bi1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
