.class public final Lyads/k92;
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

    iput-object p1, p0, Lyads/k92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p2, Lyads/n92;

    invoke-virtual {p0, p1, p2, p3}, Lyads/k92;->a(Lyads/ys4;Lyads/n92;Lorg/json/JSONObject;)Lyads/h92;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/n92;Lorg/json/JSONObject;)Lyads/h92;
    .locals 8

    instance-of v0, p2, Lyads/m92;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/g92;

    iget-object p0, p0, Lyads/k92;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w22;

    check-cast p2, Lyads/m92;

    iget-object p2, p2, Lyads/m92;->a:Lyads/x22;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/t22;

    iget-object v2, p2, Lyads/x22;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/t22;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/g92;-><init>(Lyads/t22;)V

    return-object v0

    :cond_0
    move-object v1, p1

    move-object v3, p3

    instance-of p1, p2, Lyads/l92;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/f92;

    iget-object p0, p0, Lyads/k92;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z61;

    check-cast p2, Lyads/l92;

    iget-object p2, p2, Lyads/l92;->a:Lyads/b71;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyads/w61;

    iget-object v2, p2, Lyads/b71;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "color"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v0

    iget-object v2, p2, Lyads/b71;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/a71;->a:Lyads/l66;

    const-string v4, "corner_radius"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v7

    iget-object v2, p2, Lyads/b71;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/z61;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, p0, Lyads/tq3;->X2:Lcl4;

    const-string v4, "paddings"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yc1;

    invoke-direct {p3, v0, v7, p0}, Lyads/w61;-><init>(Lyads/as2;Lyads/as2;Lyads/yc1;)V

    invoke-direct {p1, p3}, Lyads/f92;-><init>(Lyads/w61;)V

    return-object p1

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
