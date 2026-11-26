.class public final Lyads/mv0;
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

    iput-object p1, p0, Lyads/mv0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/sv0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/sv0;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "end"

    const-string v4, "start"

    const-string v5, "index"

    const-string v6, "offset"

    if-eqz v1, :cond_5

    instance-of v0, v1, Lyads/qv0;

    if-eqz v0, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/pv0;

    if-eqz v0, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/rv0;

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lyads/ov0;

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x3cc89b6d

    if-eq v7, v8, :cond_e

    const v6, 0x188db

    if-eq v7, v6, :cond_b

    const v2, 0x5fb28d2

    if-eq v7, v2, :cond_8

    const p1, 0x68ac462

    if-ne v7, p1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lyads/rv0;

    iget-object p0, p0, Lyads/mv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iq5;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lyads/sv0;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_6
    check-cast v3, Lyads/kq5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/kq5;

    invoke-direct {p0}, Lyads/kq5;-><init>()V

    invoke-direct {p1, p0}, Lyads/rv0;-><init>(Lyads/kq5;)V

    return-object p1

    :cond_7
    move-object v2, p2

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lyads/pv0;

    iget-object p0, p0, Lyads/mv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->z9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jf3;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/sv0;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/mf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v8

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p0, Lyads/mf3;

    sget-object v7, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_a

    iget-object v3, v1, Lyads/mf3;->a:Lyads/zw2;

    :cond_a
    move-object v9, v3

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v11, Lyads/lf3;->a:Lyads/l66;

    const-string v6, "value"

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/mf3;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p0}, Lyads/pv0;-><init>(Lyads/mf3;)V

    return-object v0

    :cond_b
    move-object v5, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lyads/ov0;

    iget-object p0, p0, Lyads/mv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->w9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rn2;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lyads/sv0;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_c
    check-cast v3, Lyads/tn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/tn2;

    invoke-direct {p0}, Lyads/tn2;-><init>()V

    invoke-direct {p1, p0}, Lyads/ov0;-><init>(Lyads/tn2;)V

    return-object p1

    :cond_d
    move-object v2, v5

    goto :goto_4

    :cond_e
    move-object v5, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Lyads/qv0;

    iget-object p0, p0, Lyads/mv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->O9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jp4;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lyads/sv0;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_f
    move-object v0, v3

    :goto_3
    check-cast v0, Lyads/mp4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v5

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/mp4;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lyads/mp4;->a:Lyads/zw2;

    :cond_10
    move-object v6, v3

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/lp4;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/mp4;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/qv0;-><init>(Lyads/mp4;)V

    return-object p2

    :goto_4
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
