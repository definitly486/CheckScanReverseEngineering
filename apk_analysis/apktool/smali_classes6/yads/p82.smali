.class public final Lyads/p82;
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

    iput-object p1, p0, Lyads/p82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p2, Lyads/s82;

    invoke-virtual {p0, p1, p2, p3}, Lyads/p82;->a(Lyads/ys4;Lyads/s82;Lorg/json/JSONObject;)Lyads/m82;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/s82;Lorg/json/JSONObject;)Lyads/m82;
    .locals 1

    instance-of v0, p2, Lyads/q82;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/k82;

    iget-object p0, p0, Lyads/p82;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->O4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kp1;

    check-cast p2, Lyads/q82;

    iget-object p2, p2, Lyads/q82;->a:Lyads/np1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/kp1;->a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/dp1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/k82;-><init>(Lyads/dp1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/r82;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/l82;

    iget-object p0, p0, Lyads/p82;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cx1;

    check-cast p2, Lyads/r82;

    iget-object p2, p2, Lyads/r82;->a:Lyads/by1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/cx1;->a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/gw1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/l82;-><init>(Lyads/gw1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
