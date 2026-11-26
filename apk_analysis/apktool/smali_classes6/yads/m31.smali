.class public abstract Lyads/m31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 479
    instance-of v0, p0, Lyads/i31;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/i31;

    .line 480
    iget-object p0, p0, Lyads/i31;->a:Lyads/dp1;

    return-object p0

    .line 481
    :cond_0
    instance-of v0, p0, Lyads/k31;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/k31;

    .line 482
    iget-object p0, p0, Lyads/k31;->a:Lyads/gw1;

    return-object p0

    .line 483
    :cond_1
    instance-of v0, p0, Lyads/h31;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/h31;

    .line 484
    iget-object p0, p0, Lyads/h31;->a:Lyads/bi1;

    return-object p0

    .line 485
    :cond_2
    instance-of v0, p0, Lyads/l31;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/l31;

    .line 486
    iget-object p0, p0, Lyads/l31;->a:Lyads/t22;

    return-object p0

    .line 487
    :cond_3
    instance-of v0, p0, Lyads/j31;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/j31;

    .line 488
    iget-object p0, p0, Lyads/j31;->a:Lyads/aq1;

    return-object p0

    .line 489
    :cond_4
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/m31;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/i31;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lyads/i31;

    iget-object p0, p0, Lyads/i31;->a:Lyads/dp1;

    invoke-virtual {p1}, Lyads/m31;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyads/dp1;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lyads/dp1;

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, Lyads/dp1;->a(Lyads/dp1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v1, p0, Lyads/k31;

    if-eqz v1, :cond_4

    check-cast p0, Lyads/k31;

    iget-object p0, p0, Lyads/k31;->a:Lyads/gw1;

    invoke-virtual {p1}, Lyads/m31;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyads/gw1;

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Lyads/gw1;

    :cond_3
    invoke-virtual {p0, v2, p2, p3}, Lyads/gw1;->a(Lyads/gw1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_4
    instance-of v1, p0, Lyads/h31;

    if-eqz v1, :cond_d

    check-cast p0, Lyads/h31;

    iget-object p0, p0, Lyads/h31;->a:Lyads/bi1;

    invoke-virtual {p1}, Lyads/m31;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/bi1;

    if-eqz v1, :cond_5

    check-cast p1, Lyads/bi1;

    goto :goto_0

    :cond_5
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lyads/bi1;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-object v1, p1, Lyads/bi1;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-nez v1, :cond_14

    iget-object v1, p0, Lyads/bi1;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/bi1;->b:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lyads/bi1;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/bi1;->c:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lyads/bi1;->d:Ljava/util/List;

    iget-object v3, p1, Lyads/bi1;->d:Ljava/util/List;

    if-eqz v1, :cond_b

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/wd1;

    check-cast v5, Lyads/wd1;

    invoke-virtual {v5, v4, p2, p3}, Lyads/wd1;->a(Lyads/wd1;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_3

    :cond_9
    move v4, v6

    goto :goto_1

    :cond_a
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_b
    if-nez v3, :cond_14

    :cond_c
    iget-object v1, p0, Lyads/bi1;->e:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lyads/bi1;->e:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lyads/bi1;->f:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/bi1;->f:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_14

    iget-object p0, p0, Lyads/bi1;->g:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lyads/bi1;->g:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_14

    goto/16 :goto_2

    :cond_d
    instance-of v1, p0, Lyads/l31;

    if-eqz v1, :cond_10

    check-cast p0, Lyads/l31;

    iget-object p0, p0, Lyads/l31;->a:Lyads/t22;

    invoke-virtual {p1}, Lyads/m31;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/t22;

    if-eqz v1, :cond_e

    move-object v2, p1

    check-cast v2, Lyads/t22;

    :cond_e
    if-nez v2, :cond_f

    goto/16 :goto_3

    :cond_f
    iget-object p0, p0, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object p1, v2, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_14

    goto/16 :goto_2

    :cond_10
    instance-of v1, p0, Lyads/j31;

    if-eqz v1, :cond_15

    check-cast p0, Lyads/j31;

    iget-object p0, p0, Lyads/j31;->a:Lyads/aq1;

    invoke-virtual {p1}, Lyads/m31;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/aq1;

    if-eqz v1, :cond_11

    move-object v2, p1

    check-cast v2, Lyads/aq1;

    :cond_11
    if-nez v2, :cond_12

    goto/16 :goto_3

    :cond_12
    iget-object p1, p0, Lyads/aq1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v2, Lyads/aq1;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lyads/aq1;->b:Lyads/cr0;

    iget-object p1, v2, Lyads/aq1;->b:Lyads/cr0;

    if-nez p1, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_13
    iget-object v1, p0, Lyads/cr0;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lyads/cr0;->a:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    iget-object v1, p0, Lyads/cr0;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lyads/cr0;->b:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    iget-object v1, p0, Lyads/cr0;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lyads/cr0;->c:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    iget-object p0, p0, Lyads/cr0;->d:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p0, p1, Lyads/cr0;->d:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_14

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_3
    return v0

    :cond_15
    invoke-static {}, Lme0;->e()V

    return v0
.end method
