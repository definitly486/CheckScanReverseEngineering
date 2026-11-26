.class public final synthetic Lm29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Transition;

.field public final synthetic c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm29;->b:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Lm29;->c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm29;->c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p0, p0, Lm29;->b:Landroidx/compose/animation/core/Transition;

    invoke-static {p0, v0, p1}, Landroidx/compose/animation/core/TransitionKt;->h(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
