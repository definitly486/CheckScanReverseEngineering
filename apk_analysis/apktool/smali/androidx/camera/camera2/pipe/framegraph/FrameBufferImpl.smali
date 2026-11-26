.class public final Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameBuffer;
.implements Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;,
        Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$Companion;

.field public static final FRAME_FLOW_EXTRA_BUFFER_CAPACITY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final _frameFlow:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation
.end field

.field private final _size:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private closed:Z

.field private final frameFlow:Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lys7<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation
.end field

.field private final frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

.field private frameQueue:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->Companion:Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Ljava/util/Set;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->streams:Ljava/util/Set;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->parameters:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    new-instance p1, Lfr;

    invoke-direct {p1, p4}, Lfr;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    const/4 p1, 0x4

    sget-object p2, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lbt7;->a(IILcu0;)Lzs7;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_frameFlow:Lvg5;

    invoke-static {p1}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameFlow:Lys7;

    if-ltz p4, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->size:Ly68;

    iput p4, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->capacity:I

    return-void

    :cond_0
    const-string p0, "FrameBuffer capacity must be greater than or equal to 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final removeAndAcquire(Ljava/util/Iterator;Lnl3;)Landroidx/camera/camera2/pipe/Frame;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2

    invoke-interface {p2, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Ld1;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    instance-of p0, v0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    if-eqz p0, :cond_1

    check-cast v0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 9

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    instance-of v6, v5, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iput-object v4, v0, Lr07;->b:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v3}, Lfr;->clear()V

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Lxg5;->setValue(Ljava/lang/Object;)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Frame;

    instance-of v3, v1, Ljava/lang/AutoCloseable;

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_2

    :cond_6
    instance-of v3, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_a

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v3

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v5, v4

    :cond_8
    :goto_3
    if-nez v3, :cond_9

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-interface {v1, v7, v8, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    if-nez v5, :cond_8

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v5, v2

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_a
    instance-of v3, v1, Landroid/content/res/TypedArray;

    if-eqz v3, :cond_b

    check-cast v1, Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_b
    instance-of v3, v1, Landroid/media/MediaMetadataRetriever;

    if-eqz v3, :cond_c

    check-cast v1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_c
    instance-of v3, v1, Landroid/media/MediaDrm;

    if-eqz v3, :cond_d

    check-cast v1, Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    goto :goto_2

    :cond_d
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_e
    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->detach$camera_camera2_pipe(Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;)V

    return-void

    :goto_4
    monitor-exit v1

    throw p0
.end method

.method public getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->capacity:I

    return p0
.end method

.method public getFrameFlow()Lys7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lys7<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameFlow:Lys7;

    return-object p0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method public getSize()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->size:Ly68;

    return-object p0
.end method

.method public getStreams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->streams:Ljava/util/Set;

    return-object p0
.end method

.method public onFrameStarted(Landroidx/camera/camera2/pipe/FrameReference;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->getCapacity()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_frameFlow:Lvg5;

    invoke-interface {p0, p1}, Lvg5;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/camera/camera2/pipe/FrameReference;->tryAcquire$default(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance p1, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    invoke-direct {p1, v2}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;-><init>(Landroidx/camera/camera2/pipe/Frame;)V

    goto :goto_2

    :cond_2
    new-instance v2, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithoutFrame;

    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithoutFrame;-><init>(Landroidx/camera/camera2/pipe/FrameReference;)V

    move-object p1, v2

    :goto_2
    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    if-eqz v3, :cond_4

    instance-of p0, p1, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    if-eqz p0, :cond_3

    check-cast p1, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :cond_3
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_4

    :cond_4
    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v3}, Ld1;->size()I

    move-result v3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->getCapacity()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v3}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    instance-of v4, v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    if-eqz v4, :cond_5

    check-cast v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object v0

    :cond_5
    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v3, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v4}, Ld1;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_frameFlow:Lvg5;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object p1

    invoke-interface {p0, p1}, Lvg5;->e(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    monitor-exit v2

    if-eqz v0, :cond_e

    instance-of p0, v0, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_6

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_6

    :cond_6
    instance-of p0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_a

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p0

    if-ne v0, p0, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p1, 0x0

    :cond_8
    :goto_5
    if-nez p0, :cond_9

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    if-nez p1, :cond_8

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move p1, v1

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :cond_a
    instance-of p0, v0, Landroid/content/res/TypedArray;

    if-eqz p0, :cond_b

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :cond_b
    instance-of p0, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz p0, :cond_c

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_6

    :cond_c
    instance-of p0, v0, Landroid/media/MediaDrm;

    if-eqz p0, :cond_d

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    goto :goto_6

    :cond_d
    invoke-static {}, Lmi2;->b()V

    :cond_e
    :goto_6
    return-void

    :goto_7
    monitor-exit v2

    throw p0
.end method

.method public peekAllReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    if-eqz v1, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public peekFirstReference()Landroidx/camera/camera2/pipe/FrameReference;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Lfr;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public peekLastReference()Landroidx/camera/camera2/pipe/FrameReference;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Lfr;->j()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public removeAllFrameReferencesAndAcquire(Lnl3;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Frame;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    if-eqz v1, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v4

    invoke-interface {p1, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    instance-of v4, v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Ld1;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lxg5;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public removeAllReferences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z

    if-eqz v1, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v1}, Lfr;->clear()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public removeFirstFrameReferenceAndAcquire(Lnl3;)Landroidx/camera/camera2/pipe/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->removeAndAcquire(Ljava/util/Iterator;Lnl3;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0
.end method

.method public removeFirstReference()Landroidx/camera/camera2/pipe/FrameReference;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v1}, Lfr;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Ld1;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public removeLastFrameReferenceAndAcquire(Lnl3;)Landroidx/camera/camera2/pipe/Frame;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly67;

    invoke-direct {v1, v0}, Ly67;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Ly67;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->removeAndAcquire(Ljava/util/Iterator;Lnl3;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0
.end method

.method public removeLastReference()Landroidx/camera/camera2/pipe/FrameReference;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lfr;->removeLast()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Ld1;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public setCapacity(I)V
    .locals 6

    if-ltz p1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    iput p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->capacity:I

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v2}, Ld1;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_5

    sub-int/2addr v2, p1

    move p1, v3

    :goto_0
    if-ge p1, v2, :cond_4

    iget-object v4, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {v4}, Lfr;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;

    instance-of v5, v4, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    if-eqz v5, :cond_2

    check-cast v4, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lfr;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-direct {p1, v2}, Lfr;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->_size:Lxg5;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;->frameQueue:Lfr;

    invoke-virtual {p0}, Ld1;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lxg5;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/Frame;

    instance-of v0, p1, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v1, v3

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {p1, v4, v5, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_b
    instance-of v0, p1, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_c

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_c
    instance-of v0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_d
    instance-of v0, p1, Landroid/media/MediaDrm;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    goto :goto_2

    :cond_e
    invoke-static {}, Lmi2;->b()V

    :cond_f
    return-void

    :goto_4
    monitor-exit v1

    throw p0

    :cond_10
    const-string p0, "Capacity cannot be negative"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
