.class public final Lyads/av1;
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

    iput-object p1, p0, Lyads/av1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p2, Lyads/iv1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/av1;->a(Lyads/ys4;Lyads/iv1;Lorg/json/JSONObject;)Lyads/ru1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/iv1;Lorg/json/JSONObject;)Lyads/ru1;
    .locals 8

    instance-of v0, p2, Lyads/gv1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/pu1;

    iget-object p0, p0, Lyads/av1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vu1;

    check-cast p2, Lyads/gv1;

    iget-object p2, p2, Lyads/gv1;->a:Lyads/xu1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/su1;

    iget-object v2, p2, Lyads/xu1;->a:Lyads/zw2;

    sget-object v5, Lyads/wu1;->b:Lyads/m36;

    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/wu1;->a:Lyads/xr2;

    const-string v4, "unit"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    iget-object v2, p2, Lyads/xu1;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Lyads/su1;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/pu1;-><init>(Lyads/su1;)V

    return-object v0

    :cond_1
    move-object v1, p1

    move-object v3, p3

    instance-of p1, p2, Lyads/hv1;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/qu1;

    iget-object p0, p0, Lyads/av1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ev1;

    check-cast p2, Lyads/hv1;

    iget-object p2, p2, Lyads/hv1;->a:Lyads/fv1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/bv1;

    iget-object v2, p2, Lyads/fv1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/bv1;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/qu1;-><init>(Lyads/bv1;)V

    return-object p1

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
