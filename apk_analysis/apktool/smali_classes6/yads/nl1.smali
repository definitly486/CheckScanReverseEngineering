.class public final Lyads/nl1;
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

    iput-object p1, p0, Lyads/nl1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v2

    invoke-interface {v2, v1}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v2

    instance-of v3, v2, Lyads/sl1;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lyads/sl1;

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    const-string v3, "phone"

    const-string v4, "currency"

    const-string v5, "fixed_length"

    if-eqz v2, :cond_4

    instance-of v1, v2, Lyads/ql1;

    if-eqz v1, :cond_1

    move-object v1, v5

    goto :goto_1

    :cond_1
    instance-of v1, v2, Lyads/pl1;

    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    instance-of v1, v2, Lyads/rl1;

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v6

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x65b3d6e

    const-string v9, "raw_text_variable"

    if-eq v7, v8, :cond_a

    const v3, 0x1775c611

    if-eq v7, v3, :cond_8

    const v3, 0x224bf011

    if-ne v7, v3, :cond_d

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v7, Lyads/pl1;

    iget-object v0, p0, Lyads/nl1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->z2:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ha1;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lyads/sl1;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v6

    :goto_2
    move-object v8, v1

    check-cast v8, Lyads/ja1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v10, Lyads/ja1;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v8, :cond_6

    iget-object v1, v8, Lyads/ja1;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_3

    :cond_6
    move-object v5, v6

    :goto_3
    const-string v2, "locale"

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v2

    move-object v1, v0

    move v0, v4

    if-eqz v8, :cond_7

    iget-object v6, v8, Lyads/ja1;->b:Lyads/zw2;

    :cond_7
    invoke-static {v1, p2, v9, v0, v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v10, v2, v0}, Lyads/ja1;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v7, v10}, Lyads/pl1;-><init>(Lyads/ja1;)V

    return-object v7

    :cond_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v1, Lyads/ql1;

    iget-object v0, p0, Lyads/nl1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->q3:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/re1;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lyads/sl1;->a()Ljava/lang/Object;

    move-result-object v6

    :cond_9
    check-cast v6, Lyads/ze1;

    invoke-virtual {v0, p1, v6, p2}, Lyads/re1;->a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/ze1;

    move-result-object v0

    invoke-direct {v1, v0}, Lyads/ql1;-><init>(Lyads/ze1;)V

    return-object v1

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v1, Lyads/rl1;

    iget-object v0, p0, Lyads/nl1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->G5:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mu1;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lyads/sl1;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v2, v6

    :goto_4
    check-cast v2, Lyads/ou1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v0

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v3

    new-instance v5, Lyads/ou1;

    if-eqz v2, :cond_c

    iget-object v6, v2, Lyads/ou1;->a:Lyads/zw2;

    :cond_c
    invoke-static {v3, p2, v9, v0, v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v5, v0}, Lyads/ou1;-><init>(Lyads/zw2;)V

    invoke-direct {v1, v5}, Lyads/rl1;-><init>(Lyads/ou1;)V

    return-object v1

    :cond_d
    const-string v0, "type"

    invoke-static {p2, v0, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    throw v0
.end method
