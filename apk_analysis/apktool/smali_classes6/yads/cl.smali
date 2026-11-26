.class public final Lyads/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qy3;


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public final b:Lyads/gl;

.field public final c:Lyads/fl;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    new-instance v0, Lyads/gl;

    invoke-direct {v0, p2}, Lyads/gl;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lyads/cl;->b:Lyads/gl;

    new-instance p2, Lyads/fl;

    invoke-direct {p2, p1, p3}, Lyads/fl;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Lyads/cl;->c:Lyads/fl;

    const/4 p1, 0x0

    iput p1, p0, Lyads/cl;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 0

    .line 105
    iget-object p0, p0, Lyads/cl;->b:Lyads/gl;

    invoke-virtual {p0, p1}, Lyads/gl;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p0

    return p0
.end method

.method public final a()Landroid/media/MediaFormat;
    .locals 1

    .line 106
    iget-object p0, p0, Lyads/cl;->b:Lyads/gl;

    .line 107
    iget-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    iget-object p0, p0, Lyads/gl;->h:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    .line 110
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 112
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(I)V
    .locals 0

    .line 130
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final a(IIJI)V
    .locals 2

    .line 92
    iget-object p0, p0, Lyads/cl;->c:Lyads/fl;

    .line 93
    iget-object v0, p0, Lyads/fl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lyads/fl;->b()Lyads/el;

    move-result-object v0

    .line 95
    iput p1, v0, Lyads/el;->a:I

    .line 96
    iput p2, v0, Lyads/el;->b:I

    .line 97
    iput-wide p3, v0, Lyads/el;->d:J

    .line 98
    iput p5, v0, Lyads/el;->e:I

    .line 99
    iget-object p0, p0, Lyads/fl;->c:Lyads/dl;

    sget p1, Lyads/u56;->a:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 101
    :cond_0
    throw v0
.end method

.method public final a(IJ)V
    .locals 0

    .line 104
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final a(ILyads/ca0;J)V
    .locals 0

    .line 102
    iget-object p0, p0, Lyads/cl;->c:Lyads/fl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/fl;->a(ILyads/ca0;J)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    .line 103
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lyads/cl;->b:Lyads/gl;

    iget-object v1, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lyads/gl;->a(Landroid/media/MediaCodec;)V

    .line 115
    const-string v0, "configureCodec"

    invoke-static {v0}, Lyads/b06;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 117
    invoke-static {}, Lyads/b06;->a()V

    .line 118
    iget-object p1, p0, Lyads/cl;->c:Lyads/fl;

    .line 119
    iget-boolean p2, p1, Lyads/fl;->f:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 120
    iget-object p2, p1, Lyads/fl;->b:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 121
    new-instance p2, Lyads/dl;

    iget-object v0, p1, Lyads/fl;->b:Landroid/os/HandlerThread;

    .line 122
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lyads/dl;-><init>(Lyads/fl;Landroid/os/Looper;)V

    iput-object p2, p1, Lyads/fl;->c:Lyads/dl;

    .line 123
    iput-boolean p3, p1, Lyads/fl;->f:Z

    .line 124
    :cond_0
    const-string p1, "startCodec"

    invoke-static {p1}, Lyads/b06;->a(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 126
    invoke-static {}, Lyads/b06;->a()V

    .line 127
    iput p3, p0, Lyads/cl;->e:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final a(Lyads/nz3;Landroid/os/Handler;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    new-instance v1, Ltr9;

    invoke-direct {v1, p0, p1}, Ltr9;-><init>(Lyads/cl;Lyads/nz3;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final a(Lyads/py3;Landroid/media/MediaCodec;JJ)V
    .locals 0

    check-cast p1, Lyads/nz3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lyads/u56;->a:I

    const/16 p2, 0x1e

    if-ge p0, p2, :cond_0

    iget-object p0, p1, Lyads/nz3;->b:Landroid/os/Handler;

    const/16 p2, 0x20

    shr-long p5, p3, p2

    long-to-int p2, p5

    long-to-int p3, p3

    const/4 p4, 0x0

    invoke-static {p0, p4, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    iget-object p1, p1, Lyads/nz3;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object p0, p1, Lyads/nz3;->c:Lyads/oz3;

    iget-object p2, p0, Lyads/oz3;->n1:Lyads/nz3;

    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    const-wide p5, 0x7fffffffffffffffL

    cmp-long p2, p3, p5

    const/4 p5, 0x1

    if-nez p2, :cond_2

    iput-boolean p5, p0, Lyads/zy3;->z0:Z

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lyads/zy3;->b(J)V

    invoke-virtual {p0}, Lyads/oz3;->A()V

    iget-object p2, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget p6, p2, Lyads/ji0;->e:I

    add-int/2addr p6, p5

    iput p6, p2, Lyads/ji0;->e:I

    iput-boolean p5, p0, Lyads/oz3;->V0:Z

    iget-boolean p2, p0, Lyads/oz3;->T0:Z

    if-nez p2, :cond_3

    iput-boolean p5, p0, Lyads/oz3;->T0:Z

    iget-object p2, p0, Lyads/oz3;->I0:Lyads/ne6;

    iget-object p6, p0, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {p2, p6}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean p5, p0, Lyads/oz3;->R0:Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p4}, Lyads/oz3;->a(J)V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object p1, p1, Lyads/nz3;->c:Lyads/oz3;

    iput-object p0, p1, Lyads/zy3;->A0:Lyads/up2;

    return-void
.end method

.method public final b()I
    .locals 5

    iget-object p0, p0, Lyads/cl;->b:Lyads/gl;

    iget-object v0, p0, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lyads/gl;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-gtz v1, :cond_5

    iget-boolean v1, p0, Lyads/gl;->l:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lyads/gl;->m:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_3

    iget-object p0, p0, Lyads/gl;->d:Lyads/ql3;

    iget v1, p0, Lyads/ql3;->c:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lyads/ql3;->d:[I

    iget v3, p0, Lyads/ql3;->a:I

    aget v2, v2, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lyads/ql3;->e:I

    and-int/2addr v3, v4

    iput v3, p0, Lyads/ql3;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lyads/ql3;->c:I

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    iput-object v3, p0, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    throw v1

    :cond_4
    iput-object v3, p0, Lyads/gl;->m:Ljava/lang/IllegalStateException;

    throw v1

    :cond_5
    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 74
    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lyads/cl;->c:Lyads/fl;

    invoke-virtual {v0}, Lyads/fl;->a()V

    iget-object v0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lyads/cl;->b:Lyads/gl;

    invoke-virtual {v0}, Lyads/gl;->a()V

    iget-object p0, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public final release()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lyads/cl;->e:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lyads/cl;->c:Lyads/fl;

    iget-boolean v2, v1, Lyads/fl;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lyads/fl;->a()V

    iget-object v2, v1, Lyads/fl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/fl;->f:Z

    iget-object v1, p0, Lyads/cl;->b:Lyads/gl;

    iget-object v3, v1, Lyads/gl;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v0, v1, Lyads/gl;->l:Z

    iget-object v4, v1, Lyads/gl;->b:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    iget-object v4, v1, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFormat;

    iput-object v4, v1, Lyads/gl;->i:Landroid/media/MediaFormat;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, v1, Lyads/gl;->d:Lyads/ql3;

    iput v2, v4, Lyads/ql3;->a:I

    const/4 v5, -0x1

    iput v5, v4, Lyads/ql3;->b:I

    iput v2, v4, Lyads/ql3;->c:I

    iget-object v4, v1, Lyads/gl;->e:Lyads/ql3;

    iput v2, v4, Lyads/ql3;->a:I

    iput v5, v4, Lyads/ql3;->b:I

    iput v2, v4, Lyads/ql3;->c:I

    iget-object v2, v1, Lyads/gl;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    iget-object v2, v1, Lyads/gl;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    const/4 v2, 0x0

    iput-object v2, v1, Lyads/gl;->j:Landroid/media/MediaCodec$CodecException;

    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1

    :cond_2
    :goto_3
    const/4 v1, 0x2

    iput v1, p0, Lyads/cl;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, p0, Lyads/cl;->d:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lyads/cl;->d:Z

    :cond_3
    return-void

    :goto_4
    iget-boolean v2, p0, Lyads/cl;->d:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lyads/cl;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lyads/cl;->d:Z

    :cond_4
    throw v1
.end method
