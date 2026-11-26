.class public interface abstract Landroidx/compose/foundation/lazy/layout/IntervalList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic forEach$default(Landroidx/compose/foundation/lazy/layout/IntervalList;IILnl3;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/IntervalList;->forEach(IILnl3;)V

    return-void

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: forEach"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract forEach(IILnl3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "+TT;>;",
            "Lj59;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method
