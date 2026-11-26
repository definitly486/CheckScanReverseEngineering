.class public final Lyads/kw1;
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

    iput-object p1, p0, Lyads/kw1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixed"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v7, Lyads/hw1;

    iget-object v0, p0, Lyads/kw1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->X5:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vw1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lyads/uw1;

    sget-object v3, Lyads/yw1;->b:Lyads/m36;

    sget-object v4, Lyads/g12;->d:Lnl3;

    sget-object v6, Lyads/yw1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "unit"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v4, Lyads/bt4;->e:Lnl3;

    const-string v2, "value"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {v8, v6, v0}, Lyads/uw1;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v7, v8}, Lyads/hw1;-><init>(Lyads/uw1;)V

    return-object v7

    :cond_1
    const-string v2, "relative"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v6, Lyads/iw1;

    iget-object v0, p0, Lyads/kw1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->d6:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ox1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lyads/nx1;

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    sget-object v4, Lyads/bt4;->d:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {v7, v0}, Lyads/nx1;-><init>(Lyads/as2;)V

    invoke-direct {v6, v7}, Lyads/iw1;-><init>(Lyads/nx1;)V

    return-object v6

    :cond_2
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v3

    invoke-interface {v3, v1}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v4, v3, Lyads/pw1;

    if-eqz v4, :cond_3

    check-cast v3, Lyads/pw1;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    iget-object v0, p0, Lyads/kw1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->W5:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mw1;

    invoke-virtual {v0, p1, v3, p2}, Lyads/mw1;->a(Lyads/ys4;Lyads/pw1;Lorg/json/JSONObject;)Lyads/jw1;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "type"

    invoke-static {p2, v0, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v1, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object v0

    throw v0
.end method
