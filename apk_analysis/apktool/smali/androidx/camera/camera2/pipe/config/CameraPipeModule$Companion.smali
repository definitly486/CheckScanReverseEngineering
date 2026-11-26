.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/CameraPipeModule;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraBackends$lambda$2(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    return-object p0
.end method

.method private static final provideCameraBackends$lambda$2(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final configureImageSources(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final provideCameraBackends(Landroidx/camera/camera2/pipe/CameraPipe$Config;Lws6;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 11
    .param p2    # Lws6;
        .annotation runtime Landroidx/camera/camera2/pipe/config/DefaultCameraBackend;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraPipe$Config;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ")",
            "Landroidx/camera/camera2/pipe/CameraBackends;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getInternalBackend()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p0, "Initialize defaultCameraBackend"

    :try_start_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p2}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getCameraBackends()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getCameraBackends()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v1

    new-instance v2, Le11;

    invoke-direct {v2, p0}, Le11;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    :goto_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraBackendConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;->getDefaultBackend-AKmI2lo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v5, p1

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v4, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    const/4 v10, 0x0

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Ljh2;)V

    return-object v4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to find "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in the list of available CameraPipe backends! Available values are "

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lzg;->g(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ". Use CameraBackendConfig#internalBackend field instead."

    const-string p2, "CameraBackendConfig#cameraBackends should not contain a backend with "

    invoke-static {p0, p2, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final provideCameraContext(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)Landroidx/camera/camera2/pipe/CameraContext;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V

    return-object p0
.end method

.method public final provideCameraDeviceSetupCompatFactory(Landroid/content/Context;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    invoke-direct {p0, p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final provideCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "camera"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public final provideCameraMetadataConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraMetadataConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object p0

    return-object p0
.end method

.method public final provideCameraPipeJob()Lmb4;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
    .end annotation

    invoke-static {}, Lqb4;->a()Lnb4;

    move-result-object p0

    return-object p0
.end method

.method public final provideCameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;-><init>()V

    return-object p0
.end method

.method public final provideContext(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroid/content/Context;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final provideDevicePolicyManagerWrapper(Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "device_policy"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-object p1
.end method

.method public final providePackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final provideStrictMode(Landroidx/camera/camera2/pipe/CameraPipe$Flags;)Landroidx/camera/camera2/pipe/StrictMode;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->getStrictModeEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/StrictMode;-><init>(Z)V

    return-object p0
.end method
