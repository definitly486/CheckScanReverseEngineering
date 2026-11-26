.class public final Lyads/lw1;
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

    iput-object p1, p0, Lyads/lw1;->a:Lyads/tq3;

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

    instance-of v2, v1, Lyads/pw1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/pw1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "relative"

    const-string v4, "fixed"

    if-eqz v1, :cond_3

    instance-of v0, v1, Lyads/nw1;

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/ow1;

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

    if-eqz v4, :cond_7

    new-instance v0, Lyads/nw1;

    iget-object p0, p0, Lyads/lw1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ww1;

    if-eqz v1, :cond_6

    instance-of v2, v1, Lyads/nw1;

    if-eqz v2, :cond_4

    check-cast v1, Lyads/nw1;

    iget-object v3, v1, Lyads/nw1;->a:Lyads/zw1;

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lyads/ow1;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/ow1;

    iget-object v3, v1, Lyads/ow1;->a:Lyads/rx1;

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    :goto_2
    check-cast v3, Lyads/zw1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/ww1;->a(Lyads/ys4;Lyads/zw1;Lorg/json/JSONObject;)Lyads/zw1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/nw1;-><init>(Lyads/zw1;)V

    return-object v0

    :cond_7
    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/ow1;

    iget-object p0, p0, Lyads/lw1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->e6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/px1;

    if-eqz v1, :cond_a

    instance-of v2, v1, Lyads/nw1;

    if-eqz v2, :cond_8

    check-cast v1, Lyads/nw1;

    iget-object v1, v1, Lyads/nw1;->a:Lyads/zw1;

    goto :goto_3

    :cond_8
    instance-of v2, v1, Lyads/ow1;

    if-eqz v2, :cond_9

    check-cast v1, Lyads/ow1;

    iget-object v1, v1, Lyads/ow1;->a:Lyads/rx1;

    goto :goto_3

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_a
    move-object v1, v3

    :goto_3
    check-cast v1, Lyads/rx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v8

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p0, Lyads/rx1;

    sget-object v7, Lyads/w36;->d:Lyads/r36;

    if-eqz v1, :cond_b

    iget-object v3, v1, Lyads/rx1;->a:Lyads/zw2;

    :cond_b
    move-object v9, v3

    sget-object v10, Lyads/bt4;->d:Lnl3;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "value"

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/rx1;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p0}, Lyads/ow1;-><init>(Lyads/rx1;)V

    return-object v0

    :cond_c
    move-object v5, p2

    const-string p0, "type"

    invoke-static {v5, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
