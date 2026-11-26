.class public abstract Landroidx/compose/runtime/InternalComposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changesApplied$runtime()V
.end method

.method public abstract composeContent--ZbOJvo$runtime(Landroidx/collection/MutableScatterMap;Lbm3;Landroidx/compose/runtime/ShouldPauseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deactivate$runtime()V
.end method

.method public abstract dispose$runtime()V
.end method

.method public abstract endReuseFromRoot$runtime()V
.end method

.method public abstract forceRecomposeScopes$runtime()Z
.end method

.method public abstract getAreChildrenComposing$runtime()Z
.end method

.method public abstract getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;
.end method

.method public abstract getDeferredChanges$runtime()Landroidx/compose/runtime/Changes;
.end method

.method public abstract getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
.end method

.method public abstract getHasPendingChanges$runtime()Z
.end method

.method public abstract getSourceMarkersEnabled$runtime()Z
.end method

.method public abstract isComposing$runtime()Z
.end method

.method public abstract parentKey$runtime()I
.end method

.method public abstract parentStackTrace$runtime()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prepareCompose$runtime(Lll3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recompose-aFTiNEg$runtime(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/ShouldPauseCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract stackTraceForValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
.end method

.method public abstract stacksSize$runtime()I
.end method

.method public abstract startReuseFromRoot$runtime()V
.end method

.method public abstract tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
.end method

.method public abstract updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyConsistent$runtime()V
.end method
