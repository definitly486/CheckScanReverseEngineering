.class public final Lnb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

.field public final b:Lla3;

.field public c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Lla3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb5;->a:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    iput-object p2, p0, Lnb5;->b:Lla3;

    return-void
.end method

.method public static a(Landroid/media/Image;Landroidx/camera/core/ImageProxy;)Lq54;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v1, "Please provide a valid image"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lq54;->b(I)V

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-eq v1, v4, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v7, 0x23

    if-ne v1, v7, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v7, "Only JPEG and YUV_420_888 are supported now"

    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-instance v7, Lq54;

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v8

    if-ne v8, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    const-string v8, "Only JPEG is supported now"

    invoke-static {v4, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v8, v4

    if-ne v8, v2, :cond_4

    aget-object v2, v4, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    new-array v8, v4, [B

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v8, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-nez v10, :cond_3

    invoke-static {v11, v3, v3, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    invoke-direct {v7, v2}, Lq54;-><init>(Landroid/graphics/Bitmap;)V

    :goto_3
    move v9, v1

    move-object v1, v7

    goto :goto_5

    :cond_4
    const-string v0, "Unexpected image format, JPEG should have exactly 1 image plane"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_5
    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_7

    aget-object v7, v1, v4

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-instance v7, Lq54;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v7, v0, v1, v2, v10}, Lq54;-><init>(Landroid/media/Image;III)V

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    goto :goto_3

    :goto_5
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v8

    const-string v0, "vision-common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V

    return-object v1
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lsc0;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Lsc0;-><init>(I)V

    invoke-static {v0}, Ltc0;->h(Lsc0;)Lylb;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lnb5;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Ldm9;->c(Landroidx/camera/core/ImageProxy;Ljava/nio/ByteBuffer;)Ldm9$a;

    move-result-object v0

    iget-object v4, v0, Ldm9$a;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v0, Ldm9$a;->a:Ldm9$c;

    iget-object v3, p0, Lnb5;->c:Ljava/nio/ByteBuffer;

    if-eq v3, v4, :cond_0

    iput-object v4, p0, Lnb5;->c:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ldm9$c;->a()I

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_1

    invoke-static {v1, p1}, Lnb5;->a(Landroid/media/Image;Landroidx/camera/core/ImageProxy;)Lq54;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v5

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v6

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v7

    invoke-virtual {v0}, Ldm9$c;->a()I

    move-result v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    new-instance v3, Lq54;

    invoke-direct/range {v3 .. v8}, Lq54;-><init>(Ljava/nio/ByteBuffer;IIII)V

    move-object v0, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    const-string v4, "vision-common"

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    move-result-object v4

    move v11, v7

    move-wide v12, v9

    move v10, v3

    move-object v3, v4

    move v9, v5

    move v4, v8

    move v8, v6

    move-wide v6, v12

    const/4 v5, 0x3

    invoke-static/range {v3 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v3, Lk57$a;

    invoke-direct {v3, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_2
    invoke-static {v1, p1}, Lnb5;->a(Landroid/media/Image;Landroidx/camera/core/ImageProxy;)Lq54;

    move-result-object v1

    instance-of v3, v0, Lk57$a;

    if-eqz v3, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lq54;

    invoke-virtual {v2, v0}, Lylb;->a(Lq54;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lnb5$a;

    invoke-direct {v1, p0}, Lnb5$a;-><init>(Lnb5;)V

    new-instance p0, Lef1;

    invoke-direct {p0, v1}, Lef1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lk4;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lk4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_3
    return-void
.end method
