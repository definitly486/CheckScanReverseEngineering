.class public abstract Llb;
.super Lmb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lmb<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final o:Lwn4;


# instance fields
.field public m:Lcom/google/common/collect/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwn4;

    const-class v1, Llb;

    invoke-direct {v0, v1}, Lwn4;-><init>(Ljava/lang/Class;)V

    sput-object v0, Llb;->o:Lwn4;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0}, Ll0;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmb;->i:Ljava/util/Set;

    iput v0, p0, Lmb;->j:I

    iput-object p1, p0, Llb;->m:Lcom/google/common/collect/i;

    iput-boolean p2, p0, Llb;->n:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Llb;->m:Lcom/google/common/collect/i;

    sget-object v1, Llb$a;->OUTPUT_FUTURE_DONE:Llb$a;

    invoke-virtual {p0, v1}, Llb;->u(Llb$a;)V

    iget-object v1, p0, Lm0;->b:Ljava/lang/Object;

    instance-of v1, v1, Ll0$a;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ll0;->o()Z

    move-result p0

    invoke-virtual {v0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Llb;->m:Lcom/google/common/collect/i;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "futures="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ll0;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/google/common/collect/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    sget-object v0, Lmb;->k:Lmb$a;

    invoke-virtual {v0, p0}, Lmb$a;->b(Llb;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lo8;->s(ZLjava/lang/Object;)V

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0, v0}, Llb;->r(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llb;->r(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move v3, v2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lmb;->i:Ljava/util/Set;

    invoke-virtual {p0}, Llb;->q()V

    sget-object p1, Llb$a;->ALL_INPUT_FUTURES_PROCESSED:Llb$a;

    invoke-virtual {p0, p1}, Llb;->u(Llb$a;)V

    :cond_4
    return-void
.end method

.method public abstract q()V
.end method

.method public final r(Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Llb;->n:Z

    const-string v1, "Input Future failed with Error"

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmb;->i:Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lm0;->b:Ljava/lang/Object;

    instance-of v2, v2, Ll0$a;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ll0;->a()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Lmb;->k:Lmb$a;

    invoke-virtual {v2, p0, v0}, Lmb$a;->a(Llb;Ljava/util/Set;)V

    iget-object p0, p0, Lmb;->i:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    :cond_2
    move-object p0, p1

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_2

    :cond_4
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "Got more than one input Future failure. Logging failures after the first"

    :goto_3
    sget-object p0, Llb;->o:Lwn4;

    invoke-virtual {p0}, Lwn4;->a()Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_4
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_7

    sget-object p0, Llb;->o:Lwn4;

    invoke-virtual {p0}, Lwn4;->a()Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public final s()V
    .locals 6

    iget-object v0, p0, Llb;->m:Lcom/google/common/collect/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Llb;->m:Lcom/google/common/collect/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llb;->q()V

    return-void

    :cond_0
    iget-object v0, p0, Llb;->m:Lcom/google/common/collect/i;

    const/4 v1, 0x0

    iget-boolean v2, p0, Llb;->n:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2}, Llb;->t(ILcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_1

    :cond_1
    new-instance v4, Ljb;

    move-object v5, p0

    check-cast v5, Lgo1;

    invoke-direct {v4, v5, v1, v2}, Ljb;-><init>(Lgo1;ILcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object v1, Ljn2;->INSTANCE:Ljn2;

    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    new-instance v2, Lkb;

    move-object v3, p0

    check-cast v3, Lgo1;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lkb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Llb;->p(Lcom/google/common/collect/i;)V

    goto :goto_2

    :cond_3
    sget-object v3, Ljn2;->INSTANCE:Ljn2;

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final t(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object p1, p0, Llb;->m:Lcom/google/common/collect/i;

    invoke-virtual {p0, v1}, Ll0;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_2
    move-exception p2

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p2
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    invoke-virtual {p0, p2}, Llb;->r(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p0, p2}, Llb;->r(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    invoke-virtual {p0, p1}, Llb;->p(Lcom/google/common/collect/i;)V

    return-void

    :catch_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {p0, p1}, Llb;->p(Lcom/google/common/collect/i;)V

    throw p2
.end method

.method public u(Llb$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Llb;->m:Lcom/google/common/collect/i;

    return-void
.end method
