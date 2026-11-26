.class public final Lzp8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp8$a;
    }
.end annotation


# direct methods
.method public static final a(Lpw7;Ljava/lang/String;Ljava/lang/Integer;)Low7;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lpw7;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    iget-object p0, p0, Lpw7;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    new-instance p2, Low7;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Low7;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p2

    :cond_4
    return-object v0
.end method

.method public static final b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso8;

    instance-of v2, v1, Lir0;

    const-string v3, "daily_ad"

    const/4 v4, 0x2

    const-string v5, "daily_bonus"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lir0;

    iget-object v1, v1, Lir0;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfo0;

    iget-object v9, v8, Lfo0;->g:Lpw7;

    iget-object v10, v8, Lfo0;->f:Lfo0$c;

    sget-object v11, Lzp8$a;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v6, :cond_2

    if-ne v10, v4, :cond_1

    move-object v10, v5

    goto :goto_2

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_2
    move-object v10, v3

    :goto_2
    iget v8, v8, Lfo0;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lzp8;->a(Lpw7;Ljava/lang/String;Ljava/lang/Integer;)Low7;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lzl8;

    if-eqz v2, :cond_4

    move-object v8, v1

    check-cast v8, Lzl8;

    iget-object v8, v8, Lzl8;->e:Lpw7;

    goto :goto_3

    :cond_4
    instance-of v8, v1, Lnm8;

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Lnm8;

    iget-object v8, v8, Lnm8;->f:Lpw7;

    goto :goto_3

    :cond_5
    instance-of v8, v1, Lrh9;

    if-eqz v8, :cond_6

    move-object v8, v1

    check-cast v8, Lrh9;

    iget-object v8, v8, Lrh9;->h:Lpw7;

    goto :goto_3

    :cond_6
    instance-of v8, v1, Lkz7;

    if-eqz v8, :cond_7

    move-object v8, v1

    check-cast v8, Lkz7;

    iget-object v8, v8, Lkz7;->m:Lpw7;

    goto :goto_3

    :cond_7
    instance-of v8, v1, Lrm8;

    if-eqz v8, :cond_8

    move-object v8, v1

    check-cast v8, Lrm8;

    iget-object v8, v8, Lrm8;->h:Lpw7;

    goto :goto_3

    :cond_8
    move-object v8, v7

    :goto_3
    if-eqz v2, :cond_9

    const-string v5, "banner"

    goto :goto_6

    :cond_9
    instance-of v9, v1, Lnm8;

    if-eqz v9, :cond_a

    move v9, v6

    goto :goto_4

    :cond_a
    instance-of v9, v1, Lrm8;

    :goto_4
    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    instance-of v9, v1, Lrh9;

    if-eqz v9, :cond_e

    move-object v9, v1

    check-cast v9, Lrh9;

    iget-object v9, v9, Lrh9;->g:Lfo0$c;

    sget-object v10, Lzp8$a;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    if-eq v9, v6, :cond_d

    if-ne v9, v4, :cond_c

    move-object v3, v5

    goto :goto_5

    :cond_c
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_d
    :goto_5
    move-object v5, v3

    goto :goto_6

    :cond_e
    instance-of v3, v1, Lkz7;

    if-eqz v3, :cond_f

    const-string v5, "task"

    goto :goto_6

    :cond_f
    move-object v5, v7

    :goto_6
    if-eqz v2, :cond_10

    check-cast v1, Lzl8;

    iget v1, v1, Lzl8;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_10
    instance-of v2, v1, Lnm8;

    if-eqz v2, :cond_11

    check-cast v1, Lnm8;

    iget v1, v1, Lnm8;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_11
    instance-of v2, v1, Lrh9;

    if-eqz v2, :cond_12

    check-cast v1, Lrh9;

    iget v1, v1, Lrh9;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_12
    instance-of v2, v1, Lkz7;

    if-eqz v2, :cond_13

    check-cast v1, Lkz7;

    iget v1, v1, Lkz7;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_13
    instance-of v2, v1, Lrm8;

    if-eqz v2, :cond_14

    check-cast v1, Lrm8;

    iget v1, v1, Lrm8;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_14
    :goto_7
    invoke-static {v8, v5, v7}, Lzp8;->a(Lpw7;Ljava/lang/String;Ljava/lang/Integer;)Low7;

    move-result-object v1

    invoke-static {v1}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    return-object v0
.end method
