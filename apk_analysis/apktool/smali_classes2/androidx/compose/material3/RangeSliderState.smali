.class public final Landroidx/compose/material3/RangeSliderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/RangeSliderState$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/RangeSliderState$Companion;


# instance fields
.field private final activeRangeEndState$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final activeRangeStartState$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final endThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final endThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final gestureEndAction:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final isDragging$delegate:Landroidx/compose/runtime/MutableState;

.field private final isRtl$delegate:Landroidx/compose/runtime/MutableState;

.field private final maxPx$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final minPx$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private onValueChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/SliderRange;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private onValueChangeFinished:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final rawOffsetEnd$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final rawOffsetStart$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final startThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final startThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final steps:I

.field private final tickFractions:[F

.field private final totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final valueRange:Lnm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnm1<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/RangeSliderState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/RangeSliderState$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/RangeSliderState;->Companion:Landroidx/compose/material3/RangeSliderState$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/RangeSliderState;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 110
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/RangeSliderState;-><init>(FFILll3;Lnm1;ILjh2;)V

    return-void
.end method

.method public constructor <init>(FFILll3;Lnm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnm1<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/compose/material3/RangeSliderState;->steps:I

    iput-object p4, p0, Landroidx/compose/material3/RangeSliderState;->onValueChangeFinished:Lll3;

    iput-object p5, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeStartState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeEndState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p3}, Landroidx/compose/material3/SliderKt;->access$stepsToTickFractions(I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->startThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->startThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->endThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->endThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p2, 0x0

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetStart$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetEnd$delegate:Landroidx/compose/runtime/MutableFloatState;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p2, p3, p4, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/material3/RangeSliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, p3, p4, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->isRtl$delegate:Landroidx/compose/runtime/MutableState;

    new-instance p2, Lzh;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lzh;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->gestureEndAction:Lnl3;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/RangeSliderState;->maxPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->minPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method public constructor <init>(FFILll3;Lnm1;ILjh2;)V
    .locals 2

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p7, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 108
    new-instance p5, Lmm1;

    invoke-direct {p5, v0, v1}, Lmm1;-><init>(FF)V

    .line 109
    :cond_4
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/RangeSliderState;-><init>(FFILll3;Lnm1;)V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/material3/RangeSliderState;Z)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/RangeSliderState;->gestureEndAction$lambda$0(Landroidx/compose/material3/RangeSliderState;Z)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final gestureEndAction$lambda$0(Landroidx/compose/material3/RangeSliderState;Z)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->onValueChangeFinished:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final getActiveRangeEndState()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeEndState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final getActiveRangeStartState()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeStartState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final getMaxPx()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->maxPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final getMinPx()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->minPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final scaleToOffset(FFF)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {p0}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/material3/SliderKt;->access$scale(FFFFF)F

    move-result p0

    return p0
.end method

.method private final scaleToUserValue-8bqG3aw(ZFFJ)J
    .locals 8

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {p0}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SliderKt;->access$scale-2geJ7wY(ZFFJFF)J

    move-result-wide p0

    return-wide p0
.end method

.method private final setActiveRangeEndState(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeEndState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setActiveRangeStartState(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->activeRangeStartState$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setMaxPx(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->maxPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setMinPx(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->minPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method


# virtual methods
.method public final getActiveRangeEnd()F
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEndState()F

    move-result p0

    return p0
.end method

.method public final getActiveRangeStart()F
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStartState()F

    move-result p0

    return p0
.end method

.method public final getCoercedActiveRangeEndAsFraction$material3()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v1}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/material3/SliderKt;->access$calcFraction(FFF)F

    move-result p0

    return p0
.end method

.method public final getCoercedActiveRangeStartAsFraction$material3()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v1}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/material3/SliderKt;->access$calcFraction(FFF)F

    move-result p0

    return p0
.end method

.method public final getEndSteps$material3()I
    .locals 2

    iget v0, p0, Landroidx/compose/material3/RangeSliderState;->steps:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeStartAsFraction$material3()F

    move-result p0

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getEndThumbHeight$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->endThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getEndThumbWidth$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->endThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getGestureEndAction$material3()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->gestureEndAction:Lnl3;

    return-object p0
.end method

.method public final getOnValueChange$material3()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/material3/SliderRange;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->onValueChange:Lnl3;

    return-object p0
.end method

.method public final getOnValueChangeFinished()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->onValueChangeFinished:Lll3;

    return-object p0
.end method

.method public final getRawOffsetEnd$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetEnd$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getRawOffsetStart$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetStart$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getStartSteps$material3()I
    .locals 2

    iget v0, p0, Landroidx/compose/material3/RangeSliderState;->steps:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeEndAsFraction$material3()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getStartThumbHeight$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->startThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getStartThumbWidth$material3()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->startThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getSteps()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/RangeSliderState;->steps:I

    return p0
.end method

.method public final getTickFractions$material3()[F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    return-object p0
.end method

.method public final getTotalWidth$material3()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getValueRange()Lnm1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnm1<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    return-object p0
.end method

.method public final isDragging$material3()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRtl$material3()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->isRtl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onDrag$material3(ZF)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetStart$material3(F)V

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result p2

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Landroidx/compose/material3/RangeSliderState;->scaleToOffset(FFF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetEnd$material3(F)V

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v1

    invoke-static {v0, v1, p2}, Lkx6;->d(FFF)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v2

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result v0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    move v0, p2

    :cond_0
    invoke-static {v0, p2}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetEnd$material3(F)V

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result p2

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Landroidx/compose/material3/RangeSliderState;->scaleToOffset(FFF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetStart$material3(F)V

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetStart$material3()F

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getRawOffsetEnd$material3()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v1

    invoke-static {v0, p2, v1}, Lkx6;->d(FFF)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v2

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result v0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_2

    move v0, p2

    :cond_2
    invoke-static {p2, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v4

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v5

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/RangeSliderState;->scaleToUserValue-8bqG3aw(ZFFJ)J

    move-result-wide p0

    invoke-virtual {v2}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result p2

    invoke-virtual {v2}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/material3/SliderRange;->equals-impl0(JJ)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v2, Landroidx/compose/material3/RangeSliderState;->onValueChange:Lnl3;

    if-eqz p2, :cond_3

    if-eqz p2, :cond_4

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderRange;->box-impl(J)Landroidx/compose/material3/SliderRange;

    move-result-object p0

    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/material3/SliderRange;->getStart-impl(J)F

    move-result p2

    invoke-virtual {v2, p2}, Landroidx/compose/material3/RangeSliderState;->setActiveRangeStart(F)V

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderRange;->getEndInclusive-impl(J)F

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/compose/material3/RangeSliderState;->setActiveRangeEnd(F)V

    :cond_4
    return-void
.end method

.method public final setActiveRangeEnd(F)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v1}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkx6;->d(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v1}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v2}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/RangeSliderState;->setActiveRangeEndState(F)V

    return-void
.end method

.method public final setActiveRangeStart(F)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkx6;->d(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/RangeSliderState;->tickFractions:[F

    iget-object v1, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v1}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Landroidx/compose/material3/RangeSliderState;->valueRange:Lnm1;

    invoke-interface {v2}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/RangeSliderState;->setActiveRangeStartState(F)V

    return-void
.end method

.method public final setDragging$material3(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setEndThumbHeight$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->endThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setEndThumbWidth$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->endThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setOnValueChange$material3(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/SliderRange;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->onValueChange:Lnl3;

    return-void
.end method

.method public final setOnValueChangeFinished(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/RangeSliderState;->onValueChangeFinished:Lll3;

    return-void
.end method

.method public final setRawOffsetEnd$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetEnd$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setRawOffsetStart$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->rawOffsetStart$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setRtl$material3(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->isRtl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setStartThumbHeight$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->startThumbHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setStartThumbWidth$material3(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->startThumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setTotalWidth$material3(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/RangeSliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public final updateMinMaxPx$material3()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getTotalWidth$material3()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getEndThumbWidth$material3()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getStartThumbWidth$material3()F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->isDragging$material3()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v2

    cmpg-float v2, v2, v1

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v2

    cmpg-float v2, v2, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/material3/RangeSliderState;->setMinPx(F)V

    invoke-direct {p0, v0}, Landroidx/compose/material3/RangeSliderState;->setMaxPx(F)V

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeStart()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/material3/RangeSliderState;->scaleToOffset(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetStart$material3(F)V

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMinPx()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/RangeSliderState;->getMaxPx()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/material3/RangeSliderState;->getActiveRangeEnd()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/material3/RangeSliderState;->scaleToOffset(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/RangeSliderState;->setRawOffsetEnd$material3(F)V

    :cond_1
    return-void
.end method
