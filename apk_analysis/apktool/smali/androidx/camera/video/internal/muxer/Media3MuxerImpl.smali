.class public final Landroidx/camera/video/internal/muxer/Media3MuxerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;
    }
.end annotation


# instance fields
.field private captureFps:I

.field private mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

.field private state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->stop$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final addTrack$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;Landroid/media/MediaFormat;)I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MediaMuxerCompat;->addTrack(Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->writeSampleData$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;Landroid/media/MediaFormat;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->addTrack$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->start$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final start$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/muxer/MediaMuxerCompat;->start()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final stop$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/muxer/MediaMuxerCompat;->stop()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final toMediaMuxerCompatFormat(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported format: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final wrapMuxerException(Lll3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/camera/video/internal/muxer/MuxerException;

    const-string v0, "MediaMuxer operation failed"

    invoke-direct {p1, v0, p0}, Landroidx/camera/video/internal/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final writeSampleData$lambda$1(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/MediaMuxerCompat;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/camera/video/internal/utils/MediaFormatExt;->INSTANCE:Landroidx/camera/video/internal/utils/MediaFormatExt;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/utils/MediaFormatExt;->isVideo(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->captureFps:I

    if-lez v0, :cond_0

    const-string v1, "capture-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Ld85;

    invoke-direct {v0, v2, p0, p1}, Ld85;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method public isInterruptionResilient()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->RELEASED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/muxer/MediaMuxerCompat;->release()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    sget-object v0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->RELEASED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void
.end method

.method public setCaptureFps(I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    iput p1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->captureFps:I

    return-void

    :cond_0
    const-string p0, "captureFps must be positive"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(DD)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-virtual {p0, p1, p2}, Landroidx/media3/muxer/MediaMuxerCompat;->setLocation(FF)V

    return-void

    :cond_0
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOrientationDegrees(I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MediaMuxerCompat;->setOrientationHint(I)V

    return-void

    :cond_0
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOutput(Landroid/os/ParcelFileDescriptor;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, p2}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->toMediaMuxerCompatFormat(I)I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroidx/media3/muxer/MediaMuxerCompat;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    sget-object p1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    iput-object p1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void

    :cond_0
    const-string p1, "Muxer is not idle. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOutput(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    .line 41
    new-instance v0, Landroidx/media3/muxer/MediaMuxerCompat;

    invoke-direct {p0, p2}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->toMediaMuxerCompatFormat(I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroidx/media3/muxer/MediaMuxerCompat;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->mediaMuxerCompat:Landroidx/media3/muxer/MediaMuxerCompat;

    .line 42
    sget-object p1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    iput-object p1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void

    .line 43
    :cond_0
    const-string p1, "Muxer is not idle. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v2, :cond_1

    new-instance v0, Lor2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lor2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void

    :cond_1
    const-string v0, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->STOPPED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v2, :cond_1

    :try_start_0
    new-instance v0, Lp31;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lp31;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->STOPPED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    throw v0

    :cond_1
    const-string v0, "Muxer is not started. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Le85;

    invoke-direct {v0, p0, p1, p2, p3}, Le85;-><init>(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "Muxer is not started. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->state:Landroidx/camera/video/internal/muxer/Media3MuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
