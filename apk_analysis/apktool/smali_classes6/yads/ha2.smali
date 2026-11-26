.class public final Lyads/ha2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ha2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "particles"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/y92;

    iget-object p0, p0, Lyads/ha2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->e8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/la2;

    invoke-virtual {p0, p1, p2}, Lyads/la2;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ka2;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/y92;-><init>(Lyads/ka2;)V

    return-object v0

    :cond_0
    const-string v1, "solid"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lyads/z92;

    iget-object p0, p0, Lyads/ha2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->h8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ra2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/qa2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "color"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    sget-object v9, Lyads/w36;->a:Lyads/o36;

    sget-object v10, Lyads/bt4;->c:Lnl3;

    sget-object v12, Lyads/ua2;->a:Lyads/xr2;

    const-string v8, "is_enabled"

    move-object v7, v2

    move-object v11, v6

    move-object v6, v1

    invoke-static/range {v6 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v12, p2

    :goto_0
    invoke-direct {p0, p1, v12}, Lyads/qa2;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/z92;-><init>(Lyads/qa2;)V

    return-object v0

    :cond_2
    move-object v1, p1

    move-object v2, p2

    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of p2, p1, Lyads/ya2;

    if-eqz p2, :cond_3

    check-cast p1, Lyads/ya2;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object p0, p0, Lyads/ha2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->m8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ja2;

    invoke-virtual {p0, v1, p1, v2}, Lyads/ja2;->a(Lyads/ys4;Lyads/ya2;Lorg/json/JSONObject;)Lyads/aa2;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
