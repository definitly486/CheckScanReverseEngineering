.class public final Lyads/s12;
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

    iput-object p1, p0, Lyads/s12;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p2, Lyads/u12;

    invoke-virtual {p0, p1, p2, p3}, Lyads/s12;->a(Lyads/ys4;Lyads/u12;Lorg/json/JSONObject;)Lyads/p12;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/u12;Lorg/json/JSONObject;)Lyads/p12;
    .locals 12

    new-instance v0, Lyads/p12;

    iget-object v2, p2, Lyads/u12;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/s12;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->N2:Lcl4;

    iget-object v6, p0, Lyads/tq3;->L2:Lcl4;

    const-string v4, "distance"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ac1;

    iget-object v2, p2, Lyads/u12;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/t12;->g:Lyads/l66;

    sget-object v8, Lyads/t12;->a:Lyads/xr2;

    const-string v4, "duration"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    move-object p3, v5

    move-object v9, v6

    if-nez p1, :cond_0

    move-object p1, v8

    :cond_0
    iget-object v2, p2, Lyads/u12;->c:Lyads/zw2;

    sget-object v5, Lyads/t12;->e:Lyads/m36;

    sget-object v6, Lyads/o12;->d:Lnl3;

    sget-object v7, Lyads/t12;->b:Lyads/xr2;

    const-string v4, "edge"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v2

    :goto_0
    iget-object v2, p2, Lyads/u12;->d:Lyads/zw2;

    sget-object v5, Lyads/t12;->f:Lyads/m36;

    sget-object v6, Lyads/o11;->d:Lnl3;

    sget-object v7, Lyads/t12;->c:Lyads/xr2;

    const-string v4, "interpolator"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v11, v7

    goto :goto_1

    :cond_2
    move-object v11, v2

    :goto_1
    iget-object v2, p2, Lyads/u12;->e:Lyads/zw2;

    sget-object v7, Lyads/t12;->h:Lyads/l66;

    sget-object v8, Lyads/t12;->d:Lyads/xr2;

    const-string v4, "start_delay"

    move-object v5, p3

    move-object v6, v9

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_3

    move-object v5, v8

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move-object v4, v11

    goto :goto_3

    :cond_3
    move-object v5, p2

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v5}, Lyads/p12;-><init>(Lyads/ac1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
