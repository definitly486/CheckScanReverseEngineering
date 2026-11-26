.class public final Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_createTransitionAnimation$inlined:Landroidx/compose/animation/core/Transition;

.field final synthetic $transitionAnimation$inlined:Landroidx/compose/animation/core/Transition$TransitionAnimationState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;->$this_createTransitionAnimation$inlined:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;->$transitionAnimation$inlined:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;->$this_createTransitionAnimation$inlined:Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;->$transitionAnimation$inlined:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/Transition;->removeAnimation$animation_core(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    return-void
.end method
