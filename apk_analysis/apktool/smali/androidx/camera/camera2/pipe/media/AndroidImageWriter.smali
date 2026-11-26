.class public final Landroidx/camera/camera2/pipe/media/AndroidImageWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;


# instance fields
.field private final format:I

.field private final imageWriter:Landroid/media/ImageWriter;

.field private final inputStreamId:I

.field private final maxImages:I

.field private final onImageReleasedListener:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/media/ImageWriter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->inputStreamId:I

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->onImageReleasedListener:Lot;

    invoke-virtual {p1}, Landroid/media/ImageWriter;->getMaxImages()I

    move-result p2

    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->maxImages:I

    invoke-virtual {p1}, Landroid/media/ImageWriter;->getFormat()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->format:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/ImageWriter;ILjh2;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;-><init>(Landroid/media/ImageWriter;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V

    return-void
.end method

.method public dequeueInputImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidImage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/media/AndroidImage;-><init>(Landroid/media/Image;)V

    return-object v0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->format:I

    return p0
.end method

.method public getMaxImages()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->maxImages:I

    return p0
.end method

.method public onImageReleased(Landroid/media/ImageWriter;)V
    .locals 0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->onImageReleasedListener:Lot;

    iget-object p1, p1, Lot;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;

    if-eqz p1, :cond_0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->inputStreamId:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;->onImageReleased-I45lehc(I)V

    :cond_0
    return-void
.end method

.method public queueInputImage(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z
    .locals 6

    const-string v0, "CXCP"

    const-string v1, "Failed to unwrap image wrapper "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/media/Image;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    if-nez v4, :cond_0

    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :goto_0
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to queue image to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " due to error "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Ignoring failure and closing "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of p0, p1, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_2

    :cond_2
    instance-of p0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_6

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p0

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v0, v3

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {p1, v4, v5, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v0, v2

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_6
    instance-of p0, p1, Landroid/content/res/TypedArray;

    if-eqz p0, :cond_7

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_7
    instance-of p0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz p0, :cond_8

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_8
    instance-of p0, p1, Landroid/media/MediaDrm;

    if-eqz p0, :cond_a

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    :cond_9
    :goto_2
    return v3

    :cond_a
    invoke-static {}, Lmi2;->b()V

    return v3
.end method

.method public setOnImageReleasedListener(Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->onImageReleasedListener:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWriter-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->inputStreamId:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/InputStreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-class v0, Landroid/media/ImageWriter;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->imageWriter:Landroid/media/ImageWriter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
