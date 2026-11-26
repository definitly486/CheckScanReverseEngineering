.class final Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWrapper;
.implements Landroidx/camera/camera2/pipe/media/OutputImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/OutputImage$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputImageImpl"
.end annotation


# instance fields
.field private final image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

.field private final outputId:I

.field private final streamId:I


# direct methods
.method private constructor <init>(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->streamId:I

    iput p2, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->outputId:I

    iput-object p3, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/camera/camera2/pipe/media/ImageWrapper;Ljh2;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;-><init>(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_7
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_8

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getFormat()I

    move-result p0

    return p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutputId-4LaLFng()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->outputId:I

    return p0
.end method

.method public getPlanes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/media/ImagePlane;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getPlanes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStreamId-ptHMqGs()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->streamId:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getWidth()I

    move-result p0

    return p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/media/OutputImage$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputImage-s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getStreamId-ptHMqGs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getOutputId-4LaLFng()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion$OutputImageImpl;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
