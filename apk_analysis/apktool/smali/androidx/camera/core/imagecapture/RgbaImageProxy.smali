.class public final Landroidx/camera/core/imagecapture/RgbaImageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy;


# instance fields
.field private final mCropRect:Landroid/graphics/Rect;

.field private final mHeight:I

.field private final mImageInfo:Landroidx/camera/core/ImageInfo;

.field private final mLock:Ljava/lang/Object;

.field mPlaneProxy:[Landroidx/camera/core/ImageProxy$PlaneProxy;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILandroid/graphics/Matrix;J)V
    .locals 10

    .line 39
    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->createDirectByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v2, 0x4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-wide v8, p5

    .line 42
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/imagecapture/RgbaImageProxy;-><init>(Ljava/nio/ByteBuffer;IIILandroid/graphics/Rect;ILandroid/graphics/Matrix;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/processing/Packet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v4

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v5

    .line 46
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    move-result-wide v6

    move-object v1, p0

    .line 47
    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/imagecapture/RgbaImageProxy;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILandroid/graphics/Matrix;J)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IIILandroid/graphics/Rect;ILandroid/graphics/Matrix;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    iput p3, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mWidth:I

    iput p4, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mHeight:I

    iput-object p5, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mCropRect:Landroid/graphics/Rect;

    invoke-static {p8, p9, p6, p7}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->createImageInfo(JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    move-result-object p4

    iput-object p4, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int/2addr p3, p2

    invoke-static {p1, p3, p2}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->createPlaneProxy(Ljava/nio/ByteBuffer;II)Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroidx/camera/core/ImageProxy$PlaneProxy;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    iput-object p2, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mPlaneProxy:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mPlaneProxy:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "The image is closed."

    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static createImageInfo(JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;
    .locals 1

    new-instance v0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;-><init>(JILandroid/graphics/Matrix;)V

    return-object v0
.end method

.method private static createPlaneProxy(Ljava/nio/ByteBuffer;II)Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1

    new-instance v0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;

    invoke-direct {v0, p1, p2, p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mPlaneProxy:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->getHeight()I

    move-result p0

    invoke-static {v1, v2, p0}, Landroidx/camera/core/internal/utils/ImageUtil;->createBitmapFromPlane([Landroidx/camera/core/ImageProxy$PlaneProxy;II)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mCropRect:Landroid/graphics/Rect;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFormat()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    iget p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mHeight:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImageInfo()Landroidx/camera/core/ImageInfo;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mImageInfo:Landroidx/camera/core/ImageInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mPlaneProxy:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Landroidx/camera/core/ImageProxy$PlaneProxy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    iget p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mWidth:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RgbaImageProxy;->checkNotClosed()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
