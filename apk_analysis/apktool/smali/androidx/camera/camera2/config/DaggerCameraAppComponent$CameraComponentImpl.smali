.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/CameraComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field camera2CameraControlCompatImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field cameraCallbackMapProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraCallbackMap;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field private final cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field cameraControlAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraControlAdapter;",
            ">;"
        }
    .end annotation
.end field

.field cameraControlStateAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraControlStateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field cameraGraphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            ">;"
        }
    .end annotation
.end field

.field cameraInfoAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraInfoAdapter;",
            ">;"
        }
    .end annotation
.end field

.field cameraInternalAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraInternalAdapter;",
            ">;"
        }
    .end annotation
.end field

.field cameraPipeCameraPropertiesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraPipeCameraProperties;",
            ">;"
        }
    .end annotation
.end field

.field cameraQuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/quirk/CameraQuirks;",
            ">;"
        }
    .end annotation
.end field

.field cameraStateAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field comboRequestListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field evCompControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/EvCompControl;",
            ">;"
        }
    .end annotation
.end field

.field evCompImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/EvCompImpl;",
            ">;"
        }
    .end annotation
.end field

.field flashControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/FlashControl;",
            ">;"
        }
    .end annotation
.end field

.field focusMeteringControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/FocusMeteringControl;",
            ">;"
        }
    .end annotation
.end field

.field intrinsicZoomCalculatorImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field lowLightBoostControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            ">;"
        }
    .end annotation
.end field

.field outputSizesCorrectorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;",
            ">;"
        }
    .end annotation
.end field

.field provideCamera2CameraControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/interop/Camera2CameraControl;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraIdStringProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraMetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field provideEncoderProfilesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            ">;"
        }
    .end annotation
.end field

.field provideStreamConfigurationMapProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field provideUseCaseThreadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;"
        }
    .end annotation
.end field

.field provideZslControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;"
        }
    .end annotation
.end field

.field state3AControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;"
        }
    .end annotation
.end field

.field stillCaptureRequestControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl;",
            ">;"
        }
    .end annotation
.end field

.field streamConfigurationMapCompatProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

.field torchControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;"
        }
    .end annotation
.end field

.field useCaseManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseManager;",
            ">;"
        }
    .end annotation
.end field

.field videoUsageControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            ">;"
        }
    .end annotation
.end field

.field zoomControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ZoomControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->initialize(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->initialize2(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    return-void
.end method

.method public static synthetic access$300(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)Landroidx/camera/core/internal/StreamSpecsCalculator;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 2

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x4

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x3

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x9

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideStreamConfigurationMapProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xa

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->outputSizesCorrectorProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x8

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamConfigurationMapCompatProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x7

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xb

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x6

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xc

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x5

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xe

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xd

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x10

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xf

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x11

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x12

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x13

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x14

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x16

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->camera2CameraControlCompatImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x15

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCamera2CameraControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x17

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Lxs6;

    new-instance p1, Ljl2;

    invoke-direct {p1}, Ljl2;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x19

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlStateAdapterProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1a

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraCallbackMapProvider:Lxs6;

    return-void
.end method

.method private initialize2(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 2

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1c

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraIdStringProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1b

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideEncoderProfilesProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1d

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x18

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInfoAdapterProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1e

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraGraphConfigProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useCaseManagerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1f

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlAdapterProvider:Lxs6;

    iget-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lxs6;

    new-instance p2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p2}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p0

    invoke-static {p1, p0}, Ljl2;->a(Lxs6;Lxs6;)V

    return-void
.end method


# virtual methods
.method public autoFlashAEModeDisabler()Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    move-result-object p0

    return-object p0
.end method

.method public getCameraInternal()Landroidx/camera/core/impl/CameraInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    return-object p0
.end method

.method public inactiveSurfaceCloser()Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory;->provideInactiveSurfaceCloser(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    move-result-object p0

    return-object p0
.end method

.method public meteringRegionCorrection()Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory;->provideMeteringRegionCorrection(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    move-result-object p0

    return-object p0
.end method

.method public setOfUseCaseCameraControl()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->setOfUseCaseCameraControlBuilder()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public setOfUseCaseCameraControlBuilder()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljr7;

    invoke-direct {v0}, Ljr7;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljr7;->a(Ljava/lang/Object;)V

    iget-object p0, v0, Ljr7;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object p0

    return-object p0
.end method

.method public useFlashModeTorchFor3aUpdate()Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory;->provideUseFlashModeTorchFor3aUpdate(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;

    move-result-object p0

    return-object p0
.end method

.method public useTorchAsFlash()Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object v1

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory;->provideUseTorchAsFlash(Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/pipe/CameraDevices;Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;)Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    move-result-object p0

    return-object p0
.end method

.method public zoomCompat()Landroidx/camera/camera2/compat/ZoomCompat;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CameraProperties;

    invoke-static {p0}, Landroidx/camera/camera2/compat/ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory;->provideZoomCompat(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/compat/ZoomCompat;

    move-result-object p0

    return-object p0
.end method
