.class public final Lyads/aa1;
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

    iput-object p1, p0, Lyads/aa1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p2, Lyads/da1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/aa1;->a(Lyads/ys4;Lyads/da1;Lorg/json/JSONObject;)Lyads/x91;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/da1;Lorg/json/JSONObject;)Lyads/x91;
    .locals 8

    instance-of v0, p2, Lyads/ca1;

    if-eqz v0, :cond_0

    new-instance p1, Lyads/w91;

    iget-object p0, p0, Lyads/aa1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->h4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vj1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/sj1;

    invoke-direct {p0}, Lyads/sj1;-><init>()V

    invoke-direct {p1, p0}, Lyads/w91;-><init>(Lyads/sj1;)V

    return-object p1

    :cond_0
    instance-of v0, p2, Lyads/ba1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/v91;

    iget-object p0, p0, Lyads/aa1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->o3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/le1;

    check-cast p2, Lyads/ba1;

    iget-object p2, p2, Lyads/ba1;->a:Lyads/ne1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ie1;

    iget-object v2, p2, Lyads/ne1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/me1;->a:Lyads/l66;

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ie1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/v91;-><init>(Lyads/ie1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
