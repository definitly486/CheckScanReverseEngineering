.class public final Lyads/uk1;
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

    iput-object p1, p0, Lyads/uk1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p2, Lyads/cl1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/uk1;->a(Lyads/ys4;Lyads/cl1;Lorg/json/JSONObject;)Lyads/mk1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/cl1;Lorg/json/JSONObject;)Lyads/mk1;
    .locals 7

    instance-of v0, p2, Lyads/bl1;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/lk1;

    iget-object p0, p0, Lyads/uk1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->n4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yk1;

    check-cast p2, Lyads/bl1;

    iget-object p2, p2, Lyads/bl1;->a:Lyads/zk1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/vk1;

    iget-object p2, p2, Lyads/zk1;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "pattern"

    invoke-static {p1, p2, p3, v2, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/vk1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/lk1;-><init>(Lyads/vk1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/al1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/kk1;

    iget-object p0, p0, Lyads/uk1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qk1;

    check-cast p2, Lyads/al1;

    iget-object p2, p2, Lyads/al1;->a:Lyads/rk1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/nk1;

    iget-object v2, p2, Lyads/rk1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    const-string v4, "condition"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/nk1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/kk1;-><init>(Lyads/nk1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
