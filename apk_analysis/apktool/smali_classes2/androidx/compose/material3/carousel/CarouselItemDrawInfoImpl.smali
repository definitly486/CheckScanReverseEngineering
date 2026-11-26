.class public final Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/carousel/CarouselItemDrawInfo;


# static fields
.field public static final $stable:I


# instance fields
.field private final maskRectState$delegate:Landroidx/compose/runtime/MutableState;

.field private final maxSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final minSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final sizeState$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->sizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->minSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maxSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maskRectState$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public getMaskRect()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->getMaskRectState()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getMaskRectState()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maskRectState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public getMaxSize()F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->getMaxSizeState()F

    move-result p0

    return p0
.end method

.method public final getMaxSizeState()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maxSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getMinSize()F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->getMinSizeState()F

    move-result p0

    return p0
.end method

.method public final getMinSizeState()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->minSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getSize()F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->getSizeState()F

    move-result p0

    return p0
.end method

.method public final getSizeState()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->sizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final setMaskRectState(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maskRectState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaxSizeState(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->maxSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setMinSizeState(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->minSizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setSizeState(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;->sizeState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
