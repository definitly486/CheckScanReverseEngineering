.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Le02;)Ljava/lang/Object;
    .locals 1
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

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lxg5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvg5;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lxg5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvg5;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraPriorities$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lvg5;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;

    invoke-interface {p0, p1, p2}, Lvg5;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p2, :cond_4

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
