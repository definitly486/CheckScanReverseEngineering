.class public final synthetic Landroidx/camera/camera2/pipe/compat/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

.field public final synthetic c:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/b;->b:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/b;->c:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/b;->b:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/b;->c:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->g(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)Lj59;

    move-result-object p0

    return-object p0
.end method
