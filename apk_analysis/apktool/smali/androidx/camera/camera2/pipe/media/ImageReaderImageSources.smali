.class public final Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageSources;


# instance fields
.field private final platformApiCompat:Landroidx/camera/camera2/pipe/PlatformApiCompat;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraPipe$Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getPlatformApiCompat()Landroidx/camera/camera2/pipe/PlatformApiCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->platformApiCompat:Landroidx/camera/camera2/pipe/PlatformApiCompat;

    return-void
.end method

.method private static final create$lambda$4(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private static final create$lambda$5(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/CameraStream;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroidx/camera/camera2/pipe/media/ImageSource;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_a

    if-lez p2, :cond_9

    const/16 v0, 0x34

    if-gt p2, v0, :cond_8

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Cannot enable concurrent outputs for a single output camera stream."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->create$lambda$4(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;)Landroid/os/Handler;

    move-result-object v10

    move-object v2, v0

    sget-object v0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    move v1, v3

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getFormat-8FPWQzE()I

    move-result v3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v8

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v9

    move-object v6, p4

    move-object/from16 v7, p5

    move v2, v5

    move-object v5, p3

    invoke-virtual/range {v0 .. v10}, Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;->create-fE-0t4g(IIIILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;IILandroid/os/Handler;)Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->Companion:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;->create(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;)Landroidx/camera/camera2/pipe/media/ImageSource;

    move-result-object v0

    return-object v0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_7

    const-string v1, ") for "

    const-string v4, "CXCP"

    if-eqz p3, :cond_3

    const/16 v7, 0x24

    if-lt v0, v7, :cond_3

    move-object v3, p3

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring usageFlags ("

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". MultiResolutionImageReader does not support setting usage flags."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring DataSpace ("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". MultiResolutionImageReader does not support setting the default DataSpace."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p5, :cond_6

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring HardwareBufferFormat ("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". MultiResolutionImageReader does not support setting the default HardwareBufferFormat."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->Companion:Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;

    move-object v4, v3

    invoke-static {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->create$lambda$5(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->platformApiCompat:Landroidx/camera/camera2/pipe/PlatformApiCompat;

    move v2, p2

    move/from16 v5, p6

    move-object v6, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;->create(Landroidx/camera/camera2/pipe/CameraStream;ILjava/util/concurrent/Executor;Ljava/lang/Long;ZLandroidx/camera/camera2/pipe/PlatformApiCompat;)Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->Companion:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$Companion;->create(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;)Landroidx/camera/camera2/pipe/media/ImageSource;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create an ImageSource for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "Capacity for creating new ImageReaderImageSources is restricted to 52. Android has undocumented internal limits that can vary per device."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_9
    const-string v0, "Capacity ("

    const-string v1, ") must be > 0"

    invoke-static {p2, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v3

    :cond_a
    const-string v0, " must have outputs."

    invoke-static {p1, v0}, Lxp;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public createImageSource(Landroidx/camera/camera2/pipe/CameraStream;Landroidx/camera/camera2/pipe/ImageSourceConfig;)Landroidx/camera/camera2/pipe/media/ImageSource;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getCapacity()I

    move-result v2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getUsageFlags()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getDefaultDataSpace()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getDefaultHardwareBufferFormat()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ImageSourceConfig;->getEnableConcurrentOutputs()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;->create(Landroidx/camera/camera2/pipe/CameraStream;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroidx/camera/camera2/pipe/media/ImageSource;

    move-result-object p0

    return-object p0
.end method
