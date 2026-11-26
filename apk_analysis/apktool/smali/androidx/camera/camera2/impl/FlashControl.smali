.class public final Landroidx/camera/camera2/impl/FlashControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/FlashControl$Bindings;
    }
.end annotation


# instance fields
.field private volatile _flashMode:I

.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private volatile _screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

.field private _updateSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private flashMode:I

.field private screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

.field private final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private updateSignal:Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final useFlashModeTorchFor3aUpdate:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/FlashControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FlashControl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    iput-object p5, p0, Landroidx/camera/camera2/impl/FlashControl;->useFlashModeTorchFor3aUpdate:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    iget p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    iput p1, p0, Landroidx/camera/camera2/impl/FlashControl;->flashMode:I

    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    sget-object p1, Lj59;->a:Lj59;

    invoke-static {p1}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->updateSignal:Lmk2;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/FlashControl;->setTorchForScreenFlash$lambda$1$1(Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyScreenFlash(Landroidx/camera/camera2/impl/FlashControl;JLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/FlashControl;->applyScreenFlash(JLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final applyScreenFlash(JLe02;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le02<",
            "-",
            "Lmk2<",
            "Lj59;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;

    iget v1, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;-><init>(Landroidx/camera/camera2/impl/FlashControl;Le02;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-wide p1, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->J$0:J

    iget-object v0, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lxp1;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v8, p0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lyp1;

    invoke-direct {p3}, Lyp1;-><init>()V

    new-instance v9, Lmc3;

    invoke-direct {v9, p3}, Lmc3;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Luy4;->a:Lhu3;

    new-instance v5, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;

    const/4 v10, 0x0

    move-object v8, p0

    move-wide v6, p1

    invoke-direct/range {v5 .. v10}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;-><init>(JLandroidx/camera/camera2/impl/FlashControl;Landroidx/camera/core/ImageCapture$ScreenFlashListener;Le02;)V

    iput-object p3, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->J$0:J

    iput v4, v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$1;->label:I

    invoke-static {v2, v5, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p3

    move-wide p1, v6

    :goto_1
    iget-object p0, v8, Landroidx/camera/camera2/impl/FlashControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Ly22;

    move-result-object p0

    new-instance p3, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;

    invoke-direct {p3, v0, p1, p2, v3}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;-><init>(Lxp1;JLe02;)V

    const/4 p1, 0x3

    invoke-static {p0, v3, v3, p3, p1}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

.method private static final applyScreenFlash$lambda$0(Lxp1;)V
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lyp1;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/FlashControl;->applyScreenFlash$lambda$0(Lxp1;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/impl/FlashControl;->setExternalFlashAeModeAsync$lambda$1$1(Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFlashMode$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic get_flashMode$annotations()V
    .locals 0

    return-void
.end method

.method private final setExternalFlashAeModeAsync()Lmk2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->isExternalFlashAeModeSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setExternalFlashAeModeAsync: isExternalFlashAeModeSupported = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/State3AControl;->setTryExternalFlashAeModeAsync(Z)Lmk2;

    move-result-object p0

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setExternalFlashAeModeAsync: need to wait for state3AControl.updateSignal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lw82;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lw82;-><init>(I)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-object p0
.end method

.method private static final setExternalFlashAeModeAsync$lambda$1$1(Ljava/lang/Throwable;)Lj59;
    .locals 1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setExternalFlashAeModeAsync: state3AControl.updateSignal completed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic setFlashAsync$default(Landroidx/camera/camera2/impl/FlashControl;IZILjava/lang/Object;)Lmk2;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync(IZ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final setTorchForScreenFlash()Lmk2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->useFlashModeTorchFor3aUpdate:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;

    invoke-interface {v0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;->shouldUseFlashModeTorch()Z

    move-result v0

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setTorchIfRequired: shouldUseFlashModeTorch = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Landroidx/camera/camera2/impl/FlashControl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    sget-object p0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getUSED_AS_FLASH-IRs_-R8()I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lmk2;

    move-result-object p0

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTorchIfRequired: need to wait for torch control to be completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lqy2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lqy2;-><init>(I)V

    invoke-interface {p0, v0}, Lmb4;->g(Lnl3;)Lhp2;

    return-object p0
.end method

.method private static final setTorchForScreenFlash$lambda$1$1(Ljava/lang/Throwable;)Lj59;
    .locals 1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setTorchIfRequired: torch control completed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final stopRunningTask()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lxp1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v2, "There is a new flash mode being set or camera was closed"

    invoke-direct {v1, v2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lxp1;

    return-void
.end method


# virtual methods
.method public final awaitFlashModeUpdate(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    iget v1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;-><init>(Landroidx/camera/camera2/impl/FlashControl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    const-string v3, "CXCP"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p0, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->I$0:I

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FlashControl: Waiting for any ongoing update to be completed"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FlashControl;->getFlashMode()I

    move-result p1

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FlashControl;->getUpdateSignal()Lmk2;

    move-result-object p0

    iput p1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->I$0:I

    iput v4, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    invoke-interface {p0, v0}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move p0, p1

    :goto_1
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "awaitFlashModeUpdate: initialFlashMode = "

    invoke-static {p0, v0, p1}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public final getFlashMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    return p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->_screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    return-object p0
.end method

.method public final getUpdateSignal()Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lxp1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    invoke-static {p0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/impl/FlashControl;->_screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FlashControl;->stopRunningTask()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v0, v1}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync$default(Landroidx/camera/camera2/impl/FlashControl;IZILjava/lang/Object;)Lmk2;

    return-void
.end method

.method public final setFlashAsync(IZ)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFlashAsync: flashMode = "

    const-string v2, ", requestControl = "

    invoke-static {p1, v1, v2}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FlashControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FlashControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v1

    if-eqz v1, :cond_3

    iput p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FlashControl;->stopRunningTask()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lxp1;

    if-eqz p2, :cond_2

    invoke-static {v0, p2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lxp1;

    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/State3AControl;->setFlashModeAsync(I)Lmk2;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    return-object v0

    :cond_3
    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p1, "Camera is not active."

    invoke-direct {p0, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lyp1;->e(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync(IZ)Lmk2;

    return-void
.end method

.method public final setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_screenFlash:Landroidx/camera/core/ImageCapture$ScreenFlash;

    return-void
.end method

.method public final startScreenFlashCaptureTasks(Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;

    iget v1, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;-><init>(Landroidx/camera/camera2/impl/FlashControl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object v2, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->label:I

    const-wide/16 v5, 0xbb8

    invoke-direct {p0, v5, v6, v0}, Landroidx/camera/camera2/impl/FlashControl;->applyScreenFlash(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/camera/camera2/impl/FlashControl;->setExternalFlashAeModeAsync()Lmk2;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {p0}, Landroidx/camera/camera2/impl/FlashControl;->setTorchForScreenFlash()Lmk2;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    check-cast v5, Ljava/util/Collection;

    iput-object v3, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/impl/FlashControl$startScreenFlashCaptureTasks$1;->label:I

    invoke-static {v5, v0}, Loz;->a(Ljava/util/Collection;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_2
    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final stopScreenFlashCaptureTasks(Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;

    iget v1, v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;-><init>(Landroidx/camera/camera2/impl/FlashControl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    new-instance v2, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;

    invoke-direct {v2, p0, v3}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;-><init>(Landroidx/camera/camera2/impl/FlashControl;Le02;)V

    iput v4, v0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$1;->label:I

    invoke-static {p1, v2, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->isExternalFlashAeModeSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/State3AControl;->setTryExternalFlashAeModeAsync(Z)Lmk2;

    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->useFlashModeTorchFor3aUpdate:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;

    invoke-interface {p1}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;->shouldUseFlashModeTorch()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    sget-object p0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lmk2;

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
