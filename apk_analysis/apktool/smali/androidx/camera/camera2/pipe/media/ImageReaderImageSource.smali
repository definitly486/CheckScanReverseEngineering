.class public final Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;,
        Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;,
        Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;

.field public static final IMAGE_SOURCE_CAPACITY:I = 0x34

.field public static final IMAGE_SOURCE_CAPACITY_MARGIN:I = 0x2


# instance fields
.field private final expectedOutputsListener$delegate:Lot;

.field private final imageCount:Llt;

.field private final imageListener$delegate:Lot;

.field private final imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

.field private final maxImages:I

.field private final state:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;",
            ">;"
        }
    .end annotation
.end field

.field private final surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->Companion:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    iput p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->maxImages:I

    sget-object p2, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->ACTIVE:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    invoke-static {p2}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->b(I)Llt;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageCount:Llt;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;->getSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->surface:Landroid/view/Surface;

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageListener$delegate:Lot;

    invoke-static {p2}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->expectedOutputsListener$delegate:Lot;

    new-instance p2, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$1;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$1;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;)V

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;->setOnImageListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;)V

    new-instance p2, La24;

    invoke-direct {p2, p0}, La24;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;)V

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;->setOnExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;JLjava/util/Set;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->getExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;->onExpectedOutputs(JLjava/util/Set;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;JLjava/util/Set;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->_init_$lambda$0(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;JLjava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$onImage-AQuxepk(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->onImage-AQuxepk(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void
.end method

.method private final flushOrCloseIfEmpty()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    sget-object v1, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->CLOSED:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageCount:Llt;

    iget v0, v0, Llt;->a:I

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    sget-object v2, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->CLOSING:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    invoke-virtual {v0, v2, v1}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_3

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_7
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_8

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_8
    invoke-static {}, Lmi2;->b()V

    :cond_9
    :goto_1
    return-void

    :cond_a
    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;->flush()V

    return-void
.end method

.method private final onImage-AQuxepk(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V
    .locals 12

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageCount:Llt;

    invoke-virtual {v0}, Llt;->b()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->getImageListener()Landroidx/camera/camera2/pipe/media/ImageListener;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->closeAndDecrementImageCount$camera_camera2_pipe(Landroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void

    :cond_0
    iget v2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->maxImages:I

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    sget-object v2, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->ACTIVE:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    if-eq v0, v2, :cond_2

    :cond_1
    move-object v7, p0

    move v2, p1

    move v3, p2

    move-object v8, p3

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v4

    new-instance v6, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;

    const/4 v11, 0x0

    move-object v7, p0

    move v9, p1

    move v10, p2

    move-object v8, p3

    invoke-direct/range {v6 .. v11}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;Landroidx/camera/camera2/pipe/media/ImageWrapper;IILjh2;)V

    move v2, v9

    move v3, v10

    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/media/ImageListener;->onImage-2cgRUCs(IIJLandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void

    :goto_0
    invoke-interface {v8}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v7, v8}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->closeAndDecrementImageCount$camera_camera2_pipe(Landroidx/camera/camera2/pipe/media/ImageWrapper;)V

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/media/ImageListener;->onImage-2cgRUCs(IIJLandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    sget-object v1, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->ACTIVE:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    sget-object v2, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->CLOSING:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    invoke-virtual {v0, v1, v2}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->flushOrCloseIfEmpty()V

    :cond_0
    return-void
.end method

.method public final closeAndDecrementImageCount$camera_camera2_pipe(Landroidx/camera/camera2/pipe/media/ImageWrapper;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Landroid/media/MediaDrm;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    :cond_7
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageCount:Llt;

    invoke-virtual {p1}, Llt;->a()I

    iget-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->state:Lot;

    iget-object p1, p1, Lot;->b:Ljava/lang/Object;

    sget-object v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;->ACTIVE:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$State;

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->flushOrCloseIfEmpty()V

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public getExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->expectedOutputsListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;

    return-object p0
.end method

.method public getImageListener()Landroidx/camera/camera2/pipe/media/ImageListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageListener;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public setExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->expectedOutputsListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public setImageListener(Landroidx/camera/camera2/pipe/media/ImageListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageSource("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->imageReader:Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
