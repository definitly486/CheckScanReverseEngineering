.class public final Lyads/na2;
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

    iput-object p1, p0, Lyads/na2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p2, Lyads/pa2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/na2;->a(Lyads/ys4;Lyads/pa2;Lorg/json/JSONObject;)Lyads/ka2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/pa2;Lorg/json/JSONObject;)Lyads/ka2;
    .locals 9

    new-instance v0, Lyads/ka2;

    iget-object v2, p2, Lyads/pa2;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/pa2;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/oa2;->e:Lyads/l66;

    sget-object v8, Lyads/oa2;->a:Lyads/xr2;

    const-string v4, "density"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p3

    :goto_0
    iget-object v2, p2, Lyads/pa2;->c:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/oa2;->b:Lyads/xr2;

    const-string v4, "is_animated"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_1

    move-object p3, v7

    :cond_1
    iget-object v2, p2, Lyads/pa2;->d:Lyads/zw2;

    sget-object v7, Lyads/oa2;->c:Lyads/xr2;

    const-string v4, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    iget-object v2, p2, Lyads/pa2;->e:Lyads/zw2;

    iget-object p0, p0, Lyads/na2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->x3:Lcl4;

    iget-object v6, p0, Lyads/tq3;->v3:Lcl4;

    const-string v4, "particle_size"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_3

    sget-object p0, Lyads/oa2;->d:Lyads/af1;

    :cond_3
    move-object v5, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v7

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lyads/ka2;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/af1;)V

    return-object v0
.end method
