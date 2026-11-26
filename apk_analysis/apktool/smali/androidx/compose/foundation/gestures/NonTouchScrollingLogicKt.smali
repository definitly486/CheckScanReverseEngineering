.class public final Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final busyReceive(Lx81;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx81<",
            "TT;>;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;-><init>(Lx81;Le02;)V

    invoke-static {v0, p1}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final untilNull(Lll3;)Lzo7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+TE;>;)",
            "Lzo7<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;-><init>(Lll3;Le02;)V

    new-instance p0, Lcp7;

    invoke-direct {p0, v0}, Lcp7;-><init>(Lbm3;)V

    return-object p0
.end method
