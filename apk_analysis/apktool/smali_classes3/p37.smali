.class public final Lp37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lup4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp37$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lup4;"
    }
.end annotation


# static fields
.field public static final l:Ls37;

.field public static final m:Ls37;


# instance fields
.field public final b:Lcom/bumptech/glide/a;

.field public final c:Landroid/content/Context;

.field public final d:Lyo4;

.field public final e:Lt37;

.field public final f:Lr37;

.field public final g:Lyk8;

.field public final h:Lp37$a;

.field public final i:Lax1;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo37<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ls37;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls37;

    invoke-direct {v0}, Ls37;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lee0;->f(Ljava/lang/Class;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lee0;->q:Z

    sput-object v0, Lp37;->l:Ls37;

    new-instance v0, Ls37;

    invoke-direct {v0}, Ls37;-><init>()V

    const-class v2, Lup3;

    invoke-virtual {v0, v2}, Lee0;->f(Ljava/lang/Class;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    iput-boolean v1, v0, Lee0;->q:Z

    sput-object v0, Lp37;->m:Ls37;

    sget-object v0, Lsn2;->c:Lsn2$c;

    new-instance v1, Ls37;

    invoke-direct {v1}, Ls37;-><init>()V

    invoke-virtual {v1, v0}, Lee0;->g(Lsn2;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    sget-object v1, Ljg6;->LOW:Ljg6;

    invoke-virtual {v0, v1}, Lee0;->s(Ljg6;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    invoke-virtual {v0}, Lee0;->y()Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/a;Lyo4;Lr37;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lt37;

    invoke-direct {v0}, Lt37;-><init>()V

    iget-object v1, p1, Lcom/bumptech/glide/a;->g:Lbx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lyk8;

    invoke-direct {v2}, Lyk8;-><init>()V

    iput-object v2, p0, Lp37;->g:Lyk8;

    new-instance v2, Lp37$a;

    invoke-direct {v2, p0}, Lp37$a;-><init>(Lp37;)V

    iput-object v2, p0, Lp37;->h:Lp37$a;

    iput-object p1, p0, Lp37;->b:Lcom/bumptech/glide/a;

    iput-object p2, p0, Lp37;->d:Lyo4;

    iput-object p3, p0, Lp37;->f:Lr37;

    iput-object v0, p0, Lp37;->e:Lt37;

    iput-object p4, p0, Lp37;->c:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lp37$b;

    invoke-direct {p4, p0, v0}, Lp37$b;-><init>(Lp37;Lt37;)V

    check-cast v1, Lih2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ConnectivityMonitor"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lhh2;

    invoke-direct {v0, p3, p4}, Lhh2;-><init>(Landroid/content/Context;Lp37$b;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lwp5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lp37;->i:Lax1;

    iget-object p3, p1, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    iget-object p4, p1, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_4

    move v3, v4

    :cond_4
    if-nez v3, :cond_5

    invoke-static {}, Leb9;->f()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    invoke-interface {p2, p0}, Lyo4;->a(Lup4;)V

    :goto_3
    invoke-interface {p2, v0}, Lyo4;->a(Lup4;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/a;->d:Lwq3;

    iget-object p3, p3, Lwq3;->d:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lp37;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lcom/bumptech/glide/a;->d:Lwq3;

    monitor-enter p1

    :try_start_1
    iget-object p2, p1, Lwq3;->h:Ls37;

    if-nez p2, :cond_6

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    iput-boolean v4, p2, Lee0;->q:Z

    iput-object p2, p1, Lwq3;->h:Ls37;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_6
    :goto_4
    monitor-exit p1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, Lee0;->e()Lee0;

    move-result-object p1

    check-cast p1, Ls37;

    iget-boolean p2, p1, Lee0;->q:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p1, Lee0;->s:Z

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iput-boolean v4, p1, Lee0;->s:Z

    iput-boolean v4, p1, Lee0;->q:Z

    iput-object p1, p0, Lp37;->k:Ls37;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_9
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register already registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lh37;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lh37<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lh37;

    iget-object v1, p0, Lp37;->b:Lcom/bumptech/glide/a;

    iget-object v2, p0, Lp37;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lh37;-><init>(Lcom/bumptech/glide/a;Lp37;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final b()Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh37<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p0

    sget-object v0, Lp37;->l:Ls37;

    invoke-virtual {p0, v0}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lwk8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwk8<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lp37;->k(Lwk8;)Z

    move-result v0

    invoke-interface {p1}, Lwk8;->getRequest()Lc37;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object p0, p0, Lp37;->b:Lcom/bumptech/glide/a;

    iget-object v0, p0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp37;

    invoke-virtual {v2, p1}, Lp37;->k(Lwk8;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lwk8;->setRequest(Lc37;)V

    invoke-interface {v1}, Lc37;->clear()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp37;->g:Lyk8;

    iget-object v0, v0, Lyk8;->b:Ljava/util/Set;

    invoke-static {v0}, Leb9;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk8;

    invoke-virtual {p0, v1}, Lp37;->c(Lwk8;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lp37;->g:Lyk8;

    iget-object v0, v0, Lyk8;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lh37<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    sget-object p1, Lsn2;->b:Lsn2$b;

    new-instance v0, Ls37;

    invoke-direct {v0}, Ls37;-><init>()V

    invoke-virtual {v0, p1}, Lee0;->g(Lsn2;)Lee0;

    move-result-object p1

    check-cast p1, Ls37;

    invoke-virtual {p0, p1}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Integer;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lh37<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh37;->H(Lh37;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lh37<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lh37<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp37;->e:Lt37;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt37;->c:Z

    iget-object v1, v0, Lt37;->a:Ljava/util/Set;

    invoke-static {v1}, Leb9;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc37;

    invoke-interface {v2}, Lc37;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lc37;->pause()V

    iget-object v3, v0, Lt37;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp37;->e:Lt37;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lt37;->c:Z

    iget-object v1, v0, Lt37;->a:Ljava/util/Set;

    invoke-static {v1}, Leb9;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc37;

    invoke-interface {v2}, Lc37;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lc37;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lc37;->i()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lt37;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized k(Lwk8;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwk8<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lwk8;->getRequest()Lc37;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lp37;->e:Lt37;

    invoke-virtual {v2, v0}, Lt37;->a(Lc37;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp37;->g:Lyk8;

    iget-object v0, v0, Lyk8;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lwk8;->setRequest(Lc37;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp37;->g:Lyk8;

    invoke-virtual {v0}, Lyk8;->onDestroy()V

    invoke-virtual {p0}, Lp37;->d()V

    iget-object v0, p0, Lp37;->e:Lt37;

    iget-object v1, v0, Lt37;->a:Ljava/util/Set;

    invoke-static {v1}, Leb9;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc37;

    invoke-virtual {v0, v2}, Lt37;->a(Lc37;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lt37;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lp37;->d:Lyo4;

    invoke-interface {v0, p0}, Lyo4;->b(Lup4;)V

    iget-object v0, p0, Lp37;->d:Lyo4;

    iget-object v1, p0, Lp37;->i:Lax1;

    invoke-interface {v0, v1}, Lyo4;->b(Lup4;)V

    iget-object v0, p0, Lp37;->h:Lp37$a;

    invoke-static {}, Leb9;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lp37;->b:Lcom/bumptech/glide/a;

    iget-object v1, v0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lp37;->j()V

    iget-object v0, p0, Lp37;->g:Lyk8;

    invoke-virtual {v0}, Lyk8;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp37;->g:Lyk8;

    invoke-virtual {v0}, Lyk8;->onStop()V

    invoke-virtual {p0}, Lp37;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp37;->e:Lt37;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp37;->f:Lr37;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
