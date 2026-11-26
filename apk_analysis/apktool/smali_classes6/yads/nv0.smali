.class public final Lyads/nv0;
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

    iput-object p1, p0, Lyads/nv0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, Lyads/sv0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/nv0;->a(Lyads/ys4;Lyads/sv0;Lorg/json/JSONObject;)Lyads/kv0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/sv0;Lorg/json/JSONObject;)Lyads/kv0;
    .locals 8

    instance-of v0, p2, Lyads/qv0;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/iv0;

    iget-object p0, p0, Lyads/nv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->P9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kp4;

    check-cast p2, Lyads/qv0;

    iget-object p2, p2, Lyads/qv0;->a:Lyads/mp4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/hp4;

    iget-object v2, p2, Lyads/mp4;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/lp4;->a:Lyads/l66;

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/hp4;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/iv0;-><init>(Lyads/hp4;)V

    return-object v0

    :cond_0
    move-object v1, p1

    move-object v3, p3

    instance-of p1, p2, Lyads/pv0;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/hv0;

    iget-object p0, p0, Lyads/nv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->A9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kf3;

    check-cast p2, Lyads/pv0;

    iget-object p2, p2, Lyads/pv0;->a:Lyads/mf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/hf3;

    iget-object v2, p2, Lyads/mf3;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/lf3;->a:Lyads/l66;

    const-string v4, "value"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/hf3;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/hv0;-><init>(Lyads/hf3;)V

    return-object p1

    :cond_1
    instance-of p1, p2, Lyads/rv0;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/jv0;

    iget-object p0, p0, Lyads/nv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->V9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jq5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/gq5;

    invoke-direct {p0}, Lyads/gq5;-><init>()V

    invoke-direct {p1, p0}, Lyads/jv0;-><init>(Lyads/gq5;)V

    return-object p1

    :cond_2
    instance-of p1, p2, Lyads/ov0;

    if-eqz p1, :cond_3

    new-instance p1, Lyads/gv0;

    iget-object p0, p0, Lyads/nv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pn2;

    invoke-direct {p0}, Lyads/pn2;-><init>()V

    invoke-direct {p1, p0}, Lyads/gv0;-><init>(Lyads/pn2;)V

    return-object p1

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
