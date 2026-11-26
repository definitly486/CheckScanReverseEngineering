.class public final Lrz2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lzc8;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Llz2;

.field public final synthetic n:Lb24;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lzz5;

.field public final synthetic q:La13;

.field public final synthetic r:Lo95$b;

.field public final synthetic s:Le94$a;


# direct methods
.method public constructor <init>(Llz2;Lb24;Ljava/lang/Object;Lzz5;La13;Lo95$b;Le94$a;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llz2;",
            "Lb24;",
            "Ljava/lang/Object;",
            "Lzz5;",
            "La13;",
            "Lo95$b;",
            "Le94$a;",
            "Le02<",
            "-",
            "Lrz2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrz2;->m:Llz2;

    iput-object p2, p0, Lrz2;->n:Lb24;

    iput-object p3, p0, Lrz2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lrz2;->p:Lzz5;

    iput-object p5, p0, Lrz2;->q:La13;

    iput-object p6, p0, Lrz2;->r:Lo95$b;

    iput-object p7, p0, Lrz2;->s:Le94$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9
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

    new-instance v0, Lrz2;

    iget-object v6, p0, Lrz2;->r:Lo95$b;

    iget-object v7, p0, Lrz2;->s:Le94$a;

    iget-object v1, p0, Lrz2;->m:Llz2;

    iget-object v2, p0, Lrz2;->n:Lb24;

    iget-object v3, p0, Lrz2;->o:Ljava/lang/Object;

    iget-object v4, p0, Lrz2;->p:Lzz5;

    iget-object v5, p0, Lrz2;->q:La13;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lrz2;-><init>(Llz2;Lb24;Ljava/lang/Object;Lzz5;La13;Lo95$b;Le94$a;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lrz2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lrz2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lrz2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lrz2;->r:Lo95$b;

    iget-object v1, p0, Lrz2;->m:Llz2;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, p0, Lrz2;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v11, p0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v6, p0, Lrz2;->m:Llz2;

    iget-object v7, p0, Lrz2;->n:Lb24;

    iget-object v8, p0, Lrz2;->o:Ljava/lang/Object;

    iget-object v9, p0, Lrz2;->p:Lzz5;

    iget-object v10, p0, Lrz2;->q:La13;

    iput v5, p0, Lrz2;->l:I

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Llz2;->c(Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    check-cast p1, Llz2$a;

    iget-object p0, v1, Llz2;->b:Lgk;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsy6;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lgk;->d:Landroid/content/Context;

    if-nez v3, :cond_4

    iget-object v2, v2, Lsy6;->a:Lsy6$a;

    iget-object v2, v2, Lsy6$a;->a:Landroid/content/Context;

    iput-object v2, p0, Lgk;->d:Landroid/content/Context;

    iget-object v3, p0, Lgk;->c:Lgk$b;

    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0}, Lgk;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    iget-object p0, v1, Llz2;->d:Lp95;

    iget-object v1, v11, Lrz2;->n:Lb24;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v1, v1, Lb24;->i:Lsx0;

    invoke-virtual {v1}, Lsx0;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Llz2$a;->a:Lx04;

    invoke-interface {v1}, Lx04;->a()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lp95;->a:Lsy6;

    invoke-virtual {p0}, Lsy6;->c()Lo95;

    move-result-object p0

    if-nez p0, :cond_7

    :cond_6
    :goto_2
    move p0, v2

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "coil#is_sampled"

    iget-boolean v6, p1, Llz2$a;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Llz2$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v6, "coil#disk_cache_key"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v3, Lo95$c;

    iget-object v6, p1, Llz2$a;->a:Lx04;

    invoke-direct {v3, v6, v1}, Lo95$c;-><init>(Lx04;Ljava/util/Map;)V

    invoke-interface {p0, v0, v3}, Lo95;->f(Lo95$b;Lo95$c;)V

    move p0, v5

    :goto_3
    iget-object v7, p1, Llz2$a;->a:Lx04;

    iget-object v8, v11, Lrz2;->n:Lb24;

    iget-object v9, p1, Llz2$a;->c:Lz82;

    if-eqz p0, :cond_9

    move-object v10, v0

    :goto_4
    move-object p0, v11

    goto :goto_5

    :cond_9
    move-object v10, v4

    goto :goto_4

    :goto_5
    iget-object v11, p1, Llz2$a;->d:Ljava/lang/String;

    iget-boolean v12, p1, Llz2$a;->b:Z

    iget-object p0, p0, Lrz2;->s:Le94$a;

    instance-of p1, p0, Lfz6;

    if-eqz p1, :cond_a

    check-cast p0, Lfz6;

    iget-boolean p0, p0, Lfz6;->g:Z

    if-eqz p0, :cond_a

    move v13, v5

    goto :goto_6

    :cond_a
    move v13, v2

    :goto_6
    new-instance v6, Lzc8;

    invoke-direct/range {v6 .. v13}, Lzc8;-><init>(Lx04;Lb24;Lz82;Lo95$b;Ljava/lang/String;ZZ)V

    return-object v6

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
