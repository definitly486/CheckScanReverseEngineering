.class public final Lt9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lt9;->f:I

    iput-object p1, p0, Lt9;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lt9;->f:I

    iput-object p2, p0, Lt9;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lt9;->f:I

    const-string v2, ""

    iget-object v0, v0, Lt9;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, La57;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lms5;

    invoke-static {v0, v1}, Lts5;->b(Lms5;La57;)Lus5;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    check-cast v0, Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lno5;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    check-cast v0, Lx9;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lww3;

    invoke-virtual {v4}, Lww3;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lww3;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lww3;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lww3;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lww3;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lww3;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lww3;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lww3;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lx9;->b:Ljf6;

    invoke-interface {v5}, Ljf6;->A0()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lww3;->a()Z

    move-result v5

    :goto_2
    invoke-virtual {v4}, Lww3;->c()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    instance-of v13, v15, Ljava/util/Collection;

    if-eqz v13, :cond_5

    move-object v13, v15

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Llb8;

    invoke-virtual {v15}, Llb8;->a()Lmb8;

    move-result-object v15

    sget-object v14, Lmb8;->AddToShoppingCart:Lmb8;

    if-ne v15, v14, :cond_6

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v4}, Lww3;->c()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v15

    check-cast v17, Llb8;

    move-object/from16 p0, v0

    invoke-virtual/range {v17 .. v17}, Llb8;->a()Lmb8;

    move-result-object v0

    move-object/from16 p1, v1

    sget-object v1, Lmb8;->Order:Lmb8;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    :cond_8
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 v15, v16

    :goto_5
    check-cast v15, Llb8;

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Llb8;->b()Ljava/lang/String;

    move-result-object v16

    :cond_9
    move-object/from16 v15, v16

    invoke-virtual {v4}, Lww3;->h()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lg57;

    if-eqz v0, :cond_b

    invoke-static {v1, v0}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg57;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lg57;->b()Lh57;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v16, v0

    goto :goto_8

    :cond_b
    :goto_7
    sget-object v0, Lh57;->NO_RESTRICTION:Lh57;

    goto :goto_6

    :goto_8
    invoke-virtual {v4}, Lww3;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v1, v0}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg57;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lg57;->a()Lzf;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lzf;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    move-object/from16 v17, v0

    :goto_9
    move v13, v5

    goto :goto_b

    :cond_d
    :goto_a
    move-object/from16 v17, v2

    goto :goto_9

    :goto_b
    new-instance v5, Lyw3;

    invoke-direct/range {v5 .. v17}, Lyw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lh57;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_e
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
