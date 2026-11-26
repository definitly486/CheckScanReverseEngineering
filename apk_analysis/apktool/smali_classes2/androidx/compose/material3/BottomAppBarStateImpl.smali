.class final Landroidx/compose/material3/BottomAppBarStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/BottomAppBarState;


# instance fields
.field private _heightOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public getCollapsedFraction()F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffset()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getContentOffset()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getHeightOffset()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getHeightOffsetLimit()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public setContentOffset(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setHeightOffset(F)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/material3/BottomAppBarStateImpl;->getHeightOffsetLimit()F

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lkx6;->d(FFF)F

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public setHeightOffsetLimit(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomAppBarStateImpl;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
