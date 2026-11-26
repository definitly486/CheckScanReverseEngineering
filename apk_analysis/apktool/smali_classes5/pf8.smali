.class public final Lpf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf8;


# instance fields
.field public final a:Lmd8;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lff8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmd8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf8;->a:Lmd8;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lpf8;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lff8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpf8;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b(Lf02;)Ljava/io/Serializable;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lmf8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lmf8;

    iget v3, v2, Lmf8;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lmf8;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lmf8;

    invoke-direct {v2, v0, v1}, Lmf8;-><init>(Lpf8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lmf8;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lmf8;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v6, v2, Lmf8;->n:I

    iget-object v0, v0, Lpf8;->a:Lmd8;

    invoke-interface {v0, v2}, Lmd8;->a(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lle8;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lle8;->a()I

    move-result v4

    invoke-virtual {v3}, Lle8;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lle8;->b()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lke8;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lke8;->c()I

    move-result v11

    invoke-virtual {v9}, Lke8;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lke8;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lke8;->b()Ljava/util/List;

    move-result-object v10

    sget-object v14, Lkx2;->b:Lkx2;

    if-nez v10, :cond_4

    move-object v10, v14

    :cond_4
    check-cast v10, Ljava/lang/Iterable;

    move-object v15, v14

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 p1, v5

    invoke-static {v10, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lie8;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Lie8;->c()I

    move-result v2

    invoke-virtual {v10}, Lie8;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lie8;->a()Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_5

    move-object/from16 v16, v15

    :cond_5
    check-cast v16, Ljava/lang/Iterable;

    move-object/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lfe8;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Lfe8;->b()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-static/range {v19 .. v19}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v22, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v22

    goto :goto_6

    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v3, p1

    :goto_6
    if-nez v3, :cond_7

    :goto_7
    move-object/from16 v20, v5

    move-object/from16 v21, v9

    goto :goto_9

    :cond_7
    invoke-virtual/range {v18 .. v18}, Lfe8;->a()Lge8;

    move-result-object v18

    move-object/from16 v20, v5

    const/4 v5, -0x1

    if-nez v18, :cond_8

    move-object/from16 v21, v9

    move v9, v5

    goto :goto_8

    :cond_8
    sget-object v21, Lje8;->a:[I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v18, v21, v18

    move-object/from16 v21, v9

    move/from16 v9, v18

    :goto_8
    if-eq v9, v5, :cond_b

    const/4 v5, 0x1

    if-eq v9, v5, :cond_a

    const/4 v5, 0x2

    if-ne v9, v5, :cond_9

    new-instance v5, Lnd8$a;

    invoke-direct {v5, v3}, Lnd8$a;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object p1

    :cond_a
    new-instance v5, Lnd8$b;

    invoke-direct {v5, v3}, Lnd8$b;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v5, p1

    goto :goto_a

    :cond_c
    move-object/from16 v19, v3

    goto :goto_7

    :goto_a
    if-eqz v5, :cond_d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    goto :goto_5

    :cond_e
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    invoke-virtual {v10}, Lie8;->b()Lhe8;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v5, Lod8;

    invoke-virtual {v3}, Lhe8;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lhe8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v9, v3}, Lod8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    move-object/from16 v5, p1

    :goto_b
    new-instance v3, Lwd8;

    invoke-direct {v3, v2, v6, v1, v5}, Lwd8;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Lod8;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    const/16 v2, 0xa

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_10
    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lke8;->a()Lhe8;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v2, Lod8;

    invoke-virtual {v1}, Lhe8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lhe8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lod8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    goto :goto_c

    :cond_11
    move-object/from16 v15, p1

    :goto_c
    new-instance v10, Lff8;

    invoke-direct/range {v10 .. v15}, Lff8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lod8;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    move-object/from16 v1, v17

    move-object/from16 v3, v19

    const/16 v2, 0xa

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_12
    move-object/from16 v17, v1

    move-object/from16 p1, v5

    new-instance v1, Lwf8;

    invoke-direct {v1, v4, v7, v8}, Lwf8;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    const/16 v2, 0xa

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_13
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p4, Lof8;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lof8;

    iget v1, v0, Lof8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lof8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lof8;

    invoke-direct {v0, p0, p4}, Lof8;-><init>(Lpf8;Lf02;)V

    :goto_0
    iget-object p4, v0, Lof8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lof8;->n:I

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

    new-instance p4, Lue8;

    invoke-direct {p4, p1, p2, p3}, Lue8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lof8;->n:I

    iget-object p0, p0, Lpf8;->a:Lmd8;

    invoke-interface {p0, p4, v0}, Lmd8;->c(Lue8;Le02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lxe8;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lwe8;

    invoke-virtual {p4}, Lxe8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lxe8;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lxe8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lxe8;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lxe8;->e()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lwe8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final d(Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lnf8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnf8;

    iget v1, v0, Lnf8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnf8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnf8;

    invoke-direct {v0, p0, p1}, Lnf8;-><init>(Lpf8;Lf02;)V

    :goto_0
    iget-object p1, v0, Lnf8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lnf8;->n:I

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

    iput v3, v0, Lnf8;->n:I

    iget-object p0, p0, Lpf8;->a:Lmd8;

    invoke-interface {p0, v0}, Lmd8;->b(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lve8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lni3;

    invoke-virtual {p1}, Lve8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lve8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lve8;->a()Lne8;

    move-result-object p0

    invoke-virtual {p0}, Lne8;->d()Lme8;

    move-result-object p0

    new-instance v3, Lni3$a;

    invoke-virtual {p0}, Lme8;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lme8;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Lni3$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lve8;->a()Lne8;

    move-result-object p0

    invoke-virtual {p0}, Lne8;->c()Lme8;

    move-result-object p0

    new-instance v4, Lni3$a;

    invoke-virtual {p0}, Lme8;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lme8;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lni3$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lve8;->a()Lne8;

    move-result-object p0

    invoke-virtual {p0}, Lne8;->b()Lme8;

    move-result-object p0

    new-instance v5, Lni3$a;

    invoke-virtual {p0}, Lme8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lme8;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, v6, p0}, Lni3$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lve8;->a()Lne8;

    move-result-object p0

    invoke-virtual {p0}, Lne8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lni3;-><init>(Ljava/lang/String;Ljava/lang/String;Lni3$a;Lni3$a;Lni3$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lpf8;->b:Ljava/util/List;

    return-void
.end method
