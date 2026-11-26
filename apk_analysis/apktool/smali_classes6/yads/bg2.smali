.class public final Lyads/bg2;
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

    iput-object p1, p0, Lyads/bg2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 447
    check-cast p2, Lyads/lg2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/bg2;->a(Lyads/ys4;Lyads/lg2;Lorg/json/JSONObject;)Lyads/uf2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/lg2;Lorg/json/JSONObject;)Lyads/uf2;
    .locals 8

    instance-of v0, p2, Lyads/jg2;

    const-string v1, "value"

    const-string v2, "name"

    if-eqz v0, :cond_0

    new-instance v0, Lyads/sf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->ba:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xr5;

    check-cast p2, Lyads/jg2;

    iget-object p2, p2, Lyads/jg2;->a:Lyads/yr5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ur5;

    iget-object v3, p2, Lyads/yr5;->a:Lyads/zw2;

    invoke-static {v3, p3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object p2, p2, Lyads/yr5;->b:Lyads/zw2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, p3, v1, v3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lyads/ur5;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/sf2;-><init>(Lyads/ur5;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/hg2;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/qf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bp4;

    check-cast p2, Lyads/hg2;

    iget-object p2, p2, Lyads/hg2;->a:Lyads/cp4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/yo4;

    iget-object v1, p2, Lyads/cp4;->a:Lyads/zw2;

    invoke-static {v1, p3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p2, Lyads/cp4;->b:Lyads/zw2;

    sget-object v6, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    const-string v5, "value"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/yo4;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/qf2;-><init>(Lyads/yo4;)V

    return-object v0

    :cond_1
    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, p3

    instance-of p3, p2, Lyads/gg2;

    if-eqz p3, :cond_2

    new-instance p3, Lyads/pf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->G9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sm3;

    check-cast p2, Lyads/gg2;

    iget-object p2, p2, Lyads/gg2;->a:Lyads/tm3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pm3;

    iget-object v0, p2, Lyads/tm3;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p2, Lyads/tm3;->b:Lyads/zw2;

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    const-string v5, "value"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/pm3;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/pf2;-><init>(Lyads/pm3;)V

    return-object p3

    :cond_2
    instance-of p3, p2, Lyads/dg2;

    if-eqz p3, :cond_3

    new-instance p3, Lyads/mf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/su;

    check-cast p2, Lyads/dg2;

    iget-object p2, p2, Lyads/dg2;->a:Lyads/tu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pu;

    iget-object v0, p2, Lyads/tu;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p2, Lyads/tu;->b:Lyads/zw2;

    sget-object v6, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    const-string v5, "value"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/pu;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/mf2;-><init>(Lyads/pu;)V

    return-object p3

    :cond_3
    instance-of p3, p2, Lyads/eg2;

    if-eqz p3, :cond_4

    new-instance p3, Lyads/nf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w30;

    check-cast p2, Lyads/eg2;

    iget-object p2, p2, Lyads/eg2;->a:Lyads/x30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/t30;

    iget-object v0, p2, Lyads/x30;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p2, Lyads/x30;->b:Lyads/zw2;

    sget-object v6, Lyads/w36;->f:Lyads/p36;

    sget-object v7, Lyads/bt4;->a:Lnl3;

    const-string v5, "value"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/t30;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/nf2;-><init>(Lyads/t30;)V

    return-object p3

    :cond_4
    instance-of p3, p2, Lyads/kg2;

    if-eqz p3, :cond_5

    new-instance p3, Lyads/tf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->ha:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n56;

    check-cast p2, Lyads/kg2;

    iget-object p2, p2, Lyads/kg2;->a:Lyads/o56;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/k56;

    iget-object v0, p2, Lyads/o56;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p2, Lyads/o56;->b:Lyads/zw2;

    sget-object v6, Lyads/w36;->e:Lyads/v36;

    sget-object v7, Lyads/bt4;->b:Lnl3;

    const-string v5, "value"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/k56;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/tf2;-><init>(Lyads/k56;)V

    return-object p3

    :cond_5
    instance-of p3, p2, Lyads/fg2;

    if-eqz p3, :cond_6

    new-instance p3, Lyads/of2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fp0;

    check-cast p2, Lyads/fg2;

    iget-object p2, p2, Lyads/fg2;->a:Lyads/gp0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/cp0;

    iget-object v0, p2, Lyads/gp0;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lyads/gp0;->b:Lyads/zw2;

    sget-object v0, Lyads/w36;->h:Lyads/q36;

    invoke-static {v2, p2, v4, v1, v0}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/cp0;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/of2;-><init>(Lyads/cp0;)V

    return-object p3

    :cond_6
    instance-of p3, p2, Lyads/cg2;

    if-eqz p3, :cond_7

    new-instance p3, Lyads/lf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->f:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/mj;

    check-cast p2, Lyads/cg2;

    iget-object p2, p2, Lyads/cg2;->a:Lyads/nj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jj;

    iget-object v0, p2, Lyads/nj;->a:Lyads/zw2;

    invoke-static {v0, v4, p1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lyads/nj;->b:Lyads/zw2;

    sget-object v0, Lyads/w36;->g:Lyads/t36;

    invoke-static {v2, p2, v4, v1, v0}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/jj;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/lf2;-><init>(Lyads/jj;)V

    return-object p3

    :cond_7
    instance-of p1, p2, Lyads/ig2;

    if-eqz p1, :cond_8

    new-instance p1, Lyads/rf2;

    iget-object p0, p0, Lyads/bg2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->S9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/i25;

    check-cast p2, Lyads/ig2;

    iget-object p2, p2, Lyads/ig2;->a:Lyads/k25;

    invoke-virtual {p0, v2, p2, v4}, Lyads/i25;->a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/f25;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/rf2;-><init>(Lyads/f25;)V

    return-object p1

    :cond_8
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
