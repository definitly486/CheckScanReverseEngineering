.class public final Lyads/ij1;
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

    iput-object p1, p0, Lyads/ij1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/mj1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/mj1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "stretch"

    const-string v4, "default"

    if-eqz v1, :cond_3

    instance-of v0, v1, Lyads/kj1;

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/lj1;

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_3
    :goto_1
    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v0, Lyads/kj1;

    iget-object p0, p0, Lyads/ij1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wb1;

    if-eqz v1, :cond_6

    instance-of v2, v1, Lyads/kj1;

    if-eqz v2, :cond_4

    check-cast v1, Lyads/kj1;

    iget-object v1, v1, Lyads/kj1;->a:Lyads/zb1;

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lyads/lj1;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/lj1;

    iget-object v1, v1, Lyads/lj1;->a:Lyads/k42;

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/zb1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v7

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p1, Lyads/zb1;

    if-eqz v1, :cond_7

    iget-object v3, v1, Lyads/zb1;->a:Lyads/zw2;

    :cond_7
    move-object v8, v3

    iget-object p0, p0, Lyads/wb1;->a:Lyads/tq3;

    iget-object v9, p0, Lyads/tq3;->w3:Lcl4;

    const-string v6, "space_between_centers"

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/zb1;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p1}, Lyads/kj1;-><init>(Lyads/zb1;)V

    return-object v0

    :cond_8
    move-object v5, p2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lyads/lj1;

    iget-object p0, p0, Lyads/ij1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h42;

    if-eqz v1, :cond_b

    instance-of v0, v1, Lyads/kj1;

    if-eqz v0, :cond_9

    check-cast v1, Lyads/kj1;

    iget-object v0, v1, Lyads/kj1;->a:Lyads/zb1;

    goto :goto_3

    :cond_9
    instance-of v0, v1, Lyads/lj1;

    if-eqz v0, :cond_a

    check-cast v1, Lyads/lj1;

    iget-object v0, v1, Lyads/lj1;->a:Lyads/k42;

    goto :goto_3

    :cond_a
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_b
    move-object v0, v3

    :goto_3
    check-cast v0, Lyads/k42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v7

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p1, Lyads/k42;

    if-eqz v0, :cond_c

    iget-object v2, v0, Lyads/k42;->a:Lyads/zw2;

    move-object v8, v2

    goto :goto_4

    :cond_c
    move-object v8, v3

    :goto_4
    iget-object p0, p0, Lyads/h42;->a:Lyads/tq3;

    iget-object v9, p0, Lyads/tq3;->w3:Lcl4;

    const-string v6, "item_spacing"

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    if-eqz v0, :cond_d

    iget-object v3, v0, Lyads/k42;->b:Lyads/zw2;

    :cond_d
    move-object v6, v3

    move-object v2, v5

    move v5, v7

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/j42;->c:Lyads/l66;

    const-string v3, "max_visible_items"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lyads/k42;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {p2, p1}, Lyads/lj1;-><init>(Lyads/k42;)V

    return-object p2

    :cond_e
    const-string p0, "type"

    invoke-static {v5, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
