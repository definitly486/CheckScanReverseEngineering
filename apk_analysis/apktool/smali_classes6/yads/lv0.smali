.class public final Lyads/lv0;
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

    iput-object p1, p0, Lyads/lv0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3cc89b6d

    if-eq v1, v2, :cond_6

    const v2, 0x188db

    if-eq v1, v2, :cond_4

    const v2, 0x5fb28d2

    if-eq v1, v2, :cond_2

    const v2, 0x68ac462

    if-eq v1, v2, :cond_0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    goto/16 :goto_1

    :cond_0
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lyads/jv0;

    iget-object p0, p0, Lyads/lv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->T9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hq5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/gq5;

    invoke-direct {p0}, Lyads/gq5;-><init>()V

    invoke-direct {p1, p0}, Lyads/jv0;-><init>(Lyads/gq5;)V

    return-object p1

    :cond_2
    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lyads/hv0;

    iget-object p0, p0, Lyads/lv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/if3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/hf3;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/lf3;->a:Lyads/l66;

    const-string v3, "value"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/hf3;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/hv0;-><init>(Lyads/hf3;)V

    return-object v0

    :cond_4
    move-object v1, p1

    move-object v2, p2

    const-string p1, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lyads/gv0;

    iget-object p0, p0, Lyads/lv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pn2;

    invoke-direct {p0}, Lyads/pn2;-><init>()V

    invoke-direct {p1, p0}, Lyads/gv0;-><init>(Lyads/pn2;)V

    return-object p1

    :cond_6
    move-object v1, p1

    move-object v2, p2

    const-string p1, "offset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_1
    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of p2, p1, Lyads/sv0;

    if-eqz p2, :cond_7

    check-cast p1, Lyads/sv0;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    iget-object p0, p0, Lyads/lv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->z0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nv0;

    invoke-virtual {p0, v1, p1, v2}, Lyads/nv0;->a(Lyads/ys4;Lyads/sv0;Lorg/json/JSONObject;)Lyads/kv0;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p1, Lyads/iv0;

    iget-object p0, p0, Lyads/lv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ip4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/hp4;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/lp4;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/hp4;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/iv0;-><init>(Lyads/hp4;)V

    return-object p1
.end method
