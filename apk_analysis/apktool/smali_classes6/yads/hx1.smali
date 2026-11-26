.class public final Lyads/hx1;
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

    iput-object p1, p0, Lyads/hx1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/ex1;

    iget-object p0, p0, Lyads/hx1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bf1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/bf1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/ex1;-><init>(Lyads/af1;)V

    return-object v0

    :cond_0
    const-string v1, "relative"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lyads/fx1;

    iget-object p0, p0, Lyads/hx1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ux1;

    sget-object v4, Lyads/yx1;->a:Lyads/m36;

    sget-object v5, Lyads/tx1;->d:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ux1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/fx1;-><init>(Lyads/ux1;)V

    return-object v0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p2, p1, Lyads/mx1;

    if-eqz p2, :cond_2

    check-cast p1, Lyads/mx1;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/hx1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jx1;

    invoke-virtual {p0, v1, p1, v2}, Lyads/jx1;->a(Lyads/ys4;Lyads/mx1;Lorg/json/JSONObject;)Lyads/gx1;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
