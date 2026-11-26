.class public final Lyads/h41;
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

    iput-object p1, p0, Lyads/h41;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 197
    check-cast p2, Lyads/o41;

    invoke-virtual {p0, p1, p2, p3}, Lyads/h41;->a(Lyads/ys4;Lyads/o41;Lorg/json/JSONObject;)Lyads/m31;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/o41;Lorg/json/JSONObject;)Lyads/m31;
    .locals 7

    instance-of v0, p2, Lyads/k41;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/i31;

    iget-object p0, p0, Lyads/h41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->O4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kp1;

    check-cast p2, Lyads/k41;

    iget-object p2, p2, Lyads/k41;->a:Lyads/np1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/kp1;->a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/dp1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/i31;-><init>(Lyads/dp1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/m41;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/k31;

    iget-object p0, p0, Lyads/h41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cx1;

    check-cast p2, Lyads/m41;

    iget-object p2, p2, Lyads/m41;->a:Lyads/by1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/cx1;->a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/gw1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/k31;-><init>(Lyads/gw1;)V

    return-object v0

    :cond_1
    instance-of v0, p2, Lyads/j41;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/h31;

    iget-object p0, p0, Lyads/h41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->V3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ei1;

    check-cast p2, Lyads/j41;

    iget-object p2, p2, Lyads/j41;->a:Lyads/gi1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ei1;->a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/bi1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/h31;-><init>(Lyads/bi1;)V

    return-object v0

    :cond_2
    instance-of v0, p2, Lyads/n41;

    if-eqz v0, :cond_3

    new-instance v0, Lyads/l31;

    iget-object p0, p0, Lyads/h41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w22;

    check-cast p2, Lyads/n41;

    iget-object p2, p2, Lyads/n41;->a:Lyads/x22;

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

    invoke-direct {v0, p0}, Lyads/l31;-><init>(Lyads/t22;)V

    return-object v0

    :cond_3
    move-object v1, p1

    move-object v3, p3

    instance-of p1, p2, Lyads/l41;

    if-eqz p1, :cond_4

    new-instance p1, Lyads/j31;

    iget-object p0, p0, Lyads/h41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->a5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dq1;

    check-cast p2, Lyads/l41;

    iget-object p2, p2, Lyads/l41;->a:Lyads/eq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyads/aq1;

    iget-object v2, p2, Lyads/eq1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v0

    iget-object v2, p2, Lyads/eq1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/dq1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->G:Lcl4;

    iget-object v6, p0, Lyads/tq3;->E:Lcl4;

    const-string v4, "insets"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cr0;

    invoke-direct {p3, v0, p0}, Lyads/aq1;-><init>(Lyads/as2;Lyads/cr0;)V

    invoke-direct {p1, p3}, Lyads/j31;-><init>(Lyads/aq1;)V

    return-object p1

    :cond_4
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
