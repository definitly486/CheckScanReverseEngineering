.class public interface abstract Landroidx/compose/runtime/tooling/CompositionData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getCompositionGroups()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
