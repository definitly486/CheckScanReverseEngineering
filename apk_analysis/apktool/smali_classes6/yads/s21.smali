.class public abstract Lyads/s21;
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

    .line 429
    instance-of v0, p0, Lyads/q21;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/q21;

    .line 430
    iget-object p0, p0, Lyads/q21;->a:Lyads/i21;

    return-object p0

    .line 431
    :cond_0
    instance-of v0, p0, Lyads/o21;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/o21;

    .line 432
    iget-object p0, p0, Lyads/o21;->a:Lyads/od1;

    return-object p0

    .line 433
    :cond_1
    instance-of v0, p0, Lyads/p21;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/p21;

    .line 434
    iget-object p0, p0, Lyads/p21;->a:Lyads/ny1;

    return-object p0

    .line 435
    :cond_2
    instance-of v0, p0, Lyads/r21;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/r21;

    .line 436
    iget-object p0, p0, Lyads/r21;->a:Lyads/p12;

    return-object p0

    .line 437
    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/s21;Lyads/fs2;Lyads/fs2;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/q21;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    check-cast p0, Lyads/q21;

    iget-object p0, p0, Lyads/q21;->a:Lyads/i21;

    invoke-virtual {p1}, Lyads/s21;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/i21;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/i21;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Lyads/i21;->a:Ljava/util/List;

    iget-object p1, p1, Lyads/i21;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    if-ltz v1, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/s21;

    check-cast v4, Lyads/s21;

    invoke-virtual {v4, v1, p2, p3}, Lyads/s21;->a(Lyads/s21;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_6
    instance-of v1, p0, Lyads/o21;

    if-eqz v1, :cond_8

    check-cast p0, Lyads/o21;

    iget-object p0, p0, Lyads/o21;->a:Lyads/od1;

    invoke-virtual {p1}, Lyads/s21;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyads/od1;

    if-eqz v0, :cond_7

    move-object v3, p1

    check-cast v3, Lyads/od1;

    :cond_7
    invoke-virtual {p0, v3, p2, p3}, Lyads/od1;->a(Lyads/od1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_8
    instance-of v1, p0, Lyads/p21;

    if-eqz v1, :cond_b

    check-cast p0, Lyads/p21;

    iget-object p0, p0, Lyads/p21;->a:Lyads/ny1;

    invoke-virtual {p1}, Lyads/s21;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/ny1;

    if-eqz v1, :cond_9

    move-object v3, p1

    check-cast v3, Lyads/ny1;

    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_a
    iget-object p1, p0, Lyads/ny1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object p1, v3, Lyads/ny1;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_11

    iget-object p1, p0, Lyads/ny1;->b:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v3, Lyads/ny1;->b:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_11

    iget-object p1, p0, Lyads/ny1;->c:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object p1, v3, Lyads/ny1;->c:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double p1, v4, v6

    if-nez p1, :cond_11

    iget-object p1, p0, Lyads/ny1;->d:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object p1, v3, Lyads/ny1;->d:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double p1, v4, v6

    if-nez p1, :cond_11

    iget-object p1, p0, Lyads/ny1;->e:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object p1, v3, Lyads/ny1;->e:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double p1, v4, v6

    if-nez p1, :cond_11

    iget-object p0, p0, Lyads/ny1;->f:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object p2, v3, Lyads/ny1;->f:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_11

    goto/16 :goto_3

    :cond_b
    instance-of v1, p0, Lyads/r21;

    if-eqz v1, :cond_12

    check-cast p0, Lyads/r21;

    iget-object p0, p0, Lyads/r21;->a:Lyads/p12;

    invoke-virtual {p1}, Lyads/s21;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/p12;

    if-eqz v1, :cond_c

    move-object v3, p1

    check-cast v3, Lyads/p12;

    :cond_c
    if-nez v3, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lyads/p12;->a:Lyads/ac1;

    iget-object v1, v3, Lyads/p12;->a:Lyads/ac1;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1, p2, p3}, Lyads/ac1;->a(Lyads/ac1;Lyads/fs2;Lyads/fs2;)Z

    move-result p1

    goto :goto_2

    :cond_e
    if-nez v1, :cond_f

    move p1, v2

    goto :goto_2

    :cond_f
    move p1, v0

    :goto_2
    if-eqz p1, :cond_11

    iget-object p1, p0, Lyads/p12;->b:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object p1, v3, Lyads/p12;->b:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_11

    iget-object p1, p0, Lyads/p12;->c:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v3, Lyads/p12;->c:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_11

    iget-object p1, p0, Lyads/p12;->d:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v3, Lyads/p12;->d:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_11

    iget-object p0, p0, Lyads/p12;->e:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object p2, v3, Lyads/p12;->e:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_11

    :cond_10
    :goto_3
    return v2

    :cond_11
    :goto_4
    return v0

    :cond_12
    invoke-static {}, Lme0;->e()V

    return v0
.end method
