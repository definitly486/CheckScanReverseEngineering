.class public final Landroidx/compose/foundation/layout/VisibleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final visible(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/VisibilityElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/VisibilityElement;-><init>(Z)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
