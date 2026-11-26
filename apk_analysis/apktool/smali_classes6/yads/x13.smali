.class public abstract Lyads/x13;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

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

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vf1;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lyads/vf1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/wf1;

    iget-object v7, v3, Lyads/wf1;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lyads/w13;

    iget-object v3, v3, Lyads/wf1;->b:Lyads/fd1;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object v5

    :pswitch_0
    sget-object v3, Lyads/xo2;->k:Lyads/xo2;

    goto :goto_2

    :pswitch_1
    sget-object v3, Lyads/xo2;->j:Lyads/xo2;

    goto :goto_2

    :pswitch_2
    sget-object v3, Lyads/xo2;->i:Lyads/xo2;

    goto :goto_2

    :pswitch_3
    sget-object v3, Lyads/xo2;->h:Lyads/xo2;

    goto :goto_2

    :pswitch_4
    sget-object v3, Lyads/xo2;->g:Lyads/xo2;

    goto :goto_2

    :pswitch_5
    sget-object v3, Lyads/xo2;->e:Lyads/xo2;

    goto :goto_2

    :pswitch_6
    sget-object v3, Lyads/xo2;->d:Lyads/xo2;

    goto :goto_2

    :pswitch_7
    sget-object v3, Lyads/xo2;->c:Lyads/xo2;

    goto :goto_2

    :pswitch_8
    sget-object v3, Lyads/xo2;->f:Lyads/xo2;

    :goto_2
    const/4 v5, 0x0

    invoke-direct {v7, v3, v5}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Lyads/xu3;

    iget-object v3, v1, Lyads/vf1;->c:Ljava/lang/String;

    iget-object v7, v1, Lyads/vf1;->d:Lyads/fd1;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    invoke-static {}, Lme0;->e()V

    return-object v5

    :pswitch_9
    sget-object v5, Lyads/xo2;->k:Lyads/xo2;

    goto :goto_3

    :pswitch_a
    sget-object v5, Lyads/xo2;->j:Lyads/xo2;

    goto :goto_3

    :pswitch_b
    sget-object v5, Lyads/xo2;->i:Lyads/xo2;

    goto :goto_3

    :pswitch_c
    sget-object v5, Lyads/xo2;->h:Lyads/xo2;

    goto :goto_3

    :pswitch_d
    sget-object v5, Lyads/xo2;->g:Lyads/xo2;

    goto :goto_3

    :pswitch_e
    sget-object v5, Lyads/xo2;->e:Lyads/xo2;

    goto :goto_3

    :pswitch_f
    sget-object v5, Lyads/xo2;->d:Lyads/xo2;

    goto :goto_3

    :pswitch_10
    sget-object v5, Lyads/xo2;->c:Lyads/xo2;

    goto :goto_3

    :pswitch_11
    sget-object v5, Lyads/xo2;->f:Lyads/xo2;

    :goto_3
    iget-object v7, v1, Lyads/vf1;->b:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lyads/xu3;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lyads/xo2;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
