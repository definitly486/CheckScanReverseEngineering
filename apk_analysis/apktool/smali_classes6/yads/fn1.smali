.class public final Lyads/fn1;
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

    iput-object p1, p0, Lyads/fn1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "separator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lyads/eq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->B6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qz1;

    invoke-virtual {p0, p1, p2}, Lyads/qz1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/kz1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/eq0;-><init>(Lyads/kz1;)V

    return-object v0

    :sswitch_1
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lyads/kq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sg2;

    invoke-virtual {p0, p1, p2}, Lyads/sg2;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ng2;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/kq0;-><init>(Lyads/ng2;)V

    return-object v0

    :sswitch_2
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lyads/gq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e32;

    invoke-virtual {p0, p1, p2}, Lyads/e32;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/z22;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/gq0;-><init>(Lyads/z22;)V

    return-object v0

    :sswitch_3
    const-string v1, "pager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lyads/cq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->w5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/es1;

    invoke-virtual {p0, p1, p2}, Lyads/es1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ur1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/cq0;-><init>(Lyads/ur1;)V

    return-object v0

    :sswitch_4
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lyads/bq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dl1;

    invoke-virtual {p0, p1, p2}, Lyads/dl1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ek1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/bq0;-><init>(Lyads/ek1;)V

    return-object v0

    :sswitch_5
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lyads/zp0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ki1;

    invoke-virtual {p0, p1, p2}, Lyads/ki1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/zh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/zp0;-><init>(Lyads/zh1;)V

    return-object v0

    :sswitch_6
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lyads/jq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->n8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/b92;

    invoke-virtual {p0, p1, p2}, Lyads/b92;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/b82;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/jq0;-><init>(Lyads/b82;)V

    return-object v0

    :sswitch_7
    const-string v1, "tabs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lyads/iq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/i62;

    invoke-virtual {p0, p1, p2}, Lyads/i62;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/y52;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/iq0;-><init>(Lyads/y52;)V

    return-object v0

    :sswitch_8
    const-string v1, "grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lyads/yp0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qh1;

    invoke-virtual {p0, p1, p2}, Lyads/qh1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/oh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/yp0;-><init>(Lyads/oh1;)V

    return-object v0

    :sswitch_9
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lyads/xp0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ih1;

    invoke-virtual {p0, p1, p2}, Lyads/ih1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/eh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/xp0;-><init>(Lyads/eh1;)V

    return-object v0

    :sswitch_a
    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lyads/wp0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wg1;

    invoke-virtual {p0, p1, p2}, Lyads/wg1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/og1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/wp0;-><init>(Lyads/og1;)V

    return-object v0

    :sswitch_b
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lyads/up0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->m2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/b91;

    invoke-virtual {p0, p1, p2}, Lyads/b91;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/j81;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/up0;-><init>(Lyads/j81;)V

    return-object v0

    :sswitch_c
    const-string v1, "indicator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lyads/aq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nj1;

    invoke-virtual {p0, p1, p2}, Lyads/nj1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/bj1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/aq0;-><init>(Lyads/bj1;)V

    return-object v0

    :sswitch_d
    const-string v1, "switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    new-instance v0, Lyads/hq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->G7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n52;

    invoke-virtual {p0, p1, p2}, Lyads/n52;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/k52;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/hq0;-><init>(Lyads/k52;)V

    return-object v0

    :sswitch_e
    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    new-instance v0, Lyads/fq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e22;

    invoke-virtual {p0, p1, p2}, Lyads/e22;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/x12;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/fq0;-><init>(Lyads/x12;)V

    return-object v0

    :sswitch_f
    const-string v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    new-instance v0, Lyads/dq0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xy1;

    invoke-virtual {p0, p1, p2}, Lyads/xy1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/uy1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/dq0;-><init>(Lyads/uy1;)V

    return-object v0

    :sswitch_10
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_0
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_12

    instance-of v2, v1, Lyads/q72;

    if-eqz v2, :cond_10

    check-cast v1, Lyads/q72;

    goto :goto_1

    :cond_10
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_11

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->u9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hn1;

    invoke-virtual {p0, p1, v1, p2}, Lyads/hn1;->a(Lyads/ys4;Lyads/q72;Lorg/json/JSONObject;)Lyads/br0;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_12
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_13
    new-instance v0, Lyads/vp0;

    iget-object p0, p0, Lyads/fn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->B2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/pa1;

    invoke-virtual {p0, p1, p2}, Lyads/pa1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ka1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/vp0;-><init>(Lyads/ka1;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_10
        -0x3600cb04 -> :sswitch_f
        -0x359f871f -> :sswitch_e
        -0x350448cc -> :sswitch_d
        -0x2a7041f1 -> :sswitch_c
        -0x187eb37f -> :sswitch_b
        -0xbb388ae -> :sswitch_a
        0x18fc4 -> :sswitch_9
        0x308b46 -> :sswitch_8
        0x36337e -> :sswitch_7
        0x36452d -> :sswitch_6
        0x5faa95b -> :sswitch_5
        0x5fb57ca -> :sswitch_4
        0x657efc3 -> :sswitch_3
        0x68ac491 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6748e2e5 -> :sswitch_0
    .end sparse-switch
.end method
