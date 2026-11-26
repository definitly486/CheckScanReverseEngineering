.class public final Lyads/a12;
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

    iput-object p1, p0, Lyads/a12;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p2, Lyads/e12;

    invoke-virtual {p0, p1, p2, p3}, Lyads/a12;->a(Lyads/ys4;Lyads/e12;Lorg/json/JSONObject;)Lyads/x02;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/e12;Lorg/json/JSONObject;)Lyads/x02;
    .locals 8

    instance-of v0, p2, Lyads/b12;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/u02;

    iget-object p0, p0, Lyads/a12;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/df1;

    check-cast p2, Lyads/b12;

    iget-object p2, p2, Lyads/b12;->a:Lyads/ff1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/df1;->a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/u02;-><init>(Lyads/af1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/c12;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/v02;

    iget-object p0, p0, Lyads/a12;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sp1;

    check-cast p2, Lyads/c12;

    iget-object p2, p2, Lyads/c12;->a:Lyads/up1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/sp1;->a(Lyads/ys4;Lyads/up1;Lorg/json/JSONObject;)Lyads/pp1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/v02;-><init>(Lyads/pp1;)V

    return-object v0

    :cond_1
    instance-of v0, p2, Lyads/d12;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/w02;

    iget-object p0, p0, Lyads/a12;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hj2;

    check-cast p2, Lyads/d12;

    iget-object p2, p2, Lyads/d12;->a:Lyads/ij2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/ej2;

    iget-object v3, p2, Lyads/ij2;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    const-string v5, "constrained"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v3, p2, Lyads/ij2;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/hj2;->a:Lyads/tq3;

    iget-object v6, p3, Lyads/tq3;->S6:Lcl4;

    iget-object v7, p3, Lyads/tq3;->Q6:Lcl4;

    const-string v5, "max_size"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/h12;

    iget-object v3, p2, Lyads/ij2;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/hj2;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->S6:Lcl4;

    iget-object v7, p0, Lyads/tq3;->Q6:Lcl4;

    const-string v5, "min_size"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h12;

    invoke-direct {v1, p3, p0, p1}, Lyads/ej2;-><init>(Lyads/h12;Lyads/h12;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    return-object v0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
