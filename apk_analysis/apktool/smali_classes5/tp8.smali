.class public final Ltp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lap8;


# instance fields
.field public final a:Lvo8;

.field public final b:Lkr6;


# direct methods
.method public constructor <init>(Lvo8;Lkr6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp8;->a:Lvo8;

    iput-object p2, p0, Ltp8;->b:Lkr6;

    return-void
.end method


# virtual methods
.method public final a(ILf02;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkp8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkp8;

    iget v3, v2, Lkp8;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkp8;

    invoke-direct {v2, v0, v1}, Lkp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lkp8;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lkp8;->n:I

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

    iput v6, v2, Lkp8;->n:I

    iget-object v0, v0, Ltp8;->a:Lvo8;

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lvo8;->j(ILe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Ltm8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ltm8;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ll82$a;

    invoke-virtual {v1}, Ltm8;->d()Ltm8$a;

    move-result-object v3

    invoke-virtual {v3}, Ltm8$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ltm8;->d()Ltm8$a;

    move-result-object v4

    invoke-virtual {v4}, Ltm8$a;->a()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Ll82$a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ltm8;->b()Ltm8$c;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    invoke-virtual {v3}, Ltm8$c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ltm8$c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ltm8$c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ltm8$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v7, v8, v9, v3}, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    invoke-virtual {v1}, Ltm8;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v7, Lb82;

    invoke-direct {v7, v3}, Lb82;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v7, v5

    :goto_3
    invoke-static {v7}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1}, Ltm8;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltm8$b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ltm8$b;->b()Ltm8$b$a;

    move-result-object v9

    sget-object v10, Lwn8$a;->b:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string v13, "#FFFFFF"

    if-eq v9, v6, :cond_9

    if-eq v9, v12, :cond_8

    if-eq v9, v11, :cond_7

    if-ne v9, v10, :cond_6

    const-string v9, "#EBA500"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "#FFF9EB"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, 0x7f08049f

    move-object/from16 p2, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v14, v13, v15, v5, v9}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_5

    :cond_6
    move-object/from16 p2, v5

    invoke-static {}, Lme0;->e()V

    return-object p2

    :cond_7
    move-object/from16 p2, v5

    const-string v5, "#CCCED3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v13, "#F8F8F8"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f080192

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "#E6E8EE"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v5, v9, v13, v14, v15}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    :cond_8
    move-object/from16 p2, v5

    const-string v5, "#3085FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "#EBF3FF"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f080133

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v13, v14, v15, v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_5

    :cond_9
    move-object/from16 p2, v5

    const-string v5, "#00AA63"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "#E6FBEB"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f080194

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v13, v14, v15, v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_5
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v16

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v17

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v18

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v19

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v20

    new-instance v13, Lm82;

    invoke-virtual {v8}, Ltm8$b;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Ltm8$b;->c()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v13 .. v20}, Lm82;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p2

    goto/16 :goto_4

    :cond_a
    invoke-static {v7, v3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ll82;

    invoke-direct {v3, v0, v2, v4, v1}, Ll82;-><init>(Ljava/lang/String;Ll82$a;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public final b(ILf02;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Llp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Llp8;

    iget v1, v0, Llp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Llp8;

    invoke-direct {v0, p0, p2}, Llp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Llp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Llp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Llp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->k(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkn8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lkn8;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lkn8;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfo8;

    invoke-virtual {p1}, Lfo8;->o()Lfo8$a;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lwn8$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_3
    if-eq v0, v4, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    move-object p1, v3

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lwn8;->a(Lfo8;)Lfm8;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lkn8;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lkn8;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lkn8;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lkn8;->b()Ljava/lang/String;

    move-result-object v11

    new-instance v5, Ljn8;

    invoke-direct/range {v5 .. v11}, Ljn8;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public final c(ILf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcp8;

    iget v1, v0, Lcp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcp8;

    invoke-direct {v0, p0, p2}, Lcp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lcp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lcp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->a(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lgo8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ls72;

    invoke-virtual {p2}, Lgo8;->d()Z

    move-result p1

    invoke-virtual {p2}, Lgo8;->a()Lgo8$b;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v4, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-virtual {p2}, Lgo8$b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lgo8$b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lgo8$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lgo8$b;->b()Lgo8$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    invoke-virtual {v0}, Lgo8$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgo8$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lgo8$b;->c()Lgo8$a;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v3, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    invoke-virtual {p2}, Lgo8$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lgo8$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v0, p2}, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;)V

    move-object v3, v4

    :cond_5
    invoke-direct {p0, p1, v3}, Ls72;-><init>(ZLcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;)V

    return-object p0
.end method

.method public final d(ILf02;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lrp8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lrp8;

    iget v3, v2, Lrp8;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lrp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lrp8;

    invoke-direct {v2, v0, v1}, Lrp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lrp8;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lrp8;->n:I

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

    iput v6, v2, Lrp8;->n:I

    iget-object v0, v0, Ltp8;->a:Lvo8;

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lvo8;->p(ILe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Ljo8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljo8;->g()I

    move-result v8

    invoke-virtual {v1}, Ljo8;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljo8;->l()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljo8;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljo8;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move v7, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v13, v7, 0x1

    if-ltz v7, :cond_5

    check-cast v10, Ljava/lang/String;

    new-instance v14, Lwm8;

    if-nez v7, :cond_4

    invoke-virtual {v1}, Ljo8;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    invoke-direct {v14, v10, v7}, Lwm8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v13

    goto :goto_2

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_6
    new-instance v0, Lcn8;

    invoke-virtual {v1}, Ljo8;->k()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v5, v4, v4}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1}, Ljo8;->e()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfn8;

    new-instance v13, Lcn8;

    invoke-virtual {v7}, Lfn8;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lfn8;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v14, v7, v6, v4}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v10, v5

    :cond_8
    if-nez v10, :cond_9

    sget-object v10, Lkx2;->b:Lkx2;

    :cond_9
    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lgn8;

    invoke-direct {v3, v0, v4}, Lgn8;-><init>(Ljava/util/ArrayList;Z)V

    invoke-static {v3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lum8$a;

    invoke-virtual {v1}, Ljo8;->b()Ljo8$a;

    move-result-object v0

    invoke-virtual {v0}, Ljo8$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljo8;->b()Ljo8$a;

    move-result-object v2

    invoke-virtual {v2}, Ljo8$a;->a()Z

    move-result v2

    invoke-virtual {v1}, Ljo8;->b()Ljo8$a;

    move-result-object v3

    invoke-virtual {v3}, Ljo8$a;->b()Z

    move-result v3

    invoke-direct {v13, v0, v2, v3}, Lum8$a;-><init>(Ljava/lang/String;ZZ)V

    new-instance v14, Lum8$b;

    invoke-virtual {v1}, Ljo8;->d()Ljo8$b;

    move-result-object v0

    invoke-virtual {v0}, Ljo8$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljo8;->d()Ljo8$b;

    move-result-object v2

    invoke-virtual {v2}, Ljo8$b;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Ljo8;->d()Ljo8$b;

    move-result-object v4

    invoke-virtual {v4}, Ljo8$b;->b()Z

    move-result v4

    invoke-direct {v14, v0, v2, v3, v4}, Lum8$b;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {v1}, Ljo8;->i()Lc06;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lc06;->f()Lb06;

    move-result-object v0

    move-object v15, v0

    goto :goto_5

    :cond_a
    move-object v15, v5

    :goto_5
    invoke-virtual {v1}, Ljo8;->f()Ljl3;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object v5

    :cond_b
    move-object/from16 v16, v5

    invoke-virtual {v1}, Ljo8;->j()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    new-instance v7, Lum8;

    invoke-direct/range {v7 .. v17}, Lum8;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lum8$a;Lum8$b;Lb06;Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;Z)V

    return-object v7
.end method

.method public final e(Lo63;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1}, Lvo8;->r(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lj8;Lf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lsp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsp8;

    iget v1, v0, Lsp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsp8;

    invoke-direct {v0, p0, p2}, Lsp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lsp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lsp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lsp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->o(Lj8;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lol8;

    invoke-virtual {p2}, Lol8;->a()Lol8$b;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v4, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;

    invoke-virtual {p0}, Lol8$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lol8$b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lol8$b;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lol8$b;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_4
    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    move-object v8, v3

    invoke-virtual {p0}, Lol8$b;->c()Lol8$a;

    move-result-object p0

    invoke-virtual {p0}, Lol8$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_6
    return-object v3
.end method

.method public final g(ILf02;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lgp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lgp8;

    iget v1, v0, Lgp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lgp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lgp8;

    invoke-direct {v0, p0, p2}, Lgp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lgp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lgp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lgp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->n(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lhm8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lib1;

    invoke-virtual {p2}, Lhm8;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lhm8;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lib1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p2}, Lhm8;->d()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_5

    check-cast v6, Ljava/lang/String;

    new-instance v8, Lwm8;

    if-nez v5, :cond_4

    invoke-virtual {p2}, Lhm8;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v3

    :goto_3
    invoke-direct {v8, v6, v5}, Lwm8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_6
    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Ldb1;

    invoke-virtual {p2}, Lhm8;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldb1;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lhm8;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v6, v2

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v11, v6, 0x1

    if-ltz v6, :cond_b

    check-cast v1, Lhm8$b;

    new-instance v5, Lgc1;

    invoke-virtual {v1}, Lhm8$b;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_7

    move v8, v4

    goto :goto_5

    :cond_7
    move v8, v2

    :goto_5
    invoke-virtual {p2}, Lhm8;->f()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2}, Lhm8;->e()Lhm8$c;

    move-result-object v1

    invoke-virtual {v1}, Lhm8$c;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move v9, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v9, v4

    :goto_7
    invoke-virtual {p2}, Lhm8;->f()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2}, Lhm8;->e()Lhm8$c;

    move-result-object v1

    invoke-virtual {v1}, Lhm8$c;->a()Z

    move-result v1

    if-nez v1, :cond_a

    move v10, v4

    goto :goto_8

    :cond_a
    move v10, v2

    :goto_8
    invoke-direct/range {v5 .. v10}, Lgc1;-><init>(ILjava/lang/String;ZZZ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v11

    goto :goto_4

    :cond_b
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_c
    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v4, Lxa1;

    sget-object v5, Lxa1$a;->Activate:Lxa1$a;

    invoke-virtual {p2}, Lhm8;->b()Lhm8$a;

    move-result-object p1

    invoke-virtual {p1}, Lhm8$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lhm8;->b()Lhm8$a;

    move-result-object p1

    invoke-virtual {p1}, Lhm8$a;->a()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lxa1;-><init>(Lxa1$a;Ljava/lang/String;ZZZ)V

    new-instance v5, Lxa1;

    sget-object v6, Lxa1$a;->Reward:Lxa1$a;

    invoke-virtual {p2}, Lhm8;->e()Lhm8$c;

    move-result-object p1

    invoke-virtual {p1}, Lhm8$c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lhm8;->e()Lhm8$c;

    move-result-object p1

    invoke-virtual {p1}, Lhm8$c;->a()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lxa1;-><init>(Lxa1$a;Ljava/lang/String;ZZZ)V

    filled-new-array {v4, v5}, [Lxa1;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lhm8;->g()Ljl3;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object p1

    goto :goto_9

    :cond_d
    move-object p1, v3

    :goto_9
    invoke-static {p1}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lhm8;->i()Lc06;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lc06;->f()Lb06;

    move-result-object v3

    :cond_e
    new-instance p1, Ljb1;

    invoke-direct {p1, p0, v3}, Ljb1;-><init>(Ljava/util/List;Lb06;)V

    return-object p1
.end method

.method public final h(IILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lhp8;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lhp8;

    iget v1, v0, Lhp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhp8;

    invoke-direct {v0, p0, p3}, Lhp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p3, v0, Lhp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lhp8;->n:I

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

    iput v3, v0, Lhp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, p2, v0}, Lvo8;->l(IILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkm8;

    invoke-virtual {p3}, Lkm8;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILf02;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lop8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lop8;

    iget v3, v2, Lop8;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lop8;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Lop8;

    invoke-direct {v2, v0, v1}, Lop8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lop8;->n:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lop8;->p:I

    iget-object v5, v0, Ltp8;->b:Lkr6;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lop8;->m:Ljq6;

    iget-object v2, v2, Lop8;->l:Lbo8;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object v0, v2, Lop8;->l:Lbo8;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v8, v2, Lop8;->p:I

    iget-object v0, v0, Ltp8;->a:Lvo8;

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lvo8;->d(ILe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast v1, Lbo8;

    invoke-virtual {v1}, Lbo8;->i()I

    move-result v0

    iput-object v1, v2, Lop8;->l:Lbo8;

    iput v7, v2, Lop8;->p:I

    invoke-interface {v5, v0, v2}, Lkr6;->b(ILe02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v1

    move-object v1, v0

    :goto_2
    check-cast v1, Ljq6;

    :try_start_1
    invoke-virtual {v4}, Lbo8;->i()I

    move-result v0

    iput-object v4, v2, Lop8;->l:Lbo8;

    iput-object v1, v2, Lop8;->m:Ljq6;

    iput v6, v2, Lop8;->p:I

    invoke-interface {v5, v0, v2}, Lkr6;->a(ILe02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_7

    :goto_3
    return-object v3

    :cond_7
    move-object v3, v1

    move-object v2, v4

    move-object v1, v0

    :goto_4
    :try_start_2
    check-cast v1, Lmq6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v2, v4

    :goto_5
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_8

    goto :goto_7

    :cond_8
    throw v0

    :cond_9
    :goto_7
    instance-of v0, v1, Lk57$a;

    if-eqz v0, :cond_a

    move-object v1, v9

    :cond_a
    check-cast v1, Lmq6;

    new-instance v0, Lsq6;

    invoke-direct {v0, v9}, Lsq6;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lmq6;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmq6;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Llq6;

    invoke-direct {v11, v10}, Llq6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    new-instance v1, Ldr6;

    invoke-direct {v1, v5, v6}, Ldr6;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_9

    :cond_c
    move-object v1, v9

    :goto_9
    invoke-virtual {v2}, Lbo8;->i()I

    move-result v5

    invoke-virtual {v2}, Lbo8;->h()Lc06;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lc06;->f()Lb06;

    move-result-object v6

    goto :goto_a

    :cond_d
    move-object v6, v9

    :goto_a
    new-instance v10, Lzq6;

    invoke-virtual {v2}, Lbo8;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lbo8;->g()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lzq6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2}, Lbo8;->c()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    move v14, v13

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_f

    check-cast v15, Ljava/lang/String;

    new-instance v7, Lwq6;

    if-nez v14, :cond_e

    invoke-virtual {v2}, Lbo8;->a()Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_e
    move-object v14, v9

    :goto_c
    invoke-direct {v7, v15, v14}, Lwq6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v16

    const/4 v7, 0x2

    goto :goto_b

    :cond_f
    invoke-static {}, Lu96;->o()V

    throw v9

    :cond_10
    invoke-static {v12, v10}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v10, Lcn8;

    invoke-virtual {v2}, Lbo8;->j()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9, v13, v13}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2}, Lbo8;->e()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfn8;

    new-instance v14, Lcn8;

    invoke-virtual {v11}, Lfn8;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lfn8;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v15, v11, v8, v13}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    move-object v12, v9

    :cond_12
    if-nez v12, :cond_13

    sget-object v12, Lkx2;->b:Lkx2;

    :cond_13
    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12, v10}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v10, Lgn8;

    invoke-direct {v10, v4, v13}, Lgn8;-><init>(Ljava/util/ArrayList;Z)V

    invoke-static {v10}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v7}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lbo8;->f()Ljl3;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object v7

    goto :goto_e

    :cond_14
    move-object v7, v9

    :goto_e
    invoke-static {v7}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Lpz3;

    aput-object v1, v7, v13

    aput-object v0, v7, v8

    invoke-static {v7}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v4}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3}, Ljq6;->a()Ljq6$c;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljq6$c;->a()Ljava/lang/String;

    move-result-object v9

    :cond_15
    move-object v13, v9

    sget-object v11, Lqq6$a;->Activate:Lqq6$a;

    invoke-virtual {v2}, Lbo8;->b()Lbo8$a;

    move-result-object v1

    invoke-virtual {v1}, Lbo8$a;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lbo8;->b()Lbo8$a;

    move-result-object v1

    invoke-virtual {v1}, Lbo8$a;->a()Z

    move-result v15

    invoke-virtual {v2}, Lbo8;->i()I

    move-result v12

    new-instance v10, Lqq6;

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lqq6;-><init>(Lqq6$a;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v12, Lqq6$a;->Reward:Lqq6$a;

    invoke-virtual {v2}, Lbo8;->d()Lbo8$b;

    move-result-object v1

    invoke-virtual {v1}, Lbo8$b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lbo8;->d()Lbo8$b;

    move-result-object v1

    invoke-virtual {v1}, Lbo8$b;->a()Z

    move-result v16

    invoke-virtual {v2}, Lbo8;->i()I

    move-result v13

    new-instance v11, Lqq6;

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Lqq6;-><init>(Lqq6$a;ILjava/lang/String;Ljava/lang/String;ZZ)V

    filled-new-array {v10, v11}, [Lqq6;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ltq6;

    invoke-direct {v1, v5, v0, v6}, Ltq6;-><init>(ILjava/util/List;Lb06;)V

    return-object v1
.end method

.method public final j(ILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lep8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lep8;

    iget v1, v0, Lep8;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lep8;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lep8;

    invoke-direct {v0, p0, p2}, Lep8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lep8;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lep8;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lep8;->l:I

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput p1, v0, Lep8;->l:I

    iput v3, v0, Lep8;->o:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->a(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lgo8;

    invoke-static {p2, p1}, Lwn8;->b(Lgo8;I)Lkk1;

    move-result-object p0

    return-object p0
.end method

.method public final k(ZLf02;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lmp8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lmp8;

    iget v3, v2, Lmp8;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lmp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lmp8;

    invoke-direct {v2, v0, v1}, Lmp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lmp8;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lmp8;->n:I

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

    iput v5, v2, Lmp8;->n:I

    iget-object v0, v0, Ltp8;->a:Lvo8;

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lvo8;->f(ZLe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lzo8;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1}, Lzo8;->d()Lzo8$c;

    move-result-object v0

    const/16 v4, 0x1c

    if-eqz v0, :cond_5

    new-instance v12, Lpw7;

    invoke-virtual {v0}, Lzo8$c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lzo8$c;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v12, v4, v7, v6, v8}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lzo8$c;->b()I

    move-result v8

    invoke-virtual {v0}, Lzo8$c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lzo8$c;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lzo8$c;->d()Lc06;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc06;->f()Lb06;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    :cond_4
    move-object v11, v6

    :goto_2
    new-instance v7, Lzl8;

    invoke-direct/range {v7 .. v12}, Lzl8;-><init>(ILjava/lang/String;Ljava/lang/String;Lb06;Lpw7;)V

    goto :goto_3

    :cond_5
    move-object v7, v6

    :goto_3
    invoke-virtual {v1}, Lzo8;->c()Lfo8;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v14, Lpw7;

    invoke-virtual {v0}, Lfo8;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lfo8;->i()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Lfo8;->b()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x18

    invoke-direct {v14, v11, v8, v10, v9}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lfo8;->i()I

    move-result v9

    invoke-virtual {v0}, Lfo8;->j()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    if-nez v8, :cond_6

    move-object v8, v10

    :cond_6
    invoke-virtual {v0}, Lfo8;->n()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    move-object v11, v10

    :cond_7
    invoke-virtual {v0}, Lfo8;->f()Z

    move-result v12

    invoke-virtual {v0}, Lfo8;->h()Z

    move-result v13

    move-object v10, v8

    new-instance v8, Lnm8;

    invoke-direct/range {v8 .. v14}, Lnm8;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLpw7;)V

    goto :goto_4

    :cond_8
    move-object v8, v6

    :goto_4
    new-instance v0, Lro8;

    invoke-virtual {v1}, Lzo8;->g()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lro8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lzo8;->i()Lzo8$g;

    move-result-object v9

    const/4 v10, 0x2

    if-eqz v9, :cond_18

    invoke-virtual {v9}, Lzo8$g;->a()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v5, :cond_10

    invoke-virtual {v9}, Lzo8$g;->a()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzo8$d;

    new-instance v11, Lpw7;

    invoke-virtual {v9}, Lzo8$d;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lzo8$d;->c()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v4, v12, v6, v13}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v9}, Lzo8$d;->c()I

    move-result v12

    invoke-virtual {v9}, Lzo8$d;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lzo8$d;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lzo8$d;->b()Lzo8$e;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v9}, Lzo8$d;->b()Lzo8$e;

    move-result-object v4

    invoke-virtual {v4}, Lzo8$e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lzo8$d;->b()Lzo8$e;

    move-result-object v15

    invoke-virtual {v15}, Lzo8$e;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    move-object/from16 p2, v6

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->b()Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    add-long v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object/from16 v2, p2

    :goto_5
    new-instance v3, Lrh9$a;

    invoke-direct {v3, v4, v15, v6, v2}, Lrh9$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object v15, v3

    goto :goto_6

    :cond_a
    move-object/from16 p2, v6

    move-object/from16 v15, p2

    :goto_6
    invoke-virtual {v9}, Lzo8$d;->e()Lzo8$f;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lzo8$f;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_7

    :cond_b
    move-object/from16 v16, p2

    :goto_7
    invoke-virtual {v9}, Lzo8$d;->f()Lzo8$a;

    move-result-object v2

    sget-object v3, Lwn8$a;->c:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v5, :cond_d

    if-ne v2, v10, :cond_c

    sget-object v2, Lrh9$b;->COMPLETED:Lrh9$b;

    :goto_8
    move-object/from16 v17, v2

    goto :goto_9

    :cond_c
    invoke-static {}, Lme0;->e()V

    return-object p2

    :cond_d
    sget-object v2, Lrh9$b;->AVAILABLE:Lrh9$b;

    goto :goto_8

    :goto_9
    invoke-virtual {v9}, Lzo8$d;->h()Lzo8$b;

    move-result-object v2

    sget-object v3, Lwn8$a;->d:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v5, :cond_f

    if-ne v2, v10, :cond_e

    sget-object v2, Lfo0$c;->DAILY:Lfo0$c;

    :goto_a
    move-object/from16 v18, v2

    move-object/from16 v19, v11

    goto :goto_b

    :cond_e
    invoke-static {}, Lme0;->e()V

    return-object p2

    :cond_f
    sget-object v2, Lfo0$c;->AD:Lfo0$c;

    goto :goto_a

    :goto_b
    new-instance v11, Lrh9;

    invoke-direct/range {v11 .. v19}, Lrh9;-><init>(ILjava/lang/String;Ljava/lang/String;Lrh9$a;Ljava/lang/String;Lrh9$b;Lfo0$c;Lpw7;)V

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object v6, v11

    goto/16 :goto_14

    :cond_10
    move-object/from16 p2, v6

    invoke-virtual {v9}, Lzo8$g;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzo8$d;

    new-instance v12, Lpw7;

    invoke-virtual {v11}, Lzo8$d;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lzo8$d;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-direct {v12, v4, v13, v15, v14}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11}, Lzo8$d;->c()I

    move-result v13

    invoke-virtual {v11}, Lzo8$d;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lzo8$d;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    if-eqz v16, :cond_12

    invoke-virtual {v11}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lzo8$d;->b()Lzo8$e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lzo8$e;->b()Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    add-long v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    :goto_d
    move-object/from16 v22, v1

    goto :goto_e

    :cond_11
    move-object/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_d

    :goto_e
    new-instance v1, Lfo0$a;

    invoke-direct {v1, v4, v10, v5, v0}, Lfo0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v16, v1

    goto :goto_f

    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    const/16 v16, 0x0

    :goto_f
    invoke-virtual {v11}, Lzo8$d;->f()Lzo8$a;

    move-result-object v0

    sget-object v1, Lwn8$a;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    sget-object v0, Lfo0$b;->COMPLETED:Lfo0$b;

    :goto_10
    move-object/from16 v17, v0

    goto :goto_11

    :cond_13
    invoke-static {}, Lme0;->e()V

    const/4 v15, 0x0

    return-object v15

    :cond_14
    sget-object v0, Lfo0$b;->AVAILABLE:Lfo0$b;

    goto :goto_10

    :goto_11
    invoke-virtual {v11}, Lzo8$d;->h()Lzo8$b;

    move-result-object v0

    sget-object v1, Lwn8$a;->d:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    sget-object v0, Lfo0$c;->DAILY:Lfo0$c;

    move-object/from16 v18, v0

    const/4 v0, 0x0

    :goto_12
    move-object/from16 v19, v12

    goto :goto_13

    :cond_15
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    sget-object v1, Lfo0$c;->AD:Lfo0$c;

    move-object/from16 v18, v1

    goto :goto_12

    :goto_13
    new-instance v12, Lfo0;

    invoke-direct/range {v12 .. v19}, Lfo0;-><init>(ILjava/lang/String;Ljava/lang/String;Lfo0$a;Lfo0$b;Lfo0$c;Lpw7;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p2, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    const/16 v4, 0x1c

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_c

    :cond_17
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    new-instance v0, Lir0;

    invoke-direct {v0, v9}, Lir0;-><init>(Ljava/util/ArrayList;)V

    move-object v6, v0

    goto :goto_14

    :cond_18
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object v0, v6

    :goto_14
    const/4 v0, 0x4

    new-array v0, v0, [Lso8;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/16 v20, 0x1

    aput-object v8, v0, v20

    const/4 v1, 0x2

    aput-object v21, v0, v1

    const/4 v1, 0x3

    aput-object v6, v0, v1

    invoke-static {v0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Lzo8;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfo8;

    invoke-static {v3}, Lwn8;->a(Lfo8;)Lfm8;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1a
    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Lzo8;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lzo8;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lzo8;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lzo8;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lyo8;

    invoke-direct/range {v4 .. v9}, Lyo8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method public final l(IILsn8;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, p2, p3}, Lvo8;->g(IILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(ILf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lnp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lnp8;

    iget v1, v0, Lnp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnp8;

    invoke-direct {v0, p0, p2}, Lnp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lnp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lnp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lnp8;->n:I

    iget-object p0, p0, Ltp8;->b:Lkr6;

    invoke-interface {p0, p1, v0}, Lkr6;->c(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljq6;

    invoke-virtual {p2}, Ljq6;->b()Ljq6$a;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljq6$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v3
.end method

.method public final n(Lf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p1, Ljp8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljp8;

    iget v1, v0, Ljp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljp8;

    invoke-direct {v0, p0, p1}, Ljp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p1, v0, Ljp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ljp8;->n:I

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

    iput v3, v0, Ljp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, v0}, Lvo8;->i(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfo8;

    invoke-virtual {v1}, Lfo8;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfo8;

    invoke-static {v0}, Lwn8;->a(Lfo8;)Lfm8;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object p1
.end method

.method public final o(IILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Ldp8;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ldp8;

    iget v1, v0, Ldp8;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ldp8;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ldp8;

    invoke-direct {v0, p0, p3}, Ldp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p3, v0, Ldp8;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ldp8;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Ldp8;->l:I

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput p1, v0, Ldp8;->l:I

    iput v3, v0, Ldp8;->o:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, p2, v0}, Lvo8;->m(IILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lgo8;

    invoke-static {p3, p1}, Lwn8;->b(Lgo8;I)Lkk1;

    move-result-object p0

    return-object p0
.end method

.method public final p(ILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lpp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lpp8;

    iget v1, v0, Lpp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lpp8;

    invoke-direct {v0, p0, p2}, Lpp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lpp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lpp8;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lpp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->e(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Llo8;

    invoke-virtual {p2}, Llo8;->a()Lk77;

    move-result-object p0

    return-object p0
.end method

.method public final q(ILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lbp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lbp8;

    iget v1, v0, Lbp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbp8;

    invoke-direct {v0, p0, p2}, Lbp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lbp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lbp8;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lbp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->h(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lnq6;

    invoke-virtual {p2}, Lnq6;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r(ILf02;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lip8;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lip8;

    iget v3, v2, Lip8;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lip8;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lip8;

    invoke-direct {v2, v0, v1}, Lip8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object v1, v2, Lip8;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lip8;->n:I

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

    iput v6, v2, Lip8;->n:I

    iget-object v0, v0, Ltp8;->a:Lvo8;

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lvo8;->c(ILe02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Ljm8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldc1;

    invoke-virtual {v1}, Ljm8;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljm8;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ldc1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1}, Ljm8;->b()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_5

    check-cast v9, Ljava/lang/String;

    new-instance v11, Lwm8;

    if-nez v8, :cond_4

    invoke-virtual {v1}, Ljm8;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    move-object v8, v5

    :goto_3
    invoke-direct {v11, v9, v8}, Lwm8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v10

    goto :goto_2

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_6
    invoke-static {v3, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljm8;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lyb1;

    invoke-direct {v3, v2}, Lyb1;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v3, v5

    :goto_4
    invoke-static {v3}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljm8;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljm8$b;

    invoke-virtual {v8}, Ljm8$b;->b()Ljava/util/List;

    move-result-object v9

    const-string v10, ""

    if-eqz v9, :cond_14

    invoke-virtual {v8}, Ljm8$b;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljm8$b$a;->c()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_8
    move-object v9, v5

    :goto_6
    if-nez v9, :cond_9

    move-object v14, v10

    goto :goto_7

    :cond_9
    move-object v14, v9

    :goto_7
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljm8$b$a;->a()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v16, v9

    goto :goto_8

    :cond_a
    move/from16 v16, v7

    :goto_8
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljm8$b$a;->b()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v18, v9

    goto :goto_9

    :cond_b
    move/from16 v18, v7

    :goto_9
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v9

    if-eqz v9, :cond_c

    move v15, v6

    goto :goto_a

    :cond_c
    move v15, v7

    :goto_a
    new-instance v13, Lsb1$a;

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v18}, Lsb1$a;-><init>(Ljava/lang/String;ZZZZ)V

    invoke-virtual {v8}, Ljm8$b;->c()I

    move-result v9

    invoke-virtual {v8}, Ljm8$b;->b()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v10, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v16, v7

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v21, v16, 0x1

    if-ltz v16, :cond_11

    check-cast v11, Ljm8$b$b;

    invoke-virtual {v11}, Ljm8$b$b;->a()Ljava/lang/String;

    move-result-object v17

    if-nez v16, :cond_d

    move/from16 v18, v6

    goto :goto_c

    :cond_d
    move/from16 v18, v7

    :goto_c
    invoke-virtual {v8}, Ljm8$b;->e()Ljm8$b$c;

    move-result-object v11

    sget-object v15, Ljm8$b$c;->INITIAL:Ljm8$b$c;

    if-ne v11, v15, :cond_e

    move/from16 v20, v6

    goto :goto_d

    :cond_e
    move/from16 v20, v7

    :goto_d
    invoke-virtual {v8}, Ljm8$b;->e()Ljm8$b$c;

    move-result-object v11

    sget-object v15, Ljm8$b$c;->COMPLETED:Ljm8$b$c;

    if-eq v11, v15, :cond_10

    invoke-virtual {v8}, Ljm8$b;->e()Ljm8$b$c;

    move-result-object v11

    sget-object v15, Ljm8$b$c;->PENDING:Ljm8$b$c;

    if-ne v11, v15, :cond_f

    goto :goto_e

    :cond_f
    move/from16 v19, v7

    goto :goto_f

    :cond_10
    :goto_e
    move/from16 v19, v6

    :goto_f
    new-instance v15, Lfc1;

    invoke-direct/range {v15 .. v20}, Lfc1;-><init>(ILjava/lang/String;ZZZ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v21

    goto :goto_b

    :cond_11
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_12
    invoke-virtual {v8}, Ljm8$b;->e()Ljm8$b$c;

    move-result-object v10

    sget-object v11, Ljm8$b$c;->COMPLETED:Ljm8$b$c;

    if-ne v10, v11, :cond_13

    move v15, v6

    goto :goto_10

    :cond_13
    move v15, v7

    :goto_10
    invoke-virtual {v8}, Ljm8$b;->d()Ljava/lang/String;

    move-result-object v17

    new-instance v11, Lsb1;

    move-object/from16 v16, v13

    move v13, v9

    invoke-direct/range {v11 .. v17}, Lsb1;-><init>(Ljava/lang/String;ILjava/util/List;ZLsb1$a;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_14
    new-instance v11, Lmb1;

    invoke-virtual {v8}, Ljm8$b;->f()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lmb1$a;

    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-virtual {v13}, Ljm8$b$a;->c()Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :cond_15
    move-object v13, v5

    :goto_11
    if-nez v13, :cond_16

    move-object v13, v10

    :cond_16
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljm8$b$a;->a()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move v14, v10

    goto :goto_12

    :cond_17
    move v14, v7

    :goto_12
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljm8$b$a;->b()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move/from16 v16, v10

    goto :goto_13

    :cond_18
    move/from16 v16, v7

    :goto_13
    invoke-virtual {v8}, Ljm8$b;->a()Ljm8$b$a;

    move-result-object v10

    if-eqz v10, :cond_19

    move/from16 v17, v6

    goto :goto_14

    :cond_19
    move/from16 v17, v7

    :goto_14
    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lmb1$a;-><init>(Ljava/lang/String;ZZZZ)V

    invoke-virtual {v8}, Ljm8$b;->c()I

    move-result v10

    invoke-virtual {v8}, Ljm8$b;->e()Ljm8$b$c;

    move-result-object v8

    sget-object v13, Ljm8$b$c;->COMPLETED:Ljm8$b$c;

    if-ne v8, v13, :cond_1a

    move v8, v6

    goto :goto_15

    :cond_1a
    move v8, v7

    :goto_15
    invoke-direct {v11, v9, v12, v10, v8}, Lmb1;-><init>(Ljava/lang/String;Lmb1$a;IZ)V

    :goto_16
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1b
    invoke-static {v3, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lpb1;

    invoke-virtual {v1}, Ljm8;->c()Ljm8$a;

    move-result-object v3

    invoke-virtual {v3}, Ljm8$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljm8;->c()Ljm8$a;

    move-result-object v4

    invoke-virtual {v4}, Ljm8$a;->a()Z

    move-result v4

    invoke-direct {v2, v3, v4, v7, v7}, Lpb1;-><init>(Ljava/lang/String;ZZZ)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljm8;->d()Ljl3;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object v2

    goto :goto_17

    :cond_1c
    move-object v2, v5

    :goto_17
    invoke-static {v2}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljm8;->f()Lc06;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lc06;->f()Lb06;

    move-result-object v5

    :cond_1d
    new-instance v1, Lec1;

    invoke-direct {v1, v0, v5}, Lec1;-><init>(Ljava/util/List;Lb06;)V

    return-object v1
.end method

.method public final s(IILtn8;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, p2, p3}, Lvo8;->g(IILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final t(ILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lfp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lfp8;

    iget v1, v0, Lfp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lfp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lfp8;

    invoke-direct {v0, p0, p2}, Lfp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lfp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lfp8;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lfp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->b(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lml8;

    invoke-virtual {p2}, Lml8;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(ILf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lqp8;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lqp8;

    iget v1, v0, Lqp8;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqp8;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqp8;

    invoke-direct {v0, p0, p2}, Lqp8;-><init>(Ltp8;Lf02;)V

    :goto_0
    iget-object p2, v0, Lqp8;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lqp8;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lqp8;->n:I

    iget-object p0, p0, Ltp8;->a:Lvo8;

    invoke-interface {p0, p1, v0}, Lvo8;->q(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lmo8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lwf5;

    invoke-virtual {p2}, Lmo8;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lmo8;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lwf5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lcn8;

    invoke-virtual {p2}, Lmo8;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v3, v1, v4}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2}, Lmo8;->d()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xa

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfn8;

    new-instance v7, Lcn8;

    invoke-virtual {v6}, Lfn8;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lfn8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6, v4, v4}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v5, v3

    :cond_5
    if-nez v5, :cond_6

    sget-object v5, Lkx2;->b:Lkx2;

    :cond_6
    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lgn8;

    invoke-direct {v0, p1, v4}, Lgn8;-><init>(Ljava/util/ArrayList;Z)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_8

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lwm8;

    if-nez v4, :cond_7

    invoke-virtual {p2}, Lmo8;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v3

    :goto_4
    invoke-direct {v7, v5, v4}, Lwm8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_3

    :cond_8
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_9
    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->e()Ljl3;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object p1

    goto :goto_5

    :cond_a
    move-object p1, v3

    :goto_5
    invoke-static {p1}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lsf5;

    invoke-direct {v0, p1}, Lsf5;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v0, v3

    :goto_6
    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->h()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmo8$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lmo8$b;->c()I

    move-result v4

    invoke-virtual {v2}, Lmo8$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lmo8$b;->b()Z

    move-result v6

    invoke-virtual {v2}, Lmo8$b;->a()Lmo8$b$a;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v7, Lbg5$a;

    invoke-virtual {v2}, Lmo8$b;->a()Lmo8$b$a;

    move-result-object v8

    invoke-virtual {v8}, Lmo8$b$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lmo8$b;->a()Lmo8$b$a;

    move-result-object v9

    invoke-virtual {v9}, Lmo8$b$a;->b()Z

    move-result v9

    invoke-virtual {v2}, Lmo8$b;->a()Lmo8$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lmo8$b$a;->a()Z

    move-result v2

    invoke-direct {v7, v8, v9, v2, v1}, Lbg5$a;-><init>(Ljava/lang/String;ZZZ)V

    goto :goto_8

    :cond_c
    move-object v7, v3

    :goto_8
    new-instance v2, Lbg5;

    invoke-direct {v2, v4, v5, v6, v7}, Lbg5;-><init>(ILjava/lang/String;ZLbg5$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->c()Lmo8$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lpf5;

    invoke-virtual {p1}, Lmo8$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmo8$a;->b()Z

    move-result v8

    invoke-virtual {p1}, Lmo8$a;->a()J

    move-result-wide v6

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lpf5;-><init>(Ljava/lang/String;JZZ)V

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2}, Lmo8;->g()Lc06;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lc06;->f()Lb06;

    move-result-object v3

    :cond_e
    new-instance p1, Lxf5;

    invoke-direct {p1, p0, v3}, Lxf5;-><init>(Ljava/util/List;Lb06;)V

    return-object p1
.end method
