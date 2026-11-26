.class public final Landroidx/camera/video/internal/SharedByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedByteBuffer"


# instance fields
.field private final mCloseLock:Ljava/lang/Object;

.field private mClosed:Z

.field private final mFinalCloseAction:Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mShareId:I

.field private final mSharedByteBuffer:Ljava/nio/ByteBuffer;

.field private final mSharedRefCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/core/util/Pair;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroidx/core/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mClosed:Z

    iput-object p1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedByteBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mFinalCloseAction:Landroidx/core/util/Pair;

    iput p4, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mShareId:I

    const-string p1, "SharedByteBuffer"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ". Ref count must be >= 1. ["

    const-string p3, "]"

    const-string p4, "Cannot create new instance of SharedByteBuffer with invalid ref count "

    invoke-static {p1, p4, p2, p0, p3}, Lc9;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkNotClosed(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mClosed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Cannot call "

    const-string v0, " on a closed SharedByteBuffer."

    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private closeInternal()Z
    .locals 7

    iget-object v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mClosed:Z

    iget-object v3, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SharedByteBuffer"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz v3, :cond_1

    const-string v0, "SharedByteBuffer"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Ref count decremented: "

    const-string v5, " ["

    const-string v6, "]"

    invoke-static {v3, v4, v5, v2, v6}, Lc9;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Invalid ref count. close() should never produce a ref count below 0"

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return v2

    :cond_2
    :goto_0
    if-nez v3, :cond_4

    const-string v0, "SharedByteBuffer"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SharedByteBuffer"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final reference released. Running final close action. ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_1
    iget-object v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mFinalCloseAction:Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mFinalCloseAction:Landroidx/core/util/Pair;

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SharedByteBuffer"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to execute final close action. ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return v1

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static newSharedInstance(Ljava/nio/ByteBuffer;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroidx/camera/video/internal/SharedByteBuffer;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v2, Landroidx/camera/video/internal/SharedByteBuffer;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-direct {v3, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p0, v0, v3, v1}, Landroidx/camera/video/internal/SharedByteBuffer;-><init>(Ljava/nio/ByteBuffer;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/core/util/Pair;I)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->closeInternal()Z

    return-void
.end method

.method public finalize()V
    .locals 4

    const-string v0, "SharedByteBuffer closed by finalizer, but should have been closed manually with SharedByteBuffer.close() ["

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->closeInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SharedByteBuffer"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "get()"

    invoke-direct {p0, v1}, Landroidx/camera/video/internal/SharedByteBuffer;->checkNotClosed(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedByteBuffer:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public share()Landroidx/camera/video/internal/SharedByteBuffer;
    .locals 7

    iget-object v0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "share()"

    invoke-direct {p0, v1}, Landroidx/camera/video/internal/SharedByteBuffer;->checkNotClosed(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SharedByteBuffer"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    const-string v0, "SharedByteBuffer"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/camera/video/internal/SharedByteBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ref count incremented: "

    const-string v5, " ["

    const-string v6, "]"

    invoke-static {v1, v4, v5, v3, v6}, Lc9;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Invalid ref count. share() should always produce a ref count of 2 or more."

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Landroidx/camera/video/internal/SharedByteBuffer;

    iget-object v1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mFinalCloseAction:Landroidx/core/util/Pair;

    iget p0, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mShareId:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/camera/video/internal/SharedByteBuffer;-><init>(Ljava/nio/ByteBuffer;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/core/util/Pair;I)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mSharedByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/camera/video/internal/SharedByteBuffer;->mShareId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "SharedByteBuffer[buf: %s, shareId: 0x%x, instanceId:0x%x]"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
