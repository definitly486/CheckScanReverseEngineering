.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/UseCaseCameraComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseCaseCameraComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field captureConfigAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field capturePipelineImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;"
        }
    .end annotation
.end field

.field capturePipelineTorchCorrectionProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;",
            ">;"
        }
    .end annotation
.end field

.field deferredUseCaseCameraRequestControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;",
            ">;"
        }
    .end annotation
.end field

.field provideCapturePipelineProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field provideSessionConfigAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field provideSessionProcessorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/SessionProcessor;",
            ">;"
        }
    .end annotation
.end field

.field provideUseCaseGraphContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

.field private final useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

.field useCaseCameraImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraImpl;",
            ">;"
        }
    .end annotation
.end field

.field useCaseCameraRequestControlImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field useCaseCameraStateProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;"
        }
    .end annotation
.end field

.field useCaseSurfaceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-direct {p0, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->initialize(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 4

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionProcessorProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x7

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->captureConfigAdapterProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0x8

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x6

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0x9

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineTorchCorrectionProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x5

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0xb

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0xa

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraRequestControlImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x3

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->deferredUseCaseCameraRequestControlProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Lxs6;

    return-void
.end method


# virtual methods
.method public getUseCaseCamera()Landroidx/camera/camera2/impl/UseCaseCamera;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCamera;

    return-object p0
.end method

.method public getUseCaseGraphContext()Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/config/UseCaseGraphContext;

    return-object p0
.end method
