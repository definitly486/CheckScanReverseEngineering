.class public final Landroidx/savedstate/SavedStateKt;
.super Ljava/lang/Object;


# direct methods
.method public static final read(Landroid/os/Bundle;Lnl3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Lnl3<",
            "-",
            "Landroidx/savedstate/SavedStateReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateKt__SavedStateKt;->read(Landroid/os/Bundle;Lnl3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final savedState(Landroid/os/Bundle;Lnl3;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lnl3<",
            "-",
            "Landroidx/savedstate/SavedStateWriter;",
            "Lj59;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateKt__SavedState_androidKt;->savedState(Landroid/os/Bundle;Lnl3;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final savedState(Ljava/util/Map;Lnl3;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/savedstate/SavedStateWriter;",
            "Lj59;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateKt__SavedState_androidKt;->savedState(Ljava/util/Map;Lnl3;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic savedState$default(Landroid/os/Bundle;Lnl3;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/savedstate/SavedStateKt__SavedState_androidKt;->savedState$default(Landroid/os/Bundle;Lnl3;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic savedState$default(Ljava/util/Map;Lnl3;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3}, Landroidx/savedstate/SavedStateKt__SavedState_androidKt;->savedState$default(Ljava/util/Map;Lnl3;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final write(Landroid/os/Bundle;Lnl3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Lnl3<",
            "-",
            "Landroidx/savedstate/SavedStateWriter;",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateKt__SavedStateKt;->write(Landroid/os/Bundle;Lnl3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
