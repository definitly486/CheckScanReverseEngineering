.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    const/4 v0, 0x0

    const-string v1, "Check failed."

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of p2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
