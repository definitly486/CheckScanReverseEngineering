.class public final synthetic Landroidx/camera/camera2/pipe/compat/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/hardware/camera2/CameraManager;

.field public final synthetic c:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/c;->b:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/c;->c:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/c;->b:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/c;->c:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1;->g(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;)Lj59;

    move-result-object p0

    return-object p0
.end method
