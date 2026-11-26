.class public final Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final queue:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;)Lfr;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z

    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    sget-object v2, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_ABORTED-U7r42EA()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->completeWithFailure-tXNfJfc(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    invoke-virtual {p0}, Lfr;->clear()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final enqueue(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    new-instance v1, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/Request;)V

    .line 82
    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z

    if-nez p1, :cond_0

    .line 83
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    .line 84
    invoke-virtual {p0, v1}, Lfr;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final enqueue(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request;

    new-instance v3, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    invoke-direct {v3, p0, v2}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/Request;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    invoke-virtual {p0, v1}, Lfr;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final remove(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v4

    invoke-static {v4, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_0
    check-cast v3, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    if-eqz v3, :cond_3

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->queue:Lfr;

    invoke-virtual {p0, v3}, Lfr;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method
