.class public final Landroidx/camera/video/internal/muxer/MediaMuxerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;
    }
.end annotation


# instance fields
.field private captureFps:I

.field private mediaMuxer:Landroid/media/MediaMuxer;

.field private state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->start$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final addTrack$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;Landroid/media/MediaFormat;)I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;Landroid/media/MediaFormat;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->addTrack$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->stop$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->writeSampleData$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final start$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->start()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final stop$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final toMediaMuxerFormat(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const-string p0, "Unsupported format: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return p0

    :cond_2
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

.method private static final writeSampleData$lambda$1(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/camera/video/internal/utils/MediaFormatExt;->INSTANCE:Landroidx/camera/video/internal/utils/MediaFormatExt;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/utils/MediaFormatExt;->isVideo(Landroid/media/MediaFormat;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->captureFps:I

    if-lez v0, :cond_0

    const-string v0, "time-lapse-enable"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "time-lapse-fps"

    iget v2, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->captureFps:I

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Lpw1;

    invoke-direct {v0, v1, p0, p1}, Lpw1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isInterruptionResilient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->RELEASED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    sget-object v0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->RELEASED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void
.end method

.method public setCaptureFps(I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    iput p1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->captureFps:I

    return-void

    :cond_0
    const-string p0, "captureFps must be positive"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(DD)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Landroidx/camera/video/internal/workaround/CorrectNegativeLatLongForMediaMuxer;->adjustGeoLocation(DD)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    double-to-float p2, p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    double-to-float p1, p3

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void

    :cond_0
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOrientationDegrees(I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void

    :cond_0
    const-string p1, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOutput(Landroid/os/ParcelFileDescriptor;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p2}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->toMediaMuxerFormat(I)I

    move-result p2

    invoke-static {v0, p2}, Landroidx/camera/video/internal/compat/Api26Impl;->createMediaMuxer(Ljava/io/FileDescriptor;I)Landroid/media/MediaMuxer;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    sget-object p1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    iput-object p1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void

    :cond_0
    const-string p1, "Muxer is not idle. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOutput(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->IDLE:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {p0, p2}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->toMediaMuxerFormat(I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 41
    sget-object p1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    iput-object p1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void

    .line 42
    :cond_0
    const-string p1, "Muxer is not idle. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->CONFIGURED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v2, :cond_1

    new-instance v0, Lff;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lff;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void

    :cond_1
    const-string v0, "Muxer is not configured. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->STOPPED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v2, :cond_1

    :try_start_0
    new-instance v0, Lb80;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lb80;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->STOPPED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    iput-object v1, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    throw v0

    :cond_1
    const-string v0, "Muxer is not started. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, v0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    sget-object v1, Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;->STARTED:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Lv85;

    invoke-direct {v0, p0, p1, p2, p3}, Lv85;-><init>(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-direct {p0, v0}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->wrapMuxerException(Lll3;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "Muxer is not started. Current state: "

    iget-object p0, p0, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->state:Landroidx/camera/video/internal/muxer/MediaMuxerImpl$State;

    invoke-static {p0, p1}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
