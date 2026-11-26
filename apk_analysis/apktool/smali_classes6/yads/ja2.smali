.class public final Lyads/ja2;
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

    iput-object p1, p0, Lyads/ja2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p2, Lyads/ya2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ja2;->a(Lyads/ys4;Lyads/ya2;Lorg/json/JSONObject;)Lyads/aa2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ya2;Lorg/json/JSONObject;)Lyads/aa2;
    .locals 8

    instance-of v0, p2, Lyads/wa2;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/y92;

    iget-object p0, p0, Lyads/ja2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/na2;

    check-cast p2, Lyads/wa2;

    iget-object p2, p2, Lyads/wa2;->a:Lyads/pa2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/na2;->a(Lyads/ys4;Lyads/pa2;Lorg/json/JSONObject;)Lyads/ka2;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/y92;-><init>(Lyads/ka2;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/xa2;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/z92;

    iget-object p0, p0, Lyads/ja2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ta2;

    check-cast p2, Lyads/xa2;

    iget-object p2, p2, Lyads/xa2;->a:Lyads/va2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/qa2;

    iget-object v2, p2, Lyads/va2;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/va2;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/ua2;->a:Lyads/xr2;

    const-string v4, "is_enabled"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, p2

    :goto_0
    invoke-direct {p0, p1, v7}, Lyads/qa2;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/z92;-><init>(Lyads/qa2;)V

    return-object v0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
