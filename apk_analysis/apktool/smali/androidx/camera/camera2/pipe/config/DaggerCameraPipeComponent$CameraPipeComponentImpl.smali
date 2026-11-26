.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/CameraPipeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPipeComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field audioRestrictionControllerImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field camera2BackendProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Backend;",
            ">;"
        }
    .end annotation
.end field

.field camera2DeviceCacheProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;",
            ">;"
        }
    .end annotation
.end field

.field camera2DeviceCloserImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;",
            ">;"
        }
    .end annotation
.end field

.field camera2ErrorProcessorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;",
            ">;"
        }
    .end annotation
.end field

.field camera2MetadataCacheProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;",
            ">;"
        }
    .end annotation
.end field

.field camera2QuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;"
        }
    .end annotation
.end field

.field cameraDevicesImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field private final cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

.field cameraPipeLifetimeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;"
        }
    .end annotation
.end field

.field concurrentSessionSequencersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;",
            ">;"
        }
    .end annotation
.end field

.field permissionsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Permissions;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraBackendsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackends;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraContext;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraDeviceSetupCompatFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraPipeJobProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraSurfaceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;"
        }
    .end annotation
.end field

.field provideDevicePolicyManagerWrapperProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field providePackageManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field provideStrictModeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;"
        }
    .end annotation
.end field

.field provideThreadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;"
        }
    .end annotation
.end field

.field pruningCamera2DeviceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field retryingCameraStateOpenerImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field systemTimeSourceProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/SystemTimeSource;",
            ">;"
        }
    .end annotation
.end field

.field private final threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->initialize(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V

    return-void
.end method

.method public static synthetic access$600(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    return-object p0
.end method

.method public static synthetic access$800(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)Landroidx/camera/camera2/pipe/config/ThreadConfigModule;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->threadConfigModule:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)V
    .locals 2

    sget-object p1, Lnz7;->c:Ljava/lang/Object;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x5

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    new-instance v0, Lnz7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lnz7;->b:Ljava/lang/Object;

    iput-object p2, v0, Lnz7;->a:Lxs6;

    iput-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0x8

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->providePackageManagerProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0x9

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0xa

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraDeviceSetupCompatFactoryProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x6

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCacheProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0xc

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->permissionsProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0xd

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0xb

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0x11

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0x10

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v1, 0x12

    invoke-direct {p2, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    new-instance v0, Lnz7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lnz7;->b:Ljava/lang/Object;

    iput-object p2, v0, Lnz7;->a:Lxs6;

    iput-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideDevicePolicyManagerWrapperProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x13

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xf

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->retryingCameraStateOpenerImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x14

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2DeviceCloserImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0xe

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2BackendProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraDevicesImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x16

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/16 v0, 0x17

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Lxs6;

    return-void
.end method


# virtual methods
.method public camera2CameraAvailabilityMonitor()Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Lxs6;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb4;

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)V

    return-object v0
.end method

.method public camera2CameraOpener()Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method

.method public cameraAudioRestrictionController()Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    return-object p0
.end method

.method public cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraBackends;

    return-object p0
.end method

.method public cameraContext()Landroidx/camera/camera2/pipe/CameraContext;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraContext;

    return-object p0
.end method

.method public cameraGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V

    return-object v0
.end method

.method public cameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraInteropConfigFactory;->provideCameraInteropConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object p0

    return-object p0
.end method

.method public cameraMetadataConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory;->provideCameraMetadataConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;

    move-result-object p0

    return-object p0
.end method

.method public cameraPipeContextContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideContextFactory;->provideContext(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public cameraPipeLifetime()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeLifetimeProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    return-object p0
.end method

.method public cameraStateOpener()Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2CameraOpener()Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2ErrorProcessorProvider:Lxs6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Lxs6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Lxs6;

    invoke-interface {v5}, Lws6;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object v6

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;-><init>(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method

.method public cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    return-object p0
.end method

.method public cameras()Landroidx/camera/camera2/pipe/CameraDevices;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraDevicesImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraDevices;

    return-object p0
.end method

.method public concurrentSessionSequencers()Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;

    return-object p0
.end method

.method public frameGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V

    return-object v0
.end method

.method public imageReaderImageSources()Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraPipe$Config;)V

    return-object v0
.end method

.method public imageSources()Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->imageReaderImageSources()Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->cameraPipeConfigModule:Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;->provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ConfigureImageSourcesFactory;->configureImageSources(Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/media/ImageSources;

    move-result-object p0

    return-object p0
.end method
