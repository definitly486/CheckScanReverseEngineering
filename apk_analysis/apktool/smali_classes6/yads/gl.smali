.class public final Lyads/gl;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public final d:Lyads/ql3;

.field public final e:Lyads/ql3;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/util/ArrayDeque;

.field public h:Landroid/media/MediaFormat;

.field public i:Landroid/media/MediaFormat;

.field public j:Landroid/media/MediaCodec$CodecException;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/IllegalStateException;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    iput-object p1, p0, Lyads/gl;->b:Landroid/os/HandlerThread;

    new-instance p1, Lyads/ql3;

    invoke-direct {p1}, Lyads/ql3;-><init>()V

    iput-object p1, p0, Lyads/gl;->d:Lyads/ql3;

    new-instance p1, Lyads/ql3;

    invoke-direct {p1}, Lyads/ql3;-><init>()V

    iput-object p1, p0, Lyads/gl;->e:Lyads/ql3;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/gl;->f:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9

    iget-object v1, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lyads/gl;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lyads/gl;->l:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/gl;->m:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_6

    iget-object v0, p0, Lyads/gl;->e:Lyads/ql3;

    iget v3, v0, Lyads/ql3;->c:I

    if-nez v3, :cond_1

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_5

    iget-object v2, v0, Lyads/ql3;->d:[I

    iget v4, v0, Lyads/ql3;->a:I

    aget v2, v2, v4

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lyads/ql3;->e:I

    and-int/2addr v4, v5

    iput v4, v0, Lyads/ql3;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lyads/ql3;->c:I

    if-ltz v2, :cond_3

    iget-object v0, p0, Lyads/gl;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lyads/gl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    const/4 p1, -0x2

    if-ne v2, p1, :cond_4

    iget-object p1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lyads/gl;->h:Landroid/media/MediaFormat;

    :cond_4
    :goto_0
    monitor-exit v1

    return v2

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_6
    iput-object v3, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    throw v0

    :cond_7
    iput-object v3, p0, Lyads/gl;->m:Ljava/lang/IllegalStateException;

    throw v0

    :cond_8
    :goto_1
    monitor-exit v1

    return v2

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a()V
    .locals 5

    .line 126
    iget-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-wide v1, p0, Lyads/gl;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lyads/gl;->k:J

    .line 128
    iget-object v1, p0, Lyads/gl;->c:Landroid/os/Handler;

    sget v2, Lyads/u56;->a:I

    new-instance v2, Lph;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lph;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Landroid/media/MediaCodec;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lyads/gl;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lyads/gl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lyads/gl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 124
    iput-object v0, p0, Lyads/gl;->c:Landroid/os/Handler;

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Ljava/lang/IllegalStateException;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iput-object p1, p0, Lyads/gl;->m:Ljava/lang/IllegalStateException;

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lyads/gl;->l:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lyads/gl;->k:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lyads/gl;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p0, v1}, Lyads/gl;->a(Ljava/lang/IllegalStateException;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Lyads/gl;->i:Landroid/media/MediaFormat;

    :cond_3
    iget-object v1, p0, Lyads/gl;->d:Lyads/ql3;

    const/4 v2, 0x0

    iput v2, v1, Lyads/ql3;->a:I

    const/4 v3, -0x1

    iput v3, v1, Lyads/ql3;->b:I

    iput v2, v1, Lyads/ql3;->c:I

    iget-object v1, p0, Lyads/gl;->e:Lyads/ql3;

    iput v2, v1, Lyads/ql3;->a:I

    iput v3, v1, Lyads/ql3;->b:I

    iput v2, v1, Lyads/ql3;->c:I

    iget-object v1, p0, Lyads/gl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    iget-object p1, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lyads/gl;->d:Lyads/ql3;

    invoke-virtual {p0, p2}, Lyads/ql3;->a(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-object p1, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lyads/gl;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/gl;->e:Lyads/ql3;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lyads/ql3;->a(I)V

    iget-object v1, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/gl;->i:Landroid/media/MediaFormat;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/gl;->e:Lyads/ql3;

    invoke-virtual {v0, p2}, Lyads/ql3;->a(I)V

    iget-object p0, p0, Lyads/gl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object p1, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lyads/gl;->e:Lyads/ql3;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lyads/ql3;->a(I)V

    iget-object v0, p0, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    iput-object p2, p0, Lyads/gl;->i:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
