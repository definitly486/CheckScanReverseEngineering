.class final Landroidx/compose/animation/core/PreventExhaustiveWhenTransitionState;
.super Landroidx/compose/animation/core/TransitionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/animation/core/TransitionState<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/TransitionState;-><init>(Ljh2;)V

    return-void
.end method


# virtual methods
.method public getCurrentState()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetState()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCurrentState$animation_core(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setTargetState$animation_core(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public transitionConfigured$animation_core(Landroidx/compose/animation/core/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public transitionRemoved$animation_core()V
    .locals 0

    return-void
.end method
