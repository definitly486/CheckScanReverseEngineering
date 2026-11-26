.class public final Lyads/ma2;
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

    iput-object p1, p0, Lyads/ma2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/pa2;Lorg/json/JSONObject;)Lyads/pa2;
    .locals 11

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/pa2;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/pa2;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "color"

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p3

    move-object v9, v7

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/pa2;->b:Lyads/zw2;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/oa2;->e:Lyads/l66;

    const-string v2, "density"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz p2, :cond_2

    iget-object v2, p2, Lyads/pa2;->c:Lyads/zw2;

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v8

    :goto_2
    sget-object v6, Lyads/bt4;->c:Lnl3;

    const-string v2, "is_animated"

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v9

    if-eqz p2, :cond_3

    iget-object v2, p2, Lyads/pa2;->d:Lyads/zw2;

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, v8

    :goto_3
    const-string v2, "is_enabled"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    if-eqz p2, :cond_4

    iget-object v8, p2, Lyads/pa2;->e:Lyads/zw2;

    :cond_4
    iget-object p0, p0, Lyads/ma2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->w3:Lcl4;

    const-string v2, "particle_size"

    move v3, v4

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    move-object v5, p1

    move-object v8, v9

    move-object v7, v10

    move-object v10, p0

    move-object v9, v6

    move-object v6, p3

    invoke-direct/range {v5 .. v10}, Lyads/pa2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0, p2}, Lyads/ma2;->a(Lyads/ys4;Lyads/pa2;Lorg/json/JSONObject;)Lyads/pa2;

    move-result-object p0

    return-object p0
.end method
