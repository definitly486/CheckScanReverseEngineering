.class public final Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1"
    f = "LowLightBoostControl.kt"
    l = {
        0xc9
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lmk2;
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
.field final synthetic $cancelPreviousTask$inlined:Z

.field final synthetic $lowLightBoost$inlined:Z

.field final synthetic $signal$inlined:Lxp1;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;


# direct methods
.method public constructor <init>(Le02;Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;ZZ)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    iput-boolean p4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    iput-boolean p5, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$cancelPreviousTask$inlined:Z

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;

    iget-object v2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    iget-boolean v4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    iget-boolean v5, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$cancelPreviousTask$inlined:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;ZZ)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getCheckFrameRateJob$camera_camera2()Lmk2;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->label:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    invoke-static {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Low Light Boost is disabled when expected frame rate range exceeds 30."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$createFailureResult(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;Ljava/lang/Exception;)Lxp1;

    goto/16 :goto_3

    :cond_4
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    invoke-static {v0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$setLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Z)V

    iget-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V

    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V

    :cond_6
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$cancelPreviousTask$inlined:Z

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    if-eqz p1, :cond_7

    invoke-static {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$stopRunningTaskInternal(Landroidx/camera/camera2/impl/LowLightBoostControl;)V

    goto :goto_2

    :cond_7
    invoke-static {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Lxp1;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    invoke-static {v0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    :cond_8
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$set_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$getState3AControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/State3AControl;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$lowLightBoost$inlined:Z

    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/Integer;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    :cond_9
    invoke-virtual {p1, v2}, Landroidx/camera/camera2/impl/State3AControl;->setPreferredAeModeAsync(Ljava/lang/Integer;)Lmk2;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    invoke-static {p1, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    new-instance v0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-direct {v0, p1, p0}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;-><init>(Lxp1;Landroidx/camera/camera2/impl/LowLightBoostControl;)V

    invoke-interface {p1, v0}, Lmb4;->g(Lnl3;)Lhp2;

    goto :goto_3

    :cond_a
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1;->$signal$inlined:Lxp1;

    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$createFailureResult(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;Ljava/lang/Exception;)Lxp1;

    sget-object p0, Lj59;->a:Lj59;

    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
