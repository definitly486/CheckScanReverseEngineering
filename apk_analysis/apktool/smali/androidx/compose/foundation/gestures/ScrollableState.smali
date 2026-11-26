.class public interface abstract Landroidx/compose/foundation/gestures/ScrollableState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ScrollableState$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$getCanScrollBackward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getCanScrollForward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getLastScrolledBackward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->getLastScrolledBackward()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getLastScrolledForward$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Z
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->getLastScrolledForward()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$getScrollIndicatorState$jd(Landroidx/compose/foundation/gestures/ScrollableState;)Landroidx/compose/foundation/ScrollIndicatorState;
    .locals 0

    invoke-super {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->getScrollIndicatorState()Landroidx/compose/foundation/ScrollIndicatorState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: scroll"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract dispatchRawDelta(F)F
.end method

.method public getCanScrollBackward()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCanScrollForward()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLastScrolledBackward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLastScrolledForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScrollIndicatorState()Landroidx/compose/foundation/ScrollIndicatorState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isScrollInProgress()Z
.end method

.method public abstract scroll(Landroidx/compose/foundation/MutatePriority;Lbm3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lbm3<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
