.class public final Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateStickingItemOffset(Ljava/util/List;IIIIIII)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
            ">;IIIIIII)I"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p6, 0x0

    :goto_0
    if-ge p6, p0, :cond_1

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    move-object p8, p7

    check-cast p8, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {p8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result p8

    if-eq p8, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    const/4 p7, 0x0

    :goto_1
    check-cast p7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    const/high16 p0, -0x80000000

    if-eqz p7, :cond_2

    invoke-static {p7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->access$getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, p0

    :goto_2
    if-ne p4, p0, :cond_3

    neg-int p2, p5

    goto :goto_3

    :cond_3
    neg-int p2, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_3
    if-eq p1, p0, :cond_4

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_4
    return p2
.end method

.method public getStickingIndices(IILandroidx/collection/IntList;)Landroidx/collection/IntList;
    .locals 3

    sub-int/2addr p2, p1

    if-ltz p2, :cond_3

    iget p0, p3, Landroidx/collection/IntList;->_size:I

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2, p0}, Lkx6;->n(II)Ly74;

    move-result-object p0

    iget p2, p0, Lw74;->b:I

    iget p0, p0, Lw74;->c:I

    const/4 v0, -0x1

    move v1, v0

    if-gt p2, p0, :cond_1

    :goto_0
    invoke-virtual {p3, p2}, Landroidx/collection/IntList;->get(I)I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-virtual {p3, p2}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    if-eq p2, p0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    invoke-static {}, Landroidx/collection/IntListKt;->emptyIntList()Landroidx/collection/IntList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1}, Landroidx/collection/IntListKt;->intListOf(I)Landroidx/collection/IntList;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {}, Landroidx/collection/IntListKt;->emptyIntList()Landroidx/collection/IntList;

    move-result-object p0

    return-object p0
.end method
