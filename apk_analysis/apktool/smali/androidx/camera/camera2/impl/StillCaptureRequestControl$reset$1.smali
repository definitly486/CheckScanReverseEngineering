.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1"
    f = "StillCaptureRequestControl.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lyg5;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;->label:I

    invoke-interface {p1, v3, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move-object v0, v1

    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getResult()Lxp1;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v2, "Capture request is cancelled due to a reset"

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, v3}, Lyg5;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_1
    invoke-interface {p0, v3}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
