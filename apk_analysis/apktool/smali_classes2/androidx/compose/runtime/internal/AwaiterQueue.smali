.class public final Landroidx/compose/runtime/internal/AwaiterQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private awaiters:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "TA;>;"
        }
    .end annotation
.end field

.field private failureCause:Ljava/lang/Throwable;

.field private final lock:Ljava/lang/Object;

.field private final pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

.field private spareList:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->constructor-impl()Landroidx/compose/runtime/internal/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    new-instance v0, Landroidx/collection/MutableObjectList;

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/internal/AwaiterQueue;->addAwaiter$lambda$1(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final addAwaiter$lambda$1(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)Lj59;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->cancel()V

    iget-object p0, p1, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    iget p1, p2, Lp07;->b:I

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    ushr-int/lit8 v0, p2, 0x1b

    and-int/lit8 v0, v0, 0xf

    if-ne v0, p1, :cond_1

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final addAwaiter(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lll3;)Landroidx/compose/runtime/CancellationHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/CancellationHandle;"
        }
    .end annotation

    new-instance v0, Lp07;

    invoke-direct {v0}, Lp07;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lp07;->b:I

    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    sget-object p0, Landroidx/compose/runtime/CancellationHandle;->Companion:Landroidx/compose/runtime/CancellationHandle$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/CancellationHandle$Companion;->getEmpty$runtime()Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7ffffff

    and-int/2addr v2, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    ushr-int/lit8 v2, v4, 0x1b

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lp07;->b:I

    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    invoke-virtual {v2, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    :try_start_2
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/internal/AwaiterQueue;->fail(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    new-instance p2, Landroidx/compose/runtime/OneShotCancellationHandle;

    new-instance v1, Lpz;

    invoke-direct {v1, p1, p0, v0}, Lpz;-><init>(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lp07;)V

    invoke-direct {p2, v1}, Landroidx/compose/runtime/OneShotCancellationHandle;-><init>(Lll3;)V

    return-object p2

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final fail(Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;

    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    iget-object v2, v1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/collection/ObjectList;->_size:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v2, v4

    check-cast v5, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    ushr-int/lit8 v1, p1, 0x1b

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v3}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->access$pack-impl(Landroidx/compose/runtime/internal/AtomicInt;II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final flushAndDispatchAwaiters(Lnl3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-TA;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    iput-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    iput-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x1b

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->access$pack-impl(Landroidx/compose/runtime/internal/AtomicInt;II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/collection/ObjectList;->getSize()I

    move-result p0

    :goto_0
    if-ge v4, p0, :cond_1

    invoke-virtual {v1, v4}, Landroidx/collection/ObjectList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->clear()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final getHasAwaiters()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const v0, 0x7ffffff

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
