.class public final Ls38;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Lbm3<",
        "Lbp7<",
        "-",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Ljava/util/Iterator;

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Z

.field public final synthetic v:Z


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Le02<",
            "-",
            "Ls38;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Ls38;->r:I

    iput p2, p0, Ls38;->s:I

    iput-object p3, p0, Ls38;->t:Ljava/util/Iterator;

    iput-boolean p4, p0, Ls38;->u:Z

    iput-boolean p5, p0, Ls38;->v:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lf57;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Ls38;

    iget-boolean v4, p0, Ls38;->u:Z

    iget-boolean v5, p0, Ls38;->v:Z

    iget v1, p0, Ls38;->r:I

    iget v2, p0, Ls38;->s:I

    iget-object v3, p0, Ls38;->t:Ljava/util/Iterator;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ls38;-><init>(IILjava/util/Iterator;ZZLe02;)V

    iput-object p1, v0, Ls38;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Ls38;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Ls38;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Ls38;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ls38;->q:Ljava/lang/Object;

    check-cast v1, Lbp7;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, v0, Ls38;->p:I

    iget-boolean v4, v0, Ls38;->v:Z

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    iget-boolean v9, v0, Ls38;->u:Z

    iget v10, v0, Ls38;->s:I

    const/4 v11, 0x1

    iget v12, v0, Ls38;->r:I

    const/4 v13, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v11, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v0, v0, Ls38;->l:Ljava/lang/Object;

    check-cast v0, Lt77;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v13

    :cond_1
    iget v3, v0, Ls38;->o:I

    iget v4, v0, Ls38;->n:I

    iget-object v7, v0, Ls38;->l:Ljava/lang/Object;

    check-cast v7, Lt77;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_2
    iget v3, v0, Ls38;->o:I

    iget v8, v0, Ls38;->n:I

    iget-object v14, v0, Ls38;->m:Ljava/util/Iterator;

    iget-object v15, v0, Ls38;->l:Ljava/lang/Object;

    check-cast v15, Lt77;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move/from16 v16, v11

    goto/16 :goto_9

    :cond_3
    iget-object v0, v0, Ls38;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_4
    iget v3, v0, Ls38;->o:I

    iget v5, v0, Ls38;->n:I

    iget-object v6, v0, Ls38;->m:Ljava/util/Iterator;

    iget-object v7, v0, Ls38;->l:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v15, v6

    move v6, v5

    :cond_5
    move v5, v3

    goto :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    const/16 v3, 0x400

    if-le v12, v3, :cond_7

    goto :goto_1

    :cond_7
    move v3, v12

    :goto_1
    sub-int v14, v10, v12

    iget-object v15, v0, Ls38;->t:Ljava/util/Iterator;

    const/4 v5, 0x0

    if-ltz v14, :cond_d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v6

    move v6, v3

    move v3, v14

    :cond_8
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v12, :cond_8

    iput-object v1, v0, Ls38;->q:Ljava/lang/Object;

    iput-object v7, v0, Ls38;->l:Ljava/lang/Object;

    iput-object v15, v0, Ls38;->m:Ljava/util/Iterator;

    iput v6, v0, Ls38;->n:I

    iput v3, v0, Ls38;->o:I

    iput v11, v0, Ls38;->p:I

    invoke-virtual {v1, v0, v7}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object v5

    if-ne v5, v2, :cond_5

    goto/16 :goto_d

    :goto_3
    if-eqz v9, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v3

    :goto_4
    move v3, v5

    goto :goto_2

    :cond_b
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    if-nez v4, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v12, :cond_19

    :cond_c
    iput-object v13, v0, Ls38;->q:Ljava/lang/Object;

    iput-object v13, v0, Ls38;->l:Ljava/lang/Object;

    iput-object v13, v0, Ls38;->m:Ljava/util/Iterator;

    iput v6, v0, Ls38;->n:I

    iput v3, v0, Ls38;->o:I

    iput v8, v0, Ls38;->p:I

    invoke-virtual {v1, v0, v7}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object v0

    if-ne v0, v2, :cond_19

    goto/16 :goto_d

    :cond_d
    new-instance v8, Lt77;

    move/from16 v16, v11

    new-array v11, v3, [Ljava/lang/Object;

    invoke-direct {v8, v11, v5}, Lt77;-><init>([Ljava/lang/Object;I)V

    move-object/from16 v19, v8

    move v8, v3

    move v3, v14

    move-object v14, v15

    move-object/from16 v15, v19

    :goto_5
    iget v5, v15, Lt77;->d:I

    iget-object v11, v15, Lt77;->c:[Ljava/lang/Object;

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v15}, Lv;->size()I

    move-result v6

    if-eq v6, v5, :cond_14

    iget v6, v15, Lt77;->e:I

    invoke-virtual {v15}, Lv;->size()I

    move-result v18

    add-int v18, v18, v6

    rem-int v18, v18, v5

    aput-object v17, v11, v18

    invoke-virtual {v15}, Lv;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v15, Lt77;->f:I

    invoke-virtual {v15}, Lv;->size()I

    move-result v6

    if-ne v6, v5, :cond_10

    invoke-virtual {v15}, Lv;->size()I

    move-result v6

    if-ge v6, v12, :cond_11

    shr-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v12, :cond_e

    move v5, v12

    :cond_e
    iget v6, v15, Lt77;->e:I

    if-nez v6, :cond_f

    invoke-static {v11, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_f
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v5}, Lt77;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    :goto_6
    new-instance v6, Lt77;

    invoke-virtual {v15}, Lv;->size()I

    move-result v11

    invoke-direct {v6, v5, v11}, Lt77;-><init>([Ljava/lang/Object;I)V

    move-object v15, v6

    :cond_10
    :goto_7
    const/4 v6, 0x4

    goto :goto_5

    :cond_11
    if-eqz v9, :cond_12

    move-object v5, v15

    goto :goto_8

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    iput-object v1, v0, Ls38;->q:Ljava/lang/Object;

    iput-object v15, v0, Ls38;->l:Ljava/lang/Object;

    iput-object v14, v0, Ls38;->m:Ljava/util/Iterator;

    iput v8, v0, Ls38;->n:I

    iput v3, v0, Ls38;->o:I

    iput v7, v0, Ls38;->p:I

    invoke-virtual {v1, v0, v5}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object v5

    if-ne v5, v2, :cond_13

    goto :goto_d

    :cond_13
    :goto_9
    invoke-virtual {v15, v10}, Lt77;->b(I)V

    goto :goto_7

    :cond_14
    const-string v0, "ring buffer is full"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v13

    :cond_15
    if-eqz v4, :cond_19

    move v4, v8

    move-object v7, v15

    :goto_a
    invoke-virtual {v7}, Lv;->size()I

    move-result v5

    if-le v5, v10, :cond_18

    if-eqz v9, :cond_16

    move-object v5, v7

    goto :goto_b

    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_b
    iput-object v1, v0, Ls38;->q:Ljava/lang/Object;

    iput-object v7, v0, Ls38;->l:Ljava/lang/Object;

    iput-object v13, v0, Ls38;->m:Ljava/util/Iterator;

    iput v4, v0, Ls38;->n:I

    iput v3, v0, Ls38;->o:I

    const/4 v6, 0x4

    iput v6, v0, Ls38;->p:I

    invoke-virtual {v1, v0, v5}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object v5

    if-ne v5, v2, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    invoke-virtual {v7, v10}, Lt77;->b(I)V

    goto :goto_a

    :cond_18
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    iput-object v13, v0, Ls38;->q:Ljava/lang/Object;

    iput-object v13, v0, Ls38;->l:Ljava/lang/Object;

    iput-object v13, v0, Ls38;->m:Ljava/util/Iterator;

    iput v4, v0, Ls38;->n:I

    iput v3, v0, Ls38;->o:I

    const/4 v3, 0x5

    iput v3, v0, Ls38;->p:I

    invoke-virtual {v1, v0, v7}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object v0

    if-ne v0, v2, :cond_19

    :goto_d
    return-object v2

    :cond_19
    :goto_e
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
