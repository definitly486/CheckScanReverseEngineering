.class final Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$3"
    f = "PipeCameraPresenceSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Ljava/util/List<",
        "+",
        "Landroidx/camera/core/CameraIdentifier;",
        ">;>;",
        "Ljava/lang/Throwable;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lid3;Ljava/lang/Throwable;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-direct {p1, p0, p3}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;-><init>(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Le02;)V

    iput-object p2, p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->L$0:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->invoke(Lid3;Ljava/lang/Throwable;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error in camera ID flow collection."

    const-string v1, "PipePresenceSrc"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {v0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$isMonitoring$p(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$3;->this$0:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->access$updateError(Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Ignoring error because monitoring is stopped."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lvc3;->a(I)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
