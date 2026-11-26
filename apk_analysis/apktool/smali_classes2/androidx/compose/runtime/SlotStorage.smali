.class public abstract Landroidx/compose/runtime/SlotStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear(Landroidx/compose/runtime/composer/RememberManager;)V
.end method

.method public abstract collectCalledByInformation()V
.end method

.method public abstract collectSourceInformation()V
.end method

.method public abstract deactivateAll(Landroidx/compose/runtime/composer/RememberManager;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract disposeUnusedMovableContent(Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/MovableContentState;)V
.end method

.method public abstract extractNestedStates(Landroidx/compose/runtime/Applier;Landroidx/collection/ObjectList;)Landroidx/collection/ScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/collection/ObjectList<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;)",
            "Landroidx/collection/ScatterMap<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlots()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z
.end method

.method public abstract inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z
.end method

.method public abstract invalidateAll()V
.end method

.method public abstract invalidateGroupsWithKey(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract ownsRecomposeScope(Landroidx/compose/runtime/RecomposeScopeImpl;)Z
.end method

.method public abstract toDebugString()Ljava/lang/String;
.end method

.method public abstract verifyWellFormed()V
.end method
