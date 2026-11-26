.class public final Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $transitionState$inlined:Landroidx/compose/animation/core/TransitionState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;->$transitionState$inlined:Landroidx/compose/animation/core/TransitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;->$transitionState$inlined:Landroidx/compose/animation/core/TransitionState;

    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->setSnapshotStateObserver$animation_core(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    return-void
.end method
