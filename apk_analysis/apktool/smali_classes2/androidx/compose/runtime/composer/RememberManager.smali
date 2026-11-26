.class public interface abstract Landroidx/compose/runtime/composer/RememberManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
.end method

.method public abstract endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
.end method

.method public abstract forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V
.end method

.method public abstract releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
.end method

.method public abstract rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
.end method

.method public abstract remembering(Landroidx/compose/runtime/RememberObserverHolder;)V
.end method

.method public abstract sideEffect(Lll3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
.end method
