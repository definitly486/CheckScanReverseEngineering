.class public final Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/CameraStream;ILjava/util/concurrent/Executor;Ljava/lang/Long;ZLandroidx/camera/camera2/pipe/PlatformApiCompat;)Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/OutputStream;->getFormat-8FPWQzE()I

    move-result v1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v2

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;->create-wJp1_LU(IILjava/util/List;ILjava/util/concurrent/Executor;Ljava/lang/Long;ZLandroidx/camera/camera2/pipe/PlatformApiCompat;)Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " outputs cannot be empty!"

    invoke-static {p1, p0}, Lxp;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final create-wJp1_LU(IILjava/util/List;ILjava/util/concurrent/Executor;Ljava/lang/Long;ZLandroidx/camera/camera2/pipe/PlatformApiCompat;)Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Long;",
            "Z",
            "Landroidx/camera/camera2/pipe/PlatformApiCompat;",
            ")",
            "Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;"
        }
    .end annotation

    move/from16 v3, p4

    move-object/from16 p0, p5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    if-lez v3, :cond_c

    const/16 v0, 0x36

    if-gt v3, v0, :cond_b

    const/4 v10, 0x1

    if-eqz p7, :cond_1

    if-eqz p8, :cond_0

    invoke-interface/range {p8 .. p8}, Landroidx/camera/camera2/pipe/PlatformApiCompat;->isMultiResolutionConcurrentReadersEnabled()Z

    move-result v0

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Concurrent MultiResolutionImageReaders are not supported on this device"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_1
    :goto_0
    const/16 v0, 0x24

    if-eqz p6, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_2

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CXCP"

    const-string v2, "Usage flags are only supported for API >= 36. Creating multiresolution image reader without usage flag."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v7, p3

    check-cast v7, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v7, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    move v1, v2

    :cond_3
    move-object v8, v6

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {}, Lhn;->b()V

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-direct {v11, v4, v5, v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v2

    invoke-interface {v6, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz p8, :cond_5

    invoke-interface/range {p8 .. p8}, Landroidx/camera/camera2/pipe/PlatformApiCompat;->isMultiResolutionConcurrentReadersEnabled()Z

    move-result v2

    if-ne v2, v10, :cond_5

    check-cast v1, Ljava/util/Collection;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v2, p1

    move-object/from16 v4, p6

    move-object/from16 v0, p8

    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/PlatformApiCompat;->buildMultiResolutionImageReader(Ljava/util/Collection;IILjava/lang/Long;Ljava/lang/Boolean;)Landroid/hardware/camera2/MultiResolutionImageReader;

    move-result-object v1

    move-object v11, v0

    goto :goto_2

    :cond_5
    move-object/from16 v11, p8

    if-eqz p6, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v0, :cond_6

    invoke-static {}, Lgj;->a()V

    check-cast v1, Ljava/util/Collection;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, p1, v3, v4, v5}, Lej;->a(Ljava/util/Collection;IIJ)Landroid/hardware/camera2/MultiResolutionImageReader;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {}, Lgj;->a()V

    check-cast v1, Ljava/util/Collection;

    new-instance v0, Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-direct {v0, v1, p1, v3}, Landroid/hardware/camera2/MultiResolutionImageReader;-><init>(Ljava/util/Collection;II)V

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_a

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    move-object v4, v5

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v7}, Lqn1;->z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb36;

    iget-object v9, v7, Lb36;->b:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v7, v7, Lb36;->c:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v7

    invoke-static {v7}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_8
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object v7

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamFormat;->constructor-impl(I)I

    move-result v2

    const/4 v9, 0x0

    move v4, p2

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;-><init>(Landroid/hardware/camera2/MultiResolutionImageReader;IIILjava/util/List;Ljava/util/Map;Ljava/util/Map;ZLjh2;)V

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroidx/camera/camera2/pipe/PlatformApiCompat;->isMultiResolutionConcurrentReadersEnabled()Z

    move-result p1

    if-ne p1, v10, :cond_9

    if-eqz p7, :cond_9

    invoke-interface {v11, v1, p0, v0}, Landroidx/camera/camera2/pipe/PlatformApiCompat;->setOnActiveOutputSurfacesListener(Landroid/hardware/camera2/MultiResolutionImageReader;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/CameraOnActiveOutputSurfacesListener;)V

    :cond_9
    invoke-virtual {v1, v0, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_a
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_b
    move-object v8, v6

    const-string p0, "Capacity for creating new ImageSources is restricted to 54. Android has undocumented internal limits that are different depending on which device the MultiResolutionImageReader is created on."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v8

    :cond_c
    move-object v8, v6

    const-string p0, "Capacity ("

    const-string p1, ") must be > 0"

    invoke-static {v3, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v8
.end method
