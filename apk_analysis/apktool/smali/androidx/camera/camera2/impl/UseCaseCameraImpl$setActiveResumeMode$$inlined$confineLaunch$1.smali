.class public final Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1"
    f = "UseCaseCamera.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraImpl;->setActiveResumeMode(Z)V
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
.field final synthetic $enabled$inlined:Z

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;


# direct methods
.method public constructor <init>(Le02;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->$enabled$inlined:Z

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->$enabled$inlined:Z

    invoke-direct {p1, p2, v0, p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getClosed$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Lht;

    move-result-object p1

    invoke-virtual {p1}, Lht;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UseCaseCamera is closed before setActiveResumeMode, skipping setup."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1;->$enabled$inlined:Z

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->setForeground(Z)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
