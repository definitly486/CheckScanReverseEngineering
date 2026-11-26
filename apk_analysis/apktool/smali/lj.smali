.class public final synthetic Llj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->a(Landroidx/compose/foundation/lazy/layout/PriorityTask;Landroidx/compose/foundation/lazy/layout/PriorityTask;)I

    move-result p0

    return p0
.end method
