.class public final Lyads/jx1;
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

    iput-object p1, p0, Lyads/jx1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p2, Lyads/mx1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/jx1;->a(Lyads/ys4;Lyads/mx1;Lorg/json/JSONObject;)Lyads/gx1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/mx1;Lorg/json/JSONObject;)Lyads/gx1;
    .locals 7

    instance-of v0, p2, Lyads/kx1;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/ex1;

    iget-object p0, p0, Lyads/jx1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/df1;

    check-cast p2, Lyads/kx1;

    iget-object p2, p2, Lyads/kx1;->a:Lyads/ff1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/df1;->a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/ex1;-><init>(Lyads/af1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/lx1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/fx1;

    iget-object p0, p0, Lyads/jx1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->i6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xx1;

    check-cast p2, Lyads/lx1;

    iget-object p2, p2, Lyads/lx1;->a:Lyads/zx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ux1;

    iget-object v2, p2, Lyads/zx1;->a:Lyads/zw2;

    sget-object v5, Lyads/yx1;->a:Lyads/m36;

    sget-object v6, Lyads/tx1;->d:Lnl3;

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ux1;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/fx1;-><init>(Lyads/ux1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
