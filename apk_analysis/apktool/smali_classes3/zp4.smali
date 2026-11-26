.class public final Lzp4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/Lifecycle;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lxp4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lxp4;

    iget v1, v0, Lxp4;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lxp4;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lxp4;

    invoke-direct {v0, p1}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p1, v0, Lxp4;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lxp4;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lxp4;->m:Lr07;

    iget-object v0, v0, Lxp4;->l:Landroidx/lifecycle/Lifecycle;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    :try_start_1
    iput-object p0, v0, Lxp4;->l:Landroidx/lifecycle/Lifecycle;

    iput-object p1, v0, Lxp4;->m:Lr07;

    iput v3, v0, Lxp4;->o:I

    new-instance v2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    new-instance v0, Lyp4;

    invoke-direct {v0, v2}, Lyp4;-><init>(Lc31;)V

    iput-object v0, p1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v4

    :goto_2
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_6
    throw p1
.end method
