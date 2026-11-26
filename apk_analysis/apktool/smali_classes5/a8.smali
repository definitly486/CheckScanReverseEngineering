.class public final La8;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$d;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$e;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$f;Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;Ljava/util/List;Lf02;)Ljava/lang/Object;
    .locals 10

    move-object/from16 v0, p10

    instance-of v1, v0, Ly7;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ly7;

    iget v2, v1, Ly7;->q:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ly7;->q:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Ly7;

    invoke-direct {v1, p0, v0}, Ly7;-><init>(La8;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Ly7;->o:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v9, Ly7;->q:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v9, Ly7;->n:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;

    iget-object p1, v9, Ly7;->m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;

    iget-object p3, v9, Ly7;->l:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-object p2, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$a;->invoke()Ljava/lang/Object;

    :try_start_1
    iput-object p3, v9, Ly7;->l:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$b;

    iput-object p4, v9, Ly7;->m:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$c;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 p2, p8

    :try_start_2
    iput-object p2, v9, Ly7;->n:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$j$g;

    iput v3, v9, Ly7;->q:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v9}, La8;->b(Landroid/app/Activity;Lll3;Lnl3;Lll3;Lll3;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    move-object p1, p4

    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_5

    :catch_2
    :goto_3
    move-object p1, p4

    goto :goto_4

    :catch_3
    move-object/from16 p2, p8

    goto :goto_3

    :goto_4
    :try_start_4
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    move-object p0, p2

    :goto_5
    if-nez p1, :cond_4

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_6
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    throw p0
.end method

.method public final b(Landroid/app/Activity;Lll3;Lnl3;Lll3;Lll3;Ljava/util/List;Lf02;)Ljava/lang/Object;
    .locals 10

    move-object/from16 v0, p7

    instance-of v1, v0, Lz7;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lz7;

    iget v2, v1, Lz7;->v:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lz7;->v:I

    goto :goto_0

    :cond_0
    new-instance v1, Lz7;

    invoke-direct {v1, p0, v0}, Lz7;-><init>(La8;Lf02;)V

    :goto_0
    iget-object p0, v1, Lz7;->t:Ljava/lang/Object;

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v1, Lz7;->v:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v1, Lz7;->s:Ld8;

    iget-object p2, v1, Lz7;->r:Ljava/util/Iterator;

    iget-object v2, v1, Lz7;->q:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v3, v1, Lz7;->p:Lll3;

    check-cast v3, Lll3;

    iget-object v5, v1, Lz7;->o:Lll3;

    check-cast v5, Lll3;

    iget-object v6, v1, Lz7;->n:Lnl3;

    iget-object v7, v1, Lz7;->m:Lll3;

    check-cast v7, Lll3;

    iget-object v8, v1, Lz7;->l:Landroid/app/Activity;

    :try_start_0
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto/16 :goto_c

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 p0, p6

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw48;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le8$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    new-instance v5, Ldf9;

    invoke-direct {v5}, Ld8;-><init>()V

    goto :goto_3

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_4
    new-instance v5, Lp77;

    invoke-direct {v5}, Ld8;-><init>()V

    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v3, p5

    move-object v5, v1

    move-object v6, v2

    move-object v1, p2

    move-object v2, p4

    move-object p2, p1

    move-object p1, p3

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld8;

    :try_start_1
    iput-object p2, v5, Lz7;->l:Landroid/app/Activity;

    move-object v8, v1

    check-cast v8, Lll3;

    iput-object v8, v5, Lz7;->m:Lll3;

    iput-object p1, v5, Lz7;->n:Lnl3;

    move-object v8, v2

    check-cast v8, Lll3;

    iput-object v8, v5, Lz7;->o:Lll3;

    move-object v8, v3

    check-cast v8, Lll3;

    iput-object v8, v5, Lz7;->p:Lll3;

    move-object v8, v6

    check-cast v8, Ljava/util/List;

    iput-object v8, v5, Lz7;->q:Ljava/util/List;

    iput-object p0, v5, Lz7;->r:Ljava/util/Iterator;

    iput-object v7, v5, Lz7;->s:Ld8;

    iput v4, v5, Lz7;->v:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object p3, p1

    move-object p4, v2

    move-object p5, v3

    move-object/from16 p6, v5

    move-object p1, v7

    :try_start_2
    invoke-virtual/range {p1 .. p6}, Ld8;->b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, p2

    move-object v7, p3

    move-object v5, p4

    move-object v3, p5

    move-object/from16 p2, p6

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v9, p2

    move-object p2, p0

    move-object p0, v2

    move-object v2, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, v9

    :goto_5
    :try_start_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_6
    move-object v9, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v2

    move-object v2, v9

    goto :goto_9

    :catch_1
    move-object v8, p2

    move-object v7, p3

    move-object v5, p4

    move-object v3, p5

    move-object/from16 p2, p6

    :goto_7
    move-object v2, v6

    move-object v6, v7

    move-object v7, v1

    move-object v1, p2

    move-object p2, p0

    goto :goto_8

    :catch_2
    move-object v8, v7

    move-object v7, p1

    move-object p1, v8

    move-object v8, p2

    move-object p2, v5

    move-object v5, v2

    goto :goto_7

    :catch_3
    move-exception v0

    move-object p1, v7

    goto/16 :goto_1

    :catch_4
    :goto_8
    invoke-virtual {p1}, Ld8;->a()V

    invoke-interface {v7}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    goto :goto_6

    :goto_9
    if-eqz p0, :cond_a

    check-cast v7, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ld8;

    invoke-static {v1, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8;

    invoke-virtual {p1}, Ld8;->a()V

    goto :goto_b

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    invoke-virtual {p1}, Ld8;->a()V

    move-object p0, p2

    move-object p1, v6

    move-object v6, v7

    move-object p2, v8

    goto/16 :goto_4

    :goto_c
    invoke-virtual {p1}, Ld8;->a()V

    throw p0

    :cond_b
    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
