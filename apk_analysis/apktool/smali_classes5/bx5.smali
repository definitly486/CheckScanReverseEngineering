.class public final Lbx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lza;

.field public final b:Lz68;

.field public final c:Lz68;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx5;->a:Lza;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lbx5;->b:Lz68;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lbx5;->c:Lz68;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lax5;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lax5;

    iget v3, v2, Lax5;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lax5;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Lax5;

    invoke-direct {v2, v0, v1}, Lax5;-><init>(Lbx5;Lf02;)V

    :goto_0
    iget-object v1, v2, Lax5;->n:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lax5;->p:I

    const/4 v5, 0x0

    iget-object v6, v0, Lbx5;->c:Lz68;

    const/16 v7, 0xa

    iget-object v8, v0, Lbx5;->a:Lza;

    const/4 v9, 0x2

    iget-object v10, v0, Lbx5;->b:Lz68;

    const/4 v12, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v12, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v3, v2, Lax5;->m:Ljava/util/ArrayList;

    iget-object v2, v2, Lax5;->l:Lp07;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 p1, v5

    move/from16 v18, v12

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object v4, v2, Lax5;->l:Lp07;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lbx5;->e:Z

    if-eqz v1, :cond_f

    :cond_4
    new-instance v1, Lp07;

    invoke-direct {v1}, Lp07;-><init>()V

    iput-object v1, v2, Lax5;->l:Lp07;

    iput v12, v2, Lax5;->p:I

    invoke-interface {v8, v2}, Lza;->a(Lf02;)Ljava/io/Serializable;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v19, v4

    move-object v4, v1

    move-object/from16 v1, v19

    :goto_1
    check-cast v1, Ljava/util/List;

    move-object v13, v1

    check-cast v13, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v13, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    move-object/from16 p1, v5

    if-ltz v15, :cond_7

    move-object/from16 v5, v16

    check-cast v5, Lfx5;

    iget v11, v4, Lp07;->b:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v12, :cond_6

    move v7, v12

    move/from16 v18, v7

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v5, v15, v11, v12, v7}, Lcx5;->b(Lfx5;IIIZ)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    move-result-object v5

    iget v7, v4, Lp07;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lp07;->b:I

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    move/from16 v15, v17

    move/from16 v12, v18

    const/16 v7, 0xa

    goto :goto_2

    :cond_7
    invoke-static {}, Lu96;->o()V

    throw p1

    :cond_8
    move-object/from16 p1, v5

    move/from16 v18, v12

    iput-object v4, v2, Lax5;->l:Lp07;

    iput-object v14, v2, Lax5;->m:Ljava/util/ArrayList;

    iput v9, v2, Lax5;->p:I

    invoke-interface {v8, v2}, Lza;->b(Lf02;)Ljava/io/Serializable;

    move-result-object v1

    if-ne v1, v3, :cond_9

    :goto_4
    return-object v3

    :cond_9
    move-object v2, v4

    move-object v3, v14

    :goto_5
    check-cast v1, Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_b

    check-cast v8, Lfx5;

    iget v11, v2, Lp07;->b:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v13, v18

    if-le v12, v13, :cond_a

    move v12, v13

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v8, v7, v11, v14, v12}, Lcx5;->b(Lfx5;IIIZ)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    move-result-object v7

    iget v8, v2, Lp07;->b:I

    add-int/2addr v8, v13

    iput v8, v2, Lp07;->b:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    move/from16 v18, v13

    goto :goto_6

    :cond_b
    invoke-static {}, Lu96;->o()V

    throw p1

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lbx5;->d:I

    invoke-static {v5, v3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_d
    invoke-virtual {v10}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-virtual {v10, v2, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbx5;->e:Z

    iget-boolean v1, v0, Lbx5;->f:Z

    if-eqz v1, :cond_f

    iput-boolean v2, v0, Lbx5;->f:Z

    :cond_e
    invoke-virtual {v6}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget v2, v0, Lbx5;->d:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v1, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_f
    invoke-virtual {v10}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
