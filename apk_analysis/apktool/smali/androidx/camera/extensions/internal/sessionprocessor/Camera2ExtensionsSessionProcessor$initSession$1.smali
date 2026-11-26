.class public final Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurfaceConfiguration;)Landroidx/camera/core/impl/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->isCurrentExtensionModeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lxp;->a()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v3, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->INSTANCE:Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;

    invoke-virtual {v3, v1}, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->convertCamera2ModeToCameraXMode(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->access$getCurrentExtensionType$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-static {v2}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->access$getCurrentExtensionTypeLiveData$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->isExtensionStrengthAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->access$getExtensionStrength$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    if-eq p2, p1, :cond_1

    invoke-static {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->access$getExtensionStrengthLiveData$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
