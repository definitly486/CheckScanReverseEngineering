.class final synthetic Landroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Landroidx/compose/runtime/LongState;Ljava/lang/Object;Lze4;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/LongState;",
            "Ljava/lang/Object;",
            "Lze4<",
            "*>;)J"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotLongState_androidKt;->createSnapshotMutableLongState(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Landroidx/compose/runtime/MutableLongState;Ljava/lang/Object;Lze4;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableLongState;",
            "Ljava/lang/Object;",
            "Lze4<",
            "*>;J)V"
        }
    .end annotation

    invoke-interface {p0, p3, p4}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method
