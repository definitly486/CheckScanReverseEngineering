.class Landroidx/camera/extensions/CameraExtensionsControls;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroidx/camera/core/CameraControl;)Landroidx/camera/extensions/CameraExtensionsControl;
    .locals 2

    instance-of v0, p0, Landroidx/camera/core/impl/AdapterCameraControl;

    const-string v1, "The input camera control must be an instance retrieved from the camera that is returned by invoking CameraProvider#bindToLifecycle() with an extension enabled camera selector."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    check-cast p0, Landroidx/camera/core/impl/AdapterCameraControl;

    invoke-virtual {p0}, Landroidx/camera/core/impl/AdapterCameraControl;->getSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    instance-of v0, p0, Landroidx/camera/extensions/CameraExtensionsControl;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/camera/extensions/CameraExtensionsControl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
