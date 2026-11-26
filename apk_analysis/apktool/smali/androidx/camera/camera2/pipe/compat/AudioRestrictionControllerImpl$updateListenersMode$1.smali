.class final Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl$updateListenersMode$1"
    f = "AudioRestrictionController.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->updateListenersMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V
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
.field final synthetic $mode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/AudioRestrictionMode;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;",
            "Landroidx/camera/camera2/pipe/AudioRestrictionMode;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->this$0:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->$mode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
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

    new-instance p1, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->this$0:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->$mode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;-><init>(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/AudioRestrictionMode;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->this$0:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->access$getActiveListeners$p(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;->$mode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
