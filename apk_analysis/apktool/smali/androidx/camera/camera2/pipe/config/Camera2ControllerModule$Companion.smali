.class public final Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/Camera2ControllerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCameraStatusMonitor(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Lmb4;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
    .locals 6
    .param p4    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param
    .annotation runtime Landroidx/camera/camera2/pipe/config/Camera2ControllerScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Lmb4;",
            ")",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lmb4;Ljh2;)V

    return-object v0
.end method

.method public final provideCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;
    .locals 1
    .param p2    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param
    .annotation runtime Landroidx/camera/camera2/pipe/config/Camera2ControllerScope;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljd8;

    invoke-direct {p0, p2}, Lnb4;-><init>(Lmb4;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object p1

    new-instance p2, Lw22;

    const-string v0, "CXCP-Camera2Controller"

    invoke-direct {p2, v0}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    return-object p0
.end method
