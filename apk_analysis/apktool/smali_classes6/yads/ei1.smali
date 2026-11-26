.class public final Lyads/ei1;
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

    iput-object p1, p0, Lyads/ei1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p2, Lyads/gi1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ei1;->a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/bi1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/bi1;
    .locals 11

    new-instance v0, Lyads/bi1;

    iget-object v2, p2, Lyads/gi1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/fi1;->i:Lyads/l66;

    sget-object v8, Lyads/fi1;->a:Lyads/xr2;

    const-string v4, "alpha"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    iget-object v2, p2, Lyads/gi1;->b:Lyads/zw2;

    sget-object v5, Lyads/fi1;->f:Lyads/m36;

    sget-object v6, Lyads/f11;->d:Lnl3;

    sget-object v7, Lyads/fi1;->b:Lyads/xr2;

    const-string v4, "content_alignment_horizontal"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v7

    :cond_1
    iget-object v2, p2, Lyads/gi1;->c:Lyads/zw2;

    sget-object v5, Lyads/fi1;->g:Lyads/m36;

    sget-object v6, Lyads/h11;->d:Lnl3;

    sget-object v7, Lyads/fi1;->c:Lyads/xr2;

    const-string v4, "content_alignment_vertical"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_2

    move-object p3, v7

    :cond_2
    iget-object v2, p2, Lyads/gi1;->d:Lyads/zw2;

    iget-object p0, p0, Lyads/ei1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->l3:Lcl4;

    iget-object v6, p0, Lyads/tq3;->j3:Lcl4;

    const-string v4, "filters"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    iget-object v2, p2, Lyads/gi1;->e:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v9

    iget-object v2, p2, Lyads/gi1;->f:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/fi1;->d:Lyads/xr2;

    const-string v4, "preload_required"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v10, v7

    goto :goto_1

    :cond_3
    move-object v10, v2

    :goto_1
    iget-object v2, p2, Lyads/gi1;->g:Lyads/zw2;

    sget-object v5, Lyads/fi1;->h:Lyads/m36;

    sget-object v6, Lyads/vi1;->d:Lnl3;

    sget-object v7, Lyads/fi1;->e:Lyads/xr2;

    const-string v4, "scale"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_4

    :goto_2
    move-object v4, p0

    move-object v2, p1

    move-object v3, p3

    move-object v1, v8

    move-object v5, v9

    move-object v6, v10

    goto :goto_3

    :cond_4
    move-object v7, p2

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v7}, Lyads/bi1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
