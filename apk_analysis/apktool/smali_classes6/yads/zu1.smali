.class public final Lyads/zu1;
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

    iput-object p1, p0, Lyads/zu1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12

    const-string v1, "type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_1
    :try_start_0
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v4

    invoke-static {p2, v1, v2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v4, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    invoke-interface {p1}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p2, v1, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v2

    invoke-interface {v0, v2}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :goto_2
    const-string v0, "pivot-fixed"

    if-nez v2, :cond_2

    move-object v2, v0

    :cond_2
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v4

    invoke-interface {v4, v2}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v4

    instance-of v5, v4, Lyads/iv1;

    if-eqz v5, :cond_3

    check-cast v4, Lyads/iv1;

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    const-string v5, "pivot-percentage"

    if-eqz v4, :cond_6

    instance-of v2, v4, Lyads/gv1;

    if-eqz v2, :cond_4

    move-object v2, v0

    goto :goto_4

    :cond_4
    instance-of v2, v4, Lyads/hv1;

    if-eqz v2, :cond_5

    move-object v2, v5

    goto :goto_4

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lyads/gv1;

    iget-object p0, p0, Lyads/zu1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/uu1;

    if-eqz v4, :cond_9

    instance-of v1, v4, Lyads/gv1;

    if-eqz v1, :cond_7

    check-cast v4, Lyads/gv1;

    iget-object v3, v4, Lyads/gv1;->a:Lyads/xu1;

    goto :goto_5

    :cond_7
    instance-of v1, v4, Lyads/hv1;

    if-eqz v1, :cond_8

    check-cast v4, Lyads/hv1;

    iget-object v3, v4, Lyads/hv1;->a:Lyads/fv1;

    goto :goto_5

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_9
    :goto_5
    check-cast v3, Lyads/xu1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/uu1;->a(Lyads/ys4;Lyads/xu1;Lorg/json/JSONObject;)Lyads/xu1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/gv1;-><init>(Lyads/xu1;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lyads/hv1;

    iget-object p0, p0, Lyads/zu1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dv1;

    if-eqz v4, :cond_d

    instance-of v1, v4, Lyads/gv1;

    if-eqz v1, :cond_b

    check-cast v4, Lyads/gv1;

    iget-object v1, v4, Lyads/gv1;->a:Lyads/xu1;

    goto :goto_6

    :cond_b
    instance-of v1, v4, Lyads/hv1;

    if-eqz v1, :cond_c

    check-cast v4, Lyads/hv1;

    iget-object v1, v4, Lyads/hv1;->a:Lyads/fv1;

    goto :goto_6

    :cond_c
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_d
    move-object v1, v3

    :goto_6
    check-cast v1, Lyads/fv1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v8

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p0, Lyads/fv1;

    sget-object v7, Lyads/w36;->d:Lyads/r36;

    if-eqz v1, :cond_e

    iget-object v3, v1, Lyads/fv1;->a:Lyads/zw2;

    :cond_e
    move-object v9, v3

    sget-object v10, Lyads/bt4;->d:Lnl3;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "value"

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/fv1;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p0}, Lyads/hv1;-><init>(Lyads/fv1;)V

    :goto_7
    return-object v0

    :cond_f
    move-object v5, p2

    invoke-static {v5, v1, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
