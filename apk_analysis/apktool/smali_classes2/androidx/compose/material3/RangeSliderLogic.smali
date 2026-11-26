.class final Landroidx/compose/material3/RangeSliderLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final state:Landroidx/compose/material3/RangeSliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderLogic;->state:Landroidx/compose/material3/RangeSliderState;

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Landroidx/compose/material3/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method


# virtual methods
.method public final activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public final captureThumb(ZFLandroidx/compose/foundation/interaction/Interaction;Ly22;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderLogic;->state:Landroidx/compose/material3/RangeSliderState;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result v1

    :goto_0
    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/material3/RangeSliderState;->onDrag$material3(ZF)V

    new-instance p2, Landroidx/compose/material3/RangeSliderLogic$captureThumb$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Landroidx/compose/material3/RangeSliderLogic$captureThumb$1;-><init>(Landroidx/compose/material3/RangeSliderLogic;ZLandroidx/compose/foundation/interaction/Interaction;Le02;)V

    const/4 p0, 0x3

    invoke-static {p4, v0, v0, p2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final compareOffsets(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderLogic;->state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final getEndInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public final getStartInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public final getState()Landroidx/compose/material3/RangeSliderState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderLogic;->state:Landroidx/compose/material3/RangeSliderState;

    return-object p0
.end method
