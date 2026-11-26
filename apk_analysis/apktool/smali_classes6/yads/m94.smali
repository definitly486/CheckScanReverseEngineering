.class public final Lyads/m94;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lyads/m94;


# instance fields
.field public final a:Lyads/g94;

.field public final b:Lyads/j94;

.field public final c:Lyads/jf5;

.field public final d:Lyads/bf5;

.field public e:Lyads/l94;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/m94;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/g94;Lyads/j94;Lyads/jf5;Lyads/bf5;)V
    .locals 1

    sget-object v0, Lyads/l94;->b:Lyads/l94;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/m94;->a:Lyads/g94;

    iput-object p2, p0, Lyads/m94;->b:Lyads/j94;

    iput-object p3, p0, Lyads/m94;->c:Lyads/jf5;

    iput-object p4, p0, Lyads/m94;->d:Lyads/bf5;

    iput-object v0, p0, Lyads/m94;->e:Lyads/l94;

    return-void
.end method

.method public static final a(Lyads/m94;)V
    .locals 3

    .line 59
    iget-object p0, p0, Lyads/m94;->b:Lyads/j94;

    .line 60
    iget-object v0, p0, Lyads/j94;->a:Ljava/lang/Object;

    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lyads/j94;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    iget-object p0, p0, Lyads/j94;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 64
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mg3;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lyads/mg3;->a()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    throw p0
.end method

.method public static final a(Lyads/m94;Landroid/content/Context;Lyads/t70;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lyads/m94;->b(Landroid/content/Context;Lyads/t70;)V

    return-void
.end method

.method public static final a(Lyads/t70;)V
    .locals 0

    .line 53
    invoke-interface {p0}, Lyads/t70;->onInitializationCompleted()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/t70;)V
    .locals 3

    .line 54
    invoke-static {p1}, Lyads/s1;->a(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lyads/m94;->a:Lyads/g94;

    new-instance v1, La03;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, La03;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 56
    iget-object p0, v0, Lyads/g94;->a:Lyads/h94;

    .line 57
    iget-object p0, p0, Lyads/h94;->b:Ljava/util/concurrent/ExecutorService;

    .line 58
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lyads/gf5;)V
    .locals 2

    instance-of v0, p1, Lyads/ff5;

    if-eqz v0, :cond_0

    sget-object p1, Lyads/m94;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lyads/l94;->d:Lyads/l94;

    iput-object v0, p0, Lyads/m94;->e:Lyads/l94;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    instance-of p1, p1, Lyads/ef5;

    if-eqz p1, :cond_1

    sget-object p1, Lyads/m94;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v0, Lyads/l94;->b:Lyads/l94;

    iput-object v0, p0, Lyads/m94;->e:Lyads/l94;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lyads/m94;->a:Lyads/g94;

    new-instance v0, Lom;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lom;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p1, Lyads/g94;->a:Lyads/h94;

    iget-object p0, p0, Lyads/h94;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lyads/t70;)V
    .locals 7

    sget-object v0, Lyads/m94;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lyads/mg3;

    iget-object v2, p0, Lyads/m94;->a:Lyads/g94;

    invoke-direct {v1, v2, p2}, Lyads/mg3;-><init>(Lyads/g94;Lyads/t70;)V

    iget-object v2, p0, Lyads/m94;->e:Lyads/l94;

    sget-object v3, Lyads/l94;->d:Lyads/l94;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lyads/m94;->b:Lyads/j94;

    invoke-virtual {v2, v1}, Lyads/j94;->a(Lyads/mg3;)V

    iget-object v1, p0, Lyads/m94;->e:Lyads/l94;

    sget-object v2, Lyads/l94;->b:Lyads/l94;

    if-ne v1, v2, :cond_1

    sget-object v1, Lyads/l94;->c:Lyads/l94;

    iput-object v1, p0, Lyads/m94;->e:Lyads/l94;

    move v6, v5

    move v5, v4

    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lyads/m94;->a:Lyads/g94;

    new-instance v1, Lnm;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lnm;-><init>(Ljava/lang/Object;I)V

    iget-object p2, v0, Lyads/g94;->a:Lyads/h94;

    iget-object p2, p2, Lyads/h94;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object p2, p0, Lyads/m94;->c:Lyads/jf5;

    iget-object v0, p0, Lyads/m94;->d:Lyads/bf5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, v0

    check-cast p2, Lyads/do6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p2, p2}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p2

    new-instance v1, Lyads/j90;

    invoke-direct {v1, p2}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {p2, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p2

    invoke-interface {p2, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p2

    invoke-static {p2}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p2

    new-instance v1, Lyads/if5;

    invoke-direct {v1, p1, v0, p2}, Lyads/if5;-><init>(Landroid/content/Context;Lyads/bf5;Ly22;)V

    iget-object p0, p0, Lyads/m94;->a:Lyads/g94;

    iget-object p0, p0, Lyads/g94;->a:Lyads/h94;

    iget-object p0, p0, Lyads/h94;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
