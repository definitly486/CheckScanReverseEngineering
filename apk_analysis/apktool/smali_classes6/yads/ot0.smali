.class public final Lyads/ot0;
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

    iput-object p1, p0, Lyads/ot0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p2, Lyads/rt0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ot0;->a(Lyads/ys4;Lyads/rt0;Lorg/json/JSONObject;)Lyads/lt0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/rt0;Lorg/json/JSONObject;)Lyads/lt0;
    .locals 7

    instance-of v0, p2, Lyads/pt0;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/jt0;

    iget-object p0, p0, Lyads/ot0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->u:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n60;

    check-cast p2, Lyads/pt0;

    iget-object p2, p2, Lyads/pt0;->a:Lyads/o60;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/k60;

    iget-object p2, p2, Lyads/o60;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "value"

    invoke-static {p1, p2, p3, v2, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/k60;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/jt0;-><init>(Lyads/k60;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/qt0;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/kt0;

    iget-object p0, p0, Lyads/ot0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/u60;

    check-cast p2, Lyads/qt0;

    iget-object p2, p2, Lyads/qt0;->a:Lyads/v60;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/r60;

    iget-object v2, p2, Lyads/v60;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/r60;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/kt0;-><init>(Lyads/r60;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
