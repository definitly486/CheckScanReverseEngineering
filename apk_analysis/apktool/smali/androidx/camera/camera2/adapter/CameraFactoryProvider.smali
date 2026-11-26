.class public final Landroidx/camera/camera2/adapter/CameraFactoryProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory$Provider;


# instance fields
.field private final sharedAppContext:Landroid/content/Context;

.field private final sharedCameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private final sharedInteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

.field private final sharedThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 25
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;-><init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedCameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    .line 22
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedAppContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    .line 24
    new-instance p1, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    invoke-direct {p1}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedInteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;-><init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->newInstance$lambda$0(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedCameraPipe$p(Landroidx/camera/camera2/adapter/CameraFactoryProvider;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedCameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    return-object p0
.end method

.method public static final synthetic access$getSharedInteropCallbacks$p(Landroidx/camera/camera2/adapter/CameraFactoryProvider;)Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedInteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    return-object p0
.end method

.method private final createCameraPipe-ck8WKOA(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 16

    const-string v0, "Created CameraPipe in "

    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v1, "Create CameraPipe"

    :try_start_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    invoke-direct {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;-><init>()V

    sget-object v2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v2

    new-instance v4, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/CameraThreadConfig;->getCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-static {v7}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v10

    const/16 v14, 0x77

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;ILjh2;)V

    new-instance v9, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->access$getSharedInteropCallbacks$p(Landroidx/camera/camera2/adapter/CameraFactoryProvider;)Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->getDeviceStateCallback()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->access$getSharedInteropCallbacks$p(Landroidx/camera/camera2/adapter/CameraFactoryProvider;)Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->getSessionStateCallback()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v10, p3

    invoke-direct {v9, v7, v8, v10, v15}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/DurationNs;Ljh2;)V

    const/16 v13, 0xec

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v14}, Landroidx/camera/camera2/pipe/CameraPipe$Config;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/media/ImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Flags;Landroidx/camera/camera2/pipe/PlatformApiCompat;ILjh2;)V

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraPipeKt;->CameraPipe(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object v4

    sget-object v5, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v5, "CXCP"

    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v1

    const-string v3, "%.3f ms"

    long-to-double v1, v1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private static final newInstance$lambda$0(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedCameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    if-eqz v0, :cond_1

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Using shared a "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->access$getSharedCameraPipe$p(Landroidx/camera/camera2/adapter/CameraFactoryProvider;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " instance."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedCameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    return-object p0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->createCameraPipe-ck8WKOA(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;JLandroidx/camera/core/CameraXConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/core/impl/CameraFactory;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p4, p5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p4

    invoke-static {p4, p5}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object p4

    :goto_0
    new-instance p5, Ly01;

    invoke-direct {p5, p0, p1, p2, p4}, Ly01;-><init>(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, p5}, Lfh8;-><init>(Lll3;)V

    new-instance v0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;

    iget-object p4, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedAppContext:Landroid/content/Context;

    if-nez p4, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    if-nez p1, :cond_2

    move-object v3, p2

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    iget-object v4, p0, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->sharedInteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    if-nez p6, :cond_3

    new-instance p0, Landroidx/camera/core/CameraXConfig$Builder;

    invoke-direct {p0}, Landroidx/camera/core/CameraXConfig$Builder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/core/CameraXConfig$Builder;->build()Landroidx/camera/core/CameraXConfig;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    move-object v5, p3

    move-object v7, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;-><init>(Lcl4;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/CameraXConfig;)V

    return-object v0
.end method
