.class public final Lyads/yd1;
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

    iput-object p1, p0, Lyads/yd1;->a:Lyads/tq3;

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

    instance-of v2, v1, Lyads/he1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/he1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "rtl_mirror"

    const-string v4, "blur"

    if-eqz v1, :cond_3

    instance-of v0, v1, Lyads/fe1;

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/ge1;

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

    new-instance v0, Lyads/fe1;

    iget-object p0, p0, Lyads/yd1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/b51;

    if-eqz v1, :cond_6

    instance-of v2, v1, Lyads/fe1;

    if-eqz v2, :cond_4

    check-cast v1, Lyads/fe1;

    iget-object v1, v1, Lyads/fe1;->a:Lyads/e51;

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lyads/ge1;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/ge1;

    iget-object v1, v1, Lyads/ge1;->a:Lyads/ee1;

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/e51;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v8

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p0, Lyads/e51;

    sget-object v7, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_7

    iget-object v3, v1, Lyads/e51;->a:Lyads/zw2;

    :cond_7
    move-object v9, v3

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v11, Lyads/d51;->a:Lyads/l66;

    const-string v6, "radius"

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/e51;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p0}, Lyads/fe1;-><init>(Lyads/e51;)V

    return-object v0

    :cond_8
    move-object v5, p2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lyads/ge1;

    iget-object p0, p0, Lyads/yd1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->h3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ce1;

    if-eqz v1, :cond_b

    instance-of p2, v1, Lyads/fe1;

    if-eqz p2, :cond_9

    check-cast v1, Lyads/fe1;

    iget-object v3, v1, Lyads/fe1;->a:Lyads/e51;

    goto :goto_3

    :cond_9
    instance-of p2, v1, Lyads/ge1;

    if-eqz p2, :cond_a

    check-cast v1, Lyads/ge1;

    iget-object v3, v1, Lyads/ge1;->a:Lyads/ee1;

    goto :goto_3

    :cond_a
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_b
    :goto_3
    check-cast v3, Lyads/ee1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ee1;

    invoke-direct {p0}, Lyads/ee1;-><init>()V

    invoke-direct {p1, p0}, Lyads/ge1;-><init>(Lyads/ee1;)V

    return-object p1

    :cond_c
    const-string p0, "type"

    invoke-static {v5, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
