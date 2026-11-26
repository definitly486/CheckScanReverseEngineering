.class public final Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    sget-object p3, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p3

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    sget-object p8, Lkx2;->b:Lkx2;

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p9, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    const/4 p10, 0x0

    :cond_8
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_9

    const/4 p11, -0x1

    :cond_9
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_a

    move-object p12, v0

    :cond_a
    invoke-virtual/range {p0 .. p12}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object p0

    return-object p0
.end method

.method private final enableSurfaceSharingCompat(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->enableSurfaceSharing(Landroid/hardware/camera2/params/OutputConfiguration;)V

    return-void
.end method

.method private final setPhysicalCameraIdCompat-8Ri2elo(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1

    if-lt p0, v0, :cond_0

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "physicalCameraId is not supported on API "

    const-string p2, " (requires API 28)"

    invoke-static {p0, p1, p2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private final toKlass(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/OutputStream$OutputType;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_TEXTURE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p0, Landroid/graphics/SurfaceTexture;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_VIEW()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Landroid/view/SurfaceHolder;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getMEDIA_CODEC()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_2

    const-class p0, Landroid/media/MediaCodec;

    return-object p0

    :cond_2
    const-string p0, "OutputType.MEDIA_CODEC requires API 35 or higher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getMEDIA_RECORDER()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p0

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_4

    const-class p0, Landroid/media/MediaRecorder;

    return-object p0

    :cond_4
    const-string p0, "OutputType.MEDIA_RECORDER requires API 35 or higher."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p0, "Unsupported OutputType: "

    invoke-static {p1, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final create-gWWoySg(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/lang/Integer;",
            "Landroidx/camera/camera2/pipe/OutputStream$OutputType;",
            "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;",
            "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;",
            "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;",
            "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;",
            ">;",
            "Landroid/util/Size;",
            "ZI",
            "Ljava/lang/String;",
            ")",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;"
        }
    .end annotation

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p11

    move-object/from16 v4, p12

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x21

    const-string v9, "CXCP"

    if-eq p3, v6, :cond_0

    goto :goto_0

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x23

    if-lt v6, v10, :cond_3

    const-string p1, "Required value was null."

    if-eqz p2, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->newImageReaderOutputConfiguration(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p1}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_3
    :goto_0
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p2

    if-eq p3, p2, :cond_5

    if-eqz v2, :cond_4

    invoke-direct {p0, p3}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->toKlass(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->newOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p0, "Size must defined when creating a deferred OutputConfiguration."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_5
    if-eqz p1, :cond_14

    const/4 p2, -0x1

    if-eq v3, p2, :cond_6

    :try_start_0
    new-instance p2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {p2, v3, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_6
    new-instance p2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {p2, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz p10, :cond_7

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->enableSurfaceSharingCompat(Landroid/hardware/camera2/params/OutputConfiguration;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-direct {p0, p1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->setPhysicalCameraIdCompat-8Ri2elo(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    :cond_8
    const-string p0, ". This may result in unexpected behavior. Requested "

    if-eqz p4, :cond_a

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_9

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setMirrorMode(Landroid/hardware/camera2/params/OutputConfiguration;I)V

    goto :goto_3

    :cond_9
    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->Companion:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode$Companion;->getMIRROR_MODE_AUTO-DrUKqn0()I

    move-result v0

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v2

    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Cannot set mirrorMode to a non-default value on API "

    invoke-static {p2, v0, p0}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    if-eqz p5, :cond_c

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_b

    invoke-virtual/range {p5 .. p5}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setTimestampBase(Landroid/hardware/camera2/params/OutputConfiguration;I)V

    goto :goto_4

    :cond_b
    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase$Companion;->getTIMESTAMP_BASE_DEFAULT-6HVI0MA()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result v2

    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "The timestamp base on API "

    const-string v2, " will default to TIMESTAMP_BASE_DEFAULT, with which the camera device adjusts timestamps based on the output target. Requested "

    invoke-static {p2, v0, v2}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p5 .. p5}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->unbox-impl()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    if-eqz p6, :cond_e

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_d

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setDynamicRangeProfile(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    goto :goto_5

    :cond_d
    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->Companion:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile$Companion;->getSTANDARD-fFAQAUE()J

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Cannot set dynamicRangeProfile to a non-default value on API "

    invoke-static {p2, v0, p0}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    if-eqz p7, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_f

    invoke-virtual/range {p7 .. p7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setStreamUseCase(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    :cond_f
    move-object p2, v1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;->unbox-impl()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->addSensorPixelModeUsed(Landroid/hardware/camera2/params/OutputConfiguration;I)V

    goto :goto_6

    :cond_10
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add sensorPixelModeUsed value on API "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_12

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->getMaxSharedSurfaceCount(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result p2

    goto :goto_7

    :cond_12
    const/4 p2, 0x1

    :goto_7
    const/4 v0, 0x0

    move p3, p2

    move/from16 p2, p10

    move-object/from16 p5, v0

    move-object p4, v4

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Ljh2;)V

    return-object p0

    :goto_8
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_13

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create an OutputConfiguration for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-object v7

    :cond_14
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string p0, "non-null surface!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7
.end method
