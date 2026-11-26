.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1"
    f = "RetryingCameraStateOpener.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lug6<",
        "-",
        "Landroidx/camera/camera2/pipe/CameraId;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invokeSuspend$lambda$0(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lug6;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invoke(Lug6;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lug6;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug6<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lug6;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;-><init>(Lug6;)V

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lws6;

    move-result-object v3

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Executor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :goto_0
    new-instance v4, Landroidx/camera/camera2/pipe/compat/a;

    invoke-direct {v4, v3, v1}, Landroidx/camera/camera2/pipe/compat/a;-><init>(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
