.class public final Lyads/q12;
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

    iput-object p1, p0, Lyads/q12;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/q12;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/p12;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/p12;
    .locals 13

    new-instance v0, Lyads/p12;

    iget-object p0, p0, Lyads/q12;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->L2:Lcl4;

    const-string v1, "distance"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lyads/ac1;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/t12;->g:Lyads/l66;

    sget-object v8, Lyads/t12;->a:Lyads/xr2;

    const-string v4, "duration"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    move-object v9, v5

    move-object v10, v6

    if-nez p0, :cond_0

    move-object p0, v8

    :cond_0
    sget-object v5, Lyads/t12;->e:Lyads/m36;

    sget-object v6, Lyads/o12;->d:Lnl3;

    sget-object v8, Lyads/t12;->b:Lyads/xr2;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "edge"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v11, v8

    goto :goto_0

    :cond_1
    move-object v11, v4

    :goto_0
    sget-object v5, Lyads/t12;->f:Lyads/m36;

    sget-object v6, Lyads/o11;->d:Lnl3;

    sget-object v8, Lyads/t12;->c:Lyads/xr2;

    const-string v4, "interpolator"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v12, v8

    goto :goto_1

    :cond_2
    move-object v12, v4

    :goto_1
    sget-object v7, Lyads/t12;->h:Lyads/l66;

    sget-object v8, Lyads/t12;->d:Lyads/xr2;

    const-string v4, "start_delay"

    move-object v2, p1

    move-object v3, p2

    move-object v5, v9

    move-object v6, v10

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v5, v8

    :goto_2
    move-object v2, p0

    move-object v3, v11

    move-object v4, v12

    goto :goto_3

    :cond_3
    move-object v5, p1

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v5}, Lyads/p12;-><init>(Lyads/ac1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
