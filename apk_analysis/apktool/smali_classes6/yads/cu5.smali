.class public final Lyads/cu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qy3;


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public b:[Ljava/nio/ByteBuffer;

.field public c:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lyads/cu5;->b:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lyads/cu5;->c:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    .line 100
    :cond_0
    iget-object v0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 101
    sget v2, Lyads/u56;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 102
    iget-object v2, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lyads/cu5;->c:[Ljava/nio/ByteBuffer;

    :cond_1
    if-eq v0, v1, :cond_0

    return v0
.end method

.method public final a()Landroid/media/MediaFormat;
    .locals 0

    .line 92
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final a(IIJI)V
    .locals 7

    .line 93
    iget-object v0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final a(IJ)V
    .locals 0

    .line 98
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final a(ILyads/ca0;J)V
    .locals 7

    .line 94
    iget-object v0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    .line 95
    iget-object v3, p2, Lyads/ca0;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-wide v4, p3

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    .line 97
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final a(Lyads/nz3;Landroid/os/Handler;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    new-instance v1, Lcs9;

    invoke-direct {v1, p0, p1}, Lcs9;-><init>(Lyads/cu5;Lyads/nz3;)V

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
    .locals 2

    .line 18
    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public final b(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lyads/cu5;->b:[Ljava/nio/ByteBuffer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final c(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lyads/cu5;->c:[Ljava/nio/ByteBuffer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/cu5;->b:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/cu5;->c:[Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lyads/cu5;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
