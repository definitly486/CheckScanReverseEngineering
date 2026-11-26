.class public final Landroidx/camera/camera2/compat/workaround/CloseCameraOnCameraGraphClose;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final closeCameraDeviceOnCameraGraphCloseQuirk:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/CloseCameraOnCameraGraphClose;->closeCameraDeviceOnCameraGraphCloseQuirk:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    return-void
.end method


# virtual methods
.method public final shouldCloseCameraDevice(Z)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/compat/workaround/CloseCameraOnCameraGraphClose;->closeCameraDeviceOnCameraGraphCloseQuirk:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->shouldCloseCameraDevice(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
