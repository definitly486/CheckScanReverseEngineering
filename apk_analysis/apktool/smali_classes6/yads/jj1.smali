.class public final Lyads/jj1;
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

    iput-object p1, p0, Lyads/jj1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p2, Lyads/mj1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/jj1;->a(Lyads/ys4;Lyads/mj1;Lorg/json/JSONObject;)Lyads/gj1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/mj1;Lorg/json/JSONObject;)Lyads/gj1;
    .locals 8

    instance-of v0, p2, Lyads/kj1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/ej1;

    iget-object p0, p0, Lyads/jj1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xb1;

    check-cast p2, Lyads/kj1;

    iget-object p2, p2, Lyads/kj1;->a:Lyads/zb1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/ub1;

    iget-object v3, p2, Lyads/zb1;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/xb1;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->x3:Lcl4;

    iget-object v7, p0, Lyads/tq3;->v3:Lcl4;

    const-string v5, "space_between_centers"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_0

    sget-object p0, Lyads/yb1;->a:Lyads/af1;

    :cond_0
    invoke-direct {v1, p0}, Lyads/ub1;-><init>(Lyads/af1;)V

    invoke-direct {v0, v1}, Lyads/ej1;-><init>(Lyads/ub1;)V

    return-object v0

    :cond_1
    move-object v2, p1

    move-object v4, p3

    instance-of p1, p2, Lyads/lj1;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/fj1;

    iget-object p0, p0, Lyads/jj1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->t7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/i42;

    check-cast p2, Lyads/lj1;

    iget-object p2, p2, Lyads/lj1;->a:Lyads/k42;

    invoke-virtual {p0, v2, p2, v4}, Lyads/i42;->a(Lyads/ys4;Lyads/k42;Lorg/json/JSONObject;)Lyads/f42;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/fj1;-><init>(Lyads/f42;)V

    return-object p1

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
