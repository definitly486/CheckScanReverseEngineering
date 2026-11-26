.class public final Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;


# instance fields
.field private final cache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

.field private final cameraPipeContext:Landroid/content/Context;

.field private final extensionCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionCharacteristicsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraExtensionCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final permissions:Landroidx/camera/camera2/pipe/core/Permissions;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/core/TimeSource;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public static final synthetic access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->createCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->createCameraMetadata-0r8Bogc(Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getCameraExtensionCharacteristics-EfqyGwQ(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraMetadataConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    return-object p0
.end method

.method public static final synthetic access$getCameraPipeContext$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method

.method public static final synthetic access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->isMetadataRedacted()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldBlockSensorOrientationCache(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->shouldBlockSensorOrientationCache(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method private final createCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;
    .locals 13

    const-string v7, "Failed to load extension metadata for "

    const-string v8, "Loaded extension metadata for "

    const-string v0, "Loading extension metadata for "

    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v9

    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#readCameraExtensionMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v11, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "CXCP"

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static/range {p0 .. p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraExtensionCharacteristics-EfqyGwQ(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v4

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    sget-object v5, Lmx2;->b:Lmx2;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;-><init>(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;Ljh2;)V

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v3

    const/4 p0, 0x1

    if-nez p2, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    if-ne p2, p0, :cond_2

    const-string v1, " (redacted)"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%.3f ms"

    long-to-double v3, v3

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v3, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private final createCameraMetadata-0r8Bogc(Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;
    .locals 14

    const-string v8, "Failed to load metadata for "

    const-string v9, "Loaded metadata for "

    const-string v0, "Loading metadata for "

    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v10

    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#readCameraMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "CXCP"

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraPipeContext$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$shouldBlockSensorOrientationCache(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCameraCacheBlocklist()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    sget-object v0, Lox2;->b:Lox2;

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lmr7;->m(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCameraCacheBlocklist()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_1
    if-nez v0, :cond_3

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCacheBlocklist()Ljava/util/Set;

    move-result-object v0

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCameraMetadataConfig$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;->getCacheBlocklist()Ljava/util/Set;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    sget-object v5, Lmx2;->b:Lmx2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;-><init>(Ljava/lang/String;ZLandroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Ljava/util/Map;Ljava/util/Set;Ljh2;)V

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v3

    const/4 p0, 0x1

    if-nez v2, :cond_4

    const-string v1, ""

    goto :goto_4

    :cond_4
    if-ne v2, p0, :cond_5

    const-string v1, " (redacted)"

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%.3f ms"

    long-to-double v3, v3

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v3, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v13, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :goto_6
    :try_start_3
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->shouldHandleDoNotDisturbException$camera_camera2_pipe(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Landroidx/camera/camera2/pipe/DoNotDisturbException;

    const-string p1, "Failed to load metadata: Do Not Disturb mode is on!"

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/DoNotDisturbException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private final getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCharacteristicsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lu4;->b(Ljava/lang/Object;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieving CameraExtensionCharacteristics for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cameraPipeContext:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getCameraExtensionCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Failed to get CameraExtensionCharacteristics for "

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x21

    invoke-static {p1, p0, v0}, Lcg;->f(Ljava/lang/Object;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final isMetadataRedacted()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->permissions:Landroidx/camera/camera2/pipe/core/Permissions;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Permissions;->getHasCameraPermission()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final shouldBlockSensorOrientationCache(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public awaitCameraExtensionMetadata-0r8Bogc(Ljava/lang/String;I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitExtensionMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object v1

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getExtensionCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraExtensionMetadata-RzXb1QE(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :goto_2
    :try_start_5
    monitor-exit v0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Extension sessions are only supported on Android S or higher. Device SDK is "

    invoke-static {v0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$isMetadataRedacted(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object v1

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$getCache$p(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->access$createCameraMetadata-0r8Bogc(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :goto_2
    :try_start_5
    monitor-exit v0

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public getCameraExtensionMetadata-RzXb1QE(Ljava/lang/String;ILe02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->extensionCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBackgroundDispatcher()Lr22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraExtensionMetadata$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraExtensionMetadata$3;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;ILe02;)V

    invoke-static {v0, v1, p3}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBackgroundDispatcher()Lr22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraMetadata$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache$getCameraMetadata$3;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Ljava/lang/String;Le02;)V

    invoke-static {v0, v1, p2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public getSupportedCameraExtensions-EfqyGwQ(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->getCameraExtensionCharacteristics-EfqyGwQ(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->getSupportedExtensions(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method
