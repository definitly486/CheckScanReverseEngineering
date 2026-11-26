.class public final Ldk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luj6;


# instance fields
.field public final a:Lqt0;

.field public final b:Ljf6;


# direct methods
.method public constructor <init>(Lqt0;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldk6;->a:Lqt0;

    iput-object p2, p0, Ldk6;->b:Ljf6;

    return-void
.end method

.method public static final i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Llk6;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llk6;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IIILf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p4, Lzj6;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lzj6;

    iget v1, v0, Lzj6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lzj6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lzj6;

    invoke-direct {v0, p0, p4}, Lzj6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p4, v0, Lzj6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lzj6;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lzj6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, p1, p2, p3, v0}, Lqt0;->e(IIILe02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lj26;

    invoke-virtual {p4}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldj6;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final b(IIILf02;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p4, Lwj6;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lwj6;

    iget v1, v0, Lwj6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lwj6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lwj6;

    invoke-direct {v0, p0, p4}, Lwj6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p4, v0, Lwj6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lwj6;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lwj6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, p1, p2, p3, v0}, Lqt0;->f(IIILe02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lj26;

    invoke-virtual {p4}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqj6;

    invoke-virtual {p2}, Lqj6;->a()Lsj6;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p1
.end method

.method public final c(IZLf02;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lck6;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lck6;

    iget v4, v3, Lck6;->n:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lck6;->n:I

    goto :goto_0

    :cond_0
    new-instance v3, Lck6;

    invoke-direct {v3, v0, v2}, Lck6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object v2, v3, Lck6;->l:Ljava/lang/Object;

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v3, Lck6;->n:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Ldk6;->a:Lqt0;

    if-eqz p2, :cond_5

    iput v7, v3, Lck6;->n:I

    invoke-interface {v2, v1, v3}, Lqt0;->b(ILe02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast v2, Ljava/util/List;

    goto :goto_4

    :cond_5
    iput v6, v3, Lck6;->n:I

    invoke-interface {v2, v1, v3}, Lqt0;->g(ILe02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    :goto_2
    return-object v4

    :cond_6
    :goto_3
    check-cast v2, Ljava/util/List;

    :goto_4
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lfn7;

    instance-of v4, v4, Lin7;

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_8
    move-object v3, v8

    :goto_5
    instance-of v1, v3, Lin7;

    if-eqz v1, :cond_9

    check-cast v3, Lin7;

    goto :goto_6

    :cond_9
    move-object v3, v8

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lin7;->a()Lin7$a;

    move-result-object v1

    goto :goto_7

    :cond_a
    move-object v1, v8

    :goto_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lfn7;

    instance-of v5, v5, Lun7;

    if-eqz v5, :cond_b

    goto :goto_8

    :cond_c
    move-object v4, v8

    :goto_8
    instance-of v3, v4, Lun7;

    if-eqz v3, :cond_d

    check-cast v4, Lun7;

    goto :goto_9

    :cond_d
    move-object v4, v8

    :goto_9
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lun7;->a()Lun7$a;

    move-result-object v3

    goto :goto_a

    :cond_e
    move-object v3, v8

    :goto_a
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lin7$a;->a()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_b

    :cond_f
    move-object v12, v8

    :goto_b
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lin7$a;->c()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_c

    :cond_10
    move-object v13, v8

    :goto_c
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lin7$a;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_e

    :cond_11
    :goto_d
    move-object v11, v4

    goto :goto_f

    :cond_12
    :goto_e
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lun7$a;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_13
    move-object v11, v8

    :goto_f
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lin7$a;->b()Lin7$b;

    move-result-object v3

    goto :goto_10

    :cond_14
    move-object v3, v8

    :goto_10
    sget-object v4, Lin7$b;->MerchantOffers:Lin7$b;

    if-ne v3, v4, :cond_15

    move v10, v7

    goto :goto_11

    :cond_15
    const/4 v10, 0x0

    :goto_11
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lin7$a;->b()Lin7$b;

    move-result-object v1

    goto :goto_12

    :cond_16
    move-object v1, v8

    :goto_12
    sget-object v3, Lin7$b;->MixedOffers:Lin7$b;

    if-ne v1, v3, :cond_17

    if-eqz v12, :cond_17

    move v1, v7

    goto :goto_13

    :cond_17
    const/4 v1, 0x0

    :goto_13
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfn7;

    instance-of v6, v4, Lun7;

    if-eqz v6, :cond_18

    invoke-static {v3, v14}, Ldk6;->i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    check-cast v4, Lun7;

    new-instance v6, Lru7;

    invoke-virtual {v4}, Lun7;->a()Lun7$a;

    move-result-object v9

    invoke-virtual {v9}, Lun7$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lun7;->a()Lun7$a;

    move-result-object v4

    invoke-virtual {v4}, Lun7$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v9, v4}, Lru7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 p2, v1

    move-object/from16 v18, v2

    move/from16 v22, v10

    move-object/from16 v17, v12

    goto/16 :goto_1d

    :cond_18
    instance-of v6, v4, Ljn7;

    const-string v9, ""

    if-eqz v6, :cond_1d

    invoke-static {v3, v14}, Ldk6;->i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    check-cast v4, Ljn7;

    new-instance v6, Lih6;

    invoke-virtual {v4}, Ljn7;->a()Ljn7$a;

    move-result-object v15

    invoke-virtual {v15}, Ljn7$a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Ljn7;->a()Ljn7$a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljn7$a;->b()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_19

    goto :goto_15

    :cond_19
    move-object/from16 v9, v16

    :goto_15
    invoke-virtual {v4}, Ljn7;->a()Ljn7$a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljn7$a;->a()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v4}, Ljn7;->a()Ljn7$a;

    move-result-object v4

    invoke-virtual {v4}, Ljn7$a;->d()I

    move-result v4

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v7, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljn7$a$a;

    invoke-virtual/range {v17 .. v17}, Ljn7$a$a;->b()I

    move-result v18

    div-int v18, v4, v18

    move/from16 p2, v1

    const/16 v19, 0x64

    mul-int/lit8 v1, v18, 0x64

    if-eqz v7, :cond_1a

    move v7, v1

    :goto_17
    move-object/from16 v18, v2

    goto :goto_18

    :cond_1a
    const/4 v7, 0x0

    goto :goto_17

    :goto_18
    new-instance v2, Lfh6;

    move/from16 v20, v4

    invoke-virtual/range {v17 .. v17}, Ljn7$a$a;->a()I

    move-result v4

    move-object/from16 v21, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u20bd"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v10

    invoke-virtual/range {v17 .. v17}, Ljn7$a$a;->b()I

    move-result v10

    move-object/from16 v17, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v4, v7}, Lfh6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v4, v19

    if-lt v1, v4, :cond_1b

    const/4 v7, 0x1

    goto :goto_19

    :cond_1b
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, p2

    move-object/from16 v12, v17

    move-object/from16 v2, v18

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v10, v22

    goto :goto_16

    :cond_1c
    move/from16 p2, v1

    move-object/from16 v18, v2

    move/from16 v22, v10

    move-object/from16 v17, v12

    invoke-direct {v6, v15, v9, v8}, Lih6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_1d
    move/from16 p2, v1

    move-object/from16 v18, v2

    move/from16 v22, v10

    move-object/from16 v17, v12

    instance-of v1, v4, Lum7;

    if-eqz v1, :cond_1e

    invoke-static {v3, v14}, Ldk6;->i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    check-cast v4, Lum7;

    new-instance v1, Ljv1;

    invoke-virtual {v4}, Lum7;->a()Lum7$a;

    move-result-object v2

    invoke-virtual {v2}, Lum7$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lum7;->a()Lum7$a;

    move-result-object v4

    invoke-virtual {v4}, Lum7$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljv1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_1e
    instance-of v1, v4, Lvn7;

    if-eqz v1, :cond_22

    check-cast v4, Lvn7;

    new-instance v23, Lti6;

    invoke-virtual {v4}, Lvn7;->a()Lvn7$a;

    move-result-object v1

    invoke-virtual {v1}, Lvn7$a;->c()I

    move-result v24

    invoke-virtual {v4}, Lvn7;->a()Lvn7$a;

    move-result-object v1

    invoke-virtual {v1}, Lvn7$a;->b()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Lvn7;->a()Lvn7$a;

    move-result-object v1

    invoke-virtual {v1}, Lvn7$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvn7$a$a;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lvn7$a$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_1f
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_20

    move-object/from16 v26, v9

    goto :goto_1b

    :cond_20
    move-object/from16 v26, v1

    :goto_1b
    invoke-virtual {v4}, Lvn7;->a()Lvn7$a;

    move-result-object v1

    invoke-virtual {v1}, Lvn7$a;->d()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v4}, Lvn7;->a()Lvn7$a;

    move-result-object v1

    invoke-virtual {v1}, Lvn7$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvn7$a$a;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lvn7$a$a;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_1c

    :cond_21
    const/16 v28, 0x0

    :goto_1c
    invoke-direct/range {v23 .. v28}, Lti6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_22
    instance-of v1, v4, Lyn7;

    if-eqz v1, :cond_23

    invoke-static {v3, v14}, Ldk6;->i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    check-cast v4, Lyn7;

    new-instance v1, Lkk6;

    invoke-virtual {v4}, Lyn7;->a()Lyn7$a;

    move-result-object v2

    invoke-virtual {v2}, Lyn7$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkk6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_1d
    move/from16 v1, p2

    move-object/from16 v12, v17

    move-object/from16 v2, v18

    move/from16 v10, v22

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_24
    move/from16 p2, v1

    move/from16 v22, v10

    move-object/from16 v17, v12

    invoke-static {v3, v14}, Ldk6;->i(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_25

    if-eqz v11, :cond_25

    new-instance v1, Lkk6;

    invoke-direct {v1, v11}, Lkk6;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1e

    :cond_25
    const/4 v2, 0x0

    :goto_1e
    iget-object v0, v0, Ldk6;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_26
    new-instance v9, Lmu7;

    move-object/from16 v12, v17

    move/from16 v10, v22

    invoke-direct/range {v9 .. v14}, Lmu7;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v9
.end method

.method public final d(IILf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p3, Lbk6;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lbk6;

    iget v1, v0, Lbk6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbk6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbk6;

    invoke-direct {v0, p0, p3}, Lbk6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p3, v0, Lbk6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lbk6;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lbk6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, p1, p2, v0}, Lqt0;->d(IILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lj26;

    invoke-virtual {p3}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldj6;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final e(IILf02;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p3, Lyj6;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyj6;

    iget v1, v0, Lyj6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyj6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyj6;

    invoke-direct {v0, p0, p3}, Lyj6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyj6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyj6;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lyj6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, p1, p2, v0}, Lqt0;->a(IILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lj26;

    invoke-virtual {p3}, Lj26;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqj6;

    invoke-virtual {p2}, Lqj6;->a()Lsj6;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Ldj6;->b(Lsj6;)Lti6;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p1
.end method

.method public final f(Lf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p1, Lak6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lak6;

    iget v1, v0, Lak6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lak6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lak6;

    invoke-direct {v0, p0, p1}, Lak6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p1, v0, Lak6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lak6;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lak6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, v0}, Lqt0;->c(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ldj6;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p1, Lxj6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lxj6;

    iget v1, v0, Lxj6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lxj6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lxj6;

    invoke-direct {v0, p0, p1}, Lxj6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object p1, v0, Lxj6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lxj6;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lxj6;->n:I

    iget-object p0, p0, Ldk6;->a:Lqt0;

    invoke-interface {p0, v0}, Lqt0;->i(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ldj6;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final h(ILf02;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lvj6;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lvj6;

    iget v3, v2, Lvj6;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lvj6;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lvj6;

    invoke-direct {v2, v0, v1}, Lvj6;-><init>(Ldk6;Lf02;)V

    :goto_0
    iget-object v1, v2, Lvj6;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lvj6;->n:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v5, v2, Lvj6;->n:I

    iget-object v1, v0, Ldk6;->a:Lqt0;

    move/from16 v4, p1

    invoke-interface {v1, v4, v2}, Lqt0;->h(ILe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lzh6;

    instance-of v4, v4, Lst5;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_5
    move-object v3, v6

    :goto_2
    instance-of v2, v3, Lst5;

    if-eqz v2, :cond_6

    check-cast v3, Lst5;

    goto :goto_3

    :cond_6
    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lst5;->a()Lst5$a;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lst5$a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v6

    :goto_5
    const-string v4, ""

    if-nez v3, :cond_9

    move-object v3, v4

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lst5$a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v6

    :goto_6
    if-nez v2, :cond_b

    move-object v2, v4

    :cond_b
    iget-object v0, v0, Ldk6;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    goto :goto_7

    :cond_c
    move-object v0, v6

    :goto_7
    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v7, Lkk6;

    invoke-direct {v7, v2}, Lkk6;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzh6;

    instance-of v8, v7, Lj61;

    if-eqz v8, :cond_d

    check-cast v7, Lj61;

    invoke-virtual {v7}, Lj61;->a()Lj61$a;

    move-result-object v8

    invoke-virtual {v8}, Lj61$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lj61;->a()Lj61$a;

    move-result-object v9

    invoke-virtual {v9}, Lj61$a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lj61;->a()Lj61$a;

    move-result-object v10

    invoke-virtual {v10}, Lj61$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lj61;->a()Lj61$a;

    move-result-object v7

    invoke-virtual {v7}, Lj61$a;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Leh6;

    invoke-direct {v11, v8, v9, v7, v10}, Leh6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v1

    move-object/from16 v17, v4

    move v4, v5

    goto/16 :goto_f

    :cond_d
    instance-of v8, v7, Ldy4;

    const/16 v9, 0xa

    if-eqz v8, :cond_12

    check-cast v7, Ldy4;

    new-instance v11, Lih6;

    invoke-virtual {v7}, Ldy4;->a()Ldy4$a;

    move-result-object v8

    invoke-virtual {v8}, Ldy4$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ldy4;->a()Ldy4$a;

    move-result-object v10

    invoke-virtual {v10}, Ldy4$a;->b()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    move-object v10, v4

    :cond_e
    invoke-virtual {v7}, Ldy4;->a()Ldy4$a;

    move-result-object v12

    invoke-virtual {v12}, Ldy4$a;->a()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7}, Ldy4;->a()Ldy4$a;

    move-result-object v7

    invoke-virtual {v7}, Ldy4$a;->d()I

    move-result v7

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v12, v5

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldy4$a$a;

    invoke-virtual {v14}, Ldy4$a$a;->b()I

    move-result v15

    div-int v15, v7, v15

    const/16 v6, 0x64

    mul-int/2addr v15, v6

    const/16 v16, 0x0

    if-eqz v12, :cond_f

    move v12, v15

    goto :goto_a

    :cond_f
    move/from16 v12, v16

    :goto_a
    new-instance v5, Lfh6;

    invoke-virtual {v14}, Ldy4$a$a;->a()I

    move-result v6

    move-object/from16 p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u20bd"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Ldy4$a$a;->b()I

    move-result v14

    move-object/from16 v17, v4

    const-string v4, "\u0437\u0430 "

    invoke-static {v14, v4, v6}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v4, v12}, Lfh6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x64

    if-lt v15, v1, :cond_10

    const/4 v12, 0x1

    goto :goto_b

    :cond_10
    move/from16 v12, v16

    :goto_b
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_9

    :cond_11
    move-object/from16 p1, v1

    move-object/from16 v17, v4

    invoke-direct {v11, v8, v10, v13}, Lih6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    goto/16 :goto_f

    :cond_12
    move-object/from16 p1, v1

    move-object/from16 v17, v4

    instance-of v1, v7, Lz95;

    if-eqz v1, :cond_14

    check-cast v7, Lz95;

    invoke-virtual {v7}, Lz95;->a()Lz95$a;

    move-result-object v1

    invoke-virtual {v1}, Lz95$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lz95;->a()Lz95$a;

    move-result-object v4

    invoke-virtual {v4}, Lz95$a;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz95$a$a;

    new-instance v7, Lji6;

    invoke-virtual {v6}, Lz95$a$a;->a()I

    move-result v8

    invoke-virtual {v6}, Lz95$a$a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lz95$a$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Lji6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    new-instance v11, Lni6;

    const/4 v4, 0x1

    invoke-direct {v11, v1, v4, v5}, Lni6;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_f

    :cond_14
    const/4 v4, 0x1

    instance-of v1, v7, Lrt5;

    if-eqz v1, :cond_16

    check-cast v7, Lrt5;

    invoke-virtual {v7}, Lrt5;->a()Lrt5$a;

    move-result-object v1

    invoke-virtual {v1}, Lrt5$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lrt5;->a()Lrt5$a;

    move-result-object v5

    invoke-virtual {v5}, Lrt5$a;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrt5$a$a;

    new-instance v8, Lai6;

    invoke-virtual {v7}, Lrt5$a$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lai6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    new-instance v11, Lbi6;

    invoke-direct {v11, v1, v6}, Lbi6;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_16
    instance-of v1, v7, Leq8;

    if-eqz v1, :cond_17

    check-cast v7, Leq8;

    new-instance v11, Lqi6;

    invoke-virtual {v7}, Leq8;->a()Leq8$a;

    move-result-object v1

    invoke-virtual {v1}, Leq8$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Leq8;->a()Leq8$a;

    move-result-object v5

    invoke-virtual {v5}, Leq8$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v1, v5}, Lqi6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_17
    instance-of v1, v7, Lch6;

    if-eqz v1, :cond_19

    check-cast v7, Lch6;

    invoke-virtual {v7}, Lch6;->a()Lch6$a;

    move-result-object v1

    invoke-virtual {v1}, Lch6$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lch6;->a()Lch6$a;

    move-result-object v5

    invoke-virtual {v5}, Lch6$a;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;

    invoke-direct {v8, v7}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_18
    new-instance v11, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    invoke-direct {v11, v1, v6}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_19
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_1a

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    move-object/from16 v1, p1

    move v5, v4

    move-object/from16 v4, v17

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1b
    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Loh6;

    invoke-direct {v1, v3, v0}, Loh6;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
