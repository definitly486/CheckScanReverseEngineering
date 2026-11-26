.class public final Lcom/google/protobuf/l;
.super Lcom/google/protobuf/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/k<",
        "Lcom/google/protobuf/o$d;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o$d;

    iget p0, p0, Lcom/google/protobuf/o$d;->c:I

    return p0
.end method

.method public final b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;
    .locals 0

    iget-object p0, p1, Lcom/google/protobuf/j;->a:Ljava/util/Map;

    new-instance p1, Lcom/google/protobuf/j$a;

    invoke-direct {p1, p3, p2}, Lcom/google/protobuf/j$a;-><init>(ILcom/google/protobuf/a0;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o$e;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/protobuf/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/m<",
            "Lcom/google/protobuf/o$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/o$c;

    iget-object p0, p1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/protobuf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/m<",
            "Lcom/google/protobuf/o$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/o$c;

    iget-object p0, p1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    iget-boolean v0, p0, Lcom/google/protobuf/m;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/m;

    move-result-object p0

    iput-object p0, p1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    :cond_0
    return-object p0
.end method

.method public final e(Lcom/google/protobuf/a0;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/o$c;

    return p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/o$c;

    iget-object p0, p1, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    invoke-virtual {p0}, Lcom/google/protobuf/m;->k()V

    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/protobuf/g;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;
    .locals 14

    move-object/from16 p0, p2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    iget-object v2, p0, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    move-object/from16 v3, p3

    check-cast v3, Lcom/google/protobuf/o$e;

    iget-object v8, v3, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    iget-object v4, v8, Lcom/google/protobuf/o$d;->d:Lui9;

    iget-object v3, v3, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    iget-object v5, v8, Lcom/google/protobuf/o$d;->d:Lui9;

    iget-boolean v6, v8, Lcom/google/protobuf/o$d;->e:Z

    move-object v7, v3

    iget v3, v8, Lcom/google/protobuf/o$d;->c:I

    iget-boolean v9, v8, Lcom/google/protobuf/o$d;->e:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    iget-boolean v9, v8, Lcom/google/protobuf/o$d;->f:Z

    if-eqz v9, :cond_0

    sget-object v0, Lcom/google/protobuf/l$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const-string p0, "Type cannot be packed: "

    invoke-static {v5, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v10

    :pswitch_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->h(Ljava/util/List;)V

    iget-object v5, v8, Lcom/google/protobuf/o$d;->b:Lcom/google/protobuf/q$d;

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/g0;->j(Ljava/lang/Object;ILjava/util/AbstractList;Lcom/google/protobuf/q$d;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->s(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->r(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->q(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->p(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->u(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->d(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->j(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->k(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->m(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->v(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->n(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->l(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    move-object/from16 v3, p6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g;->g(Ljava/util/List;)V

    :goto_0
    invoke-virtual {v1, v8, v4}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    move v9, v3

    move-object/from16 v3, p6

    sget-object v11, Lui9;->ENUM:Lui9;

    const/4 v12, 0x0

    if-ne v4, v11, :cond_2

    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->q()I

    move-result p0

    iget-object v0, v8, Lcom/google/protobuf/o$d;->b:Lcom/google/protobuf/q$d;

    invoke-interface {v0, p0}, Lcom/google/protobuf/q$d;->findValueByNumber(I)Lcom/google/protobuf/q$c;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v7, p7

    invoke-static {p1, v9, p0, v3, v7}, Lcom/google/protobuf/g0;->n(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    sget-object v9, Lcom/google/protobuf/l$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v9, v4

    const/4 v9, 0x2

    const/4 v11, 0x5

    const/4 v13, 0x1

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_e
    if-nez v6, :cond_4

    invoke-virtual {v1, v8}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/google/protobuf/o;

    if-eqz v4, :cond_4

    sget-object v4, Lrs6;->c:Lrs6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lcom/google/protobuf/o;

    invoke-virtual {v5}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v5}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    move-object v2, v5

    :cond_3
    invoke-virtual {p0, v9}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {p0, v2, v4, v0}, Lcom/google/protobuf/g;->c(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    return-object v3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/protobuf/g;->o(Ljava/lang/Class;Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_f
    const/4 v2, 0x3

    if-nez v6, :cond_6

    invoke-virtual {v1, v8}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Lcom/google/protobuf/o;

    if-eqz v9, :cond_6

    sget-object v5, Lrs6;->c:Lrs6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lcom/google/protobuf/o;

    invoke-virtual {v6}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v6}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    move-object v4, v6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/protobuf/g;->b(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    return-object v3

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/g;->x(I)V

    sget-object v2, Lrs6;->c:Lrs6;

    invoke-virtual {v2, v4}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10, v2, v0}, Lcom/google/protobuf/g;->b(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-interface {v2, v10}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v9}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->x()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_12
    const-string p0, "Shouldn\'t reach here."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v10

    :pswitch_13
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->w()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->v()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v13}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->u()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v11}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->t()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->A()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :pswitch_18
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_1

    :pswitch_19
    invoke-virtual {p0, v11}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :pswitch_1a
    invoke-virtual {p0, v13}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->o()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    :pswitch_1b
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->q()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :pswitch_1c
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->B()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p0, v12}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->r()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    :pswitch_1e
    invoke-virtual {p0, v11}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->p()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_1

    :pswitch_1f
    invoke-virtual {p0, v13}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/f;->l()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v1, v8, v10}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    return-object v3

    :cond_7
    sget-object p0, Lcom/google/protobuf/l$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_8

    const/16 v0, 0x12

    if-eq p0, v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v8}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    check-cast p0, Lcom/google/protobuf/a0;

    invoke-interface {p0}, Lcom/google/protobuf/a0;->toBuilder()Lcom/google/protobuf/a0$a;

    move-result-object p0

    check-cast v10, Lcom/google/protobuf/a0;

    invoke-interface {p0, v10}, Lcom/google/protobuf/a0$a;->mergeFrom(Lcom/google/protobuf/a0;)Lcom/google/protobuf/a0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/a0$a;->buildPartial()Lcom/google/protobuf/a0;

    move-result-object v10

    :cond_9
    :goto_2
    invoke-virtual {v1, v8, v10}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final h(Lcom/google/protobuf/g;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/o$e;

    iget-object p0, p2, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/google/protobuf/g;->o(Ljava/lang/Class;Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    invoke-virtual {p4, p1, p0}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lfx0;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfx0;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/j;",
            "Lcom/google/protobuf/m<",
            "Lcom/google/protobuf/o$d;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/o$e;

    iget-object p0, p2, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    invoke-interface {p0}, Lcom/google/protobuf/a0;->newBuilderForType()Lcom/google/protobuf/a0$a;

    move-result-object p0

    invoke-virtual {p1}, Lfx0;->k()Lcom/google/protobuf/f;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/a0$a;->mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/a0$a;

    iget-object p2, p2, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    invoke-interface {p0}, Lcom/google/protobuf/a0$a;->buildPartial()Lcom/google/protobuf/a0;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/f;->a(I)V

    return-void
.end method

.method public final j(Lcom/google/protobuf/n0;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/n0;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o$d;

    iget-boolean v0, p0, Lcom/google/protobuf/o$d;->e:Z

    iget-object v1, p0, Lcom/google/protobuf/o$d;->d:Lui9;

    iget-boolean v2, p0, Lcom/google/protobuf/o$d;->f:Z

    iget p0, p0, Lcom/google/protobuf/o$d;->c:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/l$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v2, Lrs6;->c:Lrs6;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-static {p0, p2, p1, v0}, Lcom/google/protobuf/g0;->y(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    return-void

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v2, Lrs6;->c:Lrs6;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-static {p0, p2, p1, v0}, Lcom/google/protobuf/g0;->v(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    return-void

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1}, Lcom/google/protobuf/g0;->D(ILjava/util/List;Lcom/google/protobuf/n0;)V

    return-void

    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1}, Lcom/google/protobuf/g0;->p(ILjava/util/List;Lcom/google/protobuf/n0;)V

    return-void

    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->C(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->B(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->A(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->z(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->E(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->o(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->s(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->t(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->F(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->x(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->u(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :pswitch_11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p2, p1, v2}, Lcom/google/protobuf/g0;->q(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/protobuf/l$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_0
    return-void

    :pswitch_12
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrs6;->c:Lrs6;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object p2

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, v0, p2}, Lcom/google/protobuf/h;->g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    return-void

    :pswitch_13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrs6;->c:Lrs6;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object p2

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, v0, p2}, Lcom/google/protobuf/h;->d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    return-void

    :pswitch_14
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->s0(ILjava/lang/String;)V

    return-void

    :pswitch_15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfx0;

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/h;->a(ILfx0;)V

    return-void

    :pswitch_16
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/h;->e(II)V

    return-void

    :pswitch_17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    const/4 p2, 0x1

    shl-long v2, v0, p2

    const/16 p2, 0x3f

    shr-long/2addr v0, p2

    xor-long/2addr v0, v2

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    return-void

    :pswitch_18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    return-void

    :pswitch_19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    return-void

    :pswitch_1a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    return-void

    :pswitch_1b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    return-void

    :pswitch_1c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->e0(IZ)V

    return-void

    :pswitch_1d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/h;->b(II)V

    return-void

    :pswitch_1e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/h;->c(IJ)V

    return-void

    :pswitch_1f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/h;->e(II)V

    return-void

    :pswitch_20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    return-void

    :pswitch_21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/h;->f(IJ)V

    return-void

    :pswitch_22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    return-void

    :pswitch_23
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
