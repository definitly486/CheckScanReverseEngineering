.class public final Lyads/u21;
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

    iput-object p1, p0, Lyads/u21;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/a31;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/a31;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "slide"

    const-string v4, "scale"

    const-string v5, "fade"

    const-string v6, "set"

    if-eqz v1, :cond_5

    instance-of v0, v1, Lyads/y21;

    if-eqz v0, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/w21;

    if-eqz v0, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/x21;

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lyads/z21;

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

    const v8, 0x1bc62

    if-eq v7, v8, :cond_c

    const v6, 0x2fd67c

    if-eq v7, v6, :cond_a

    const v5, 0x683094a

    if-eq v7, v5, :cond_8

    const v4, 0x6873db1

    if-ne v7, v4, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lyads/z21;

    iget-object p0, p0, Lyads/u21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/r12;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lyads/a31;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_6
    check-cast v3, Lyads/u12;

    invoke-virtual {p0, p1, v3, p2}, Lyads/r12;->a(Lyads/ys4;Lyads/u12;Lorg/json/JSONObject;)Lyads/u12;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/z21;-><init>(Lyads/u12;)V

    return-object v0

    :cond_7
    move-object v5, p2

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lyads/x21;

    iget-object p0, p0, Lyads/u21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->t6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/py1;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/a31;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_9
    check-cast v3, Lyads/sy1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/py1;->a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/sy1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/x21;-><init>(Lyads/sy1;)V

    return-object v0

    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lyads/w21;

    iget-object p0, p0, Lyads/u21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->e3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qd1;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lyads/a31;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_b
    check-cast v3, Lyads/td1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/qd1;->a(Lyads/ys4;Lyads/td1;Lorg/json/JSONObject;)Lyads/td1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/w21;-><init>(Lyads/td1;)V

    return-object v0

    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lyads/y21;

    iget-object p0, p0, Lyads/u21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/k21;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lyads/a31;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_d
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/n21;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v7

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p1, Lyads/n21;

    if-eqz v1, :cond_e

    iget-object v3, v1, Lyads/n21;->a:Lyads/zw2;

    :cond_e
    move-object v8, v3

    iget-object p0, p0, Lyads/k21;->a:Lyads/tq3;

    iget-object v9, p0, Lyads/tq3;->A1:Lcl4;

    sget-object v10, Lyads/m21;->a:Lyads/st3;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "items"

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;Lyads/st3;)Lyads/zw2;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/n21;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p1}, Lyads/y21;-><init>(Lyads/n21;)V

    return-object v0

    :goto_3
    const-string p0, "type"

    invoke-static {v5, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
