.class public final Landroidx/compose/material3/carousel/Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/Strategy$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

.field private static final Empty:Landroidx/compose/material3/carousel/Strategy;


# instance fields
.field private final afterContentPadding:F

.field private final availableSpace:F

.field private final beforeContentPadding:F

.field private final defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

.field private final endKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final endShiftDistance:F

.field private final endShiftPoints:Landroidx/collection/FloatList;

.field private final isValid:Z

.field private final itemSpacing:F

.field private lastStartAndEndKeylineListSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final startKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final startShiftDistance:F

.field private final startShiftPoints:Landroidx/collection/FloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/material3/carousel/Strategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/carousel/Strategy$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/carousel/Strategy;->Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/carousel/Strategy;->$stable:I

    new-instance v1, Landroidx/compose/material3/carousel/Strategy;

    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v3, Lkx2;->b:Lkx2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V

    sput-object v1, Landroidx/compose/material3/carousel/Strategy;->Empty:Landroidx/compose/material3/carousel/Strategy;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/carousel/KeylineList;FFFF)V
    .locals 8

    .line 67
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;FFF)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-static {p1, p2, p3, p5}, Landroidx/compose/material3/carousel/StrategyKt;->access$getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;FFF)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 69
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;FFFF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    iput-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    iput p4, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    iput p5, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    iput p6, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    iput p7, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    invoke-static {p2, p6}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStartShiftDistance(Ljava/util/List;F)F

    move-result p5

    iput p5, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    invoke-static {p3, p7}, Landroidx/compose/material3/carousel/StrategyKt;->access$getEndShiftDistance(Ljava/util/List;F)F

    move-result p6

    iput p6, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    const/4 p7, 0x1

    invoke-static {p5, p2, p7}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    const/4 p2, 0x0

    invoke-static {p6, p3, p2}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    cmpg-float p3, p4, p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result p3

    cmpg-float p1, p3, p1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    move p7, p2

    :cond_2
    iput-boolean p7, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Landroidx/compose/material3/carousel/Strategy;
    .locals 1

    sget-object v0, Landroidx/compose/material3/carousel/Strategy;->Empty:Landroidx/compose/material3/carousel/Strategy;

    return-object v0
.end method

.method public static synthetic getKeylineListForScrollOffset$material3$default(Landroidx/compose/material3/carousel/Strategy;FFZILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy;->getKeylineListForScrollOffset$material3(FFZ)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/carousel/Strategy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v1, :cond_2

    move-object v3, p1

    check-cast v3, Landroidx/compose/material3/carousel/Strategy;

    iget-boolean v3, v3, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Landroidx/compose/material3/carousel/Strategy;

    iget-boolean v3, p1, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v3

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    iget-object v3, p1, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    iget-object v3, p1, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    iget-object p1, p1, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public final getAfterContentPadding()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    return p0
.end method

.method public final getAvailableSpace()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    return p0
.end method

.method public final getBeforeContentPadding()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    return p0
.end method

.method public final getDefaultKeylines()Landroidx/compose/material3/carousel/KeylineList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    return-object p0
.end method

.method public final getEndKeylineSteps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    return-object p0
.end method

.method public final getItemMainAxisSize()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result p0

    return p0
.end method

.method public final getItemSpacing()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    return p0
.end method

.method public final getKeylineListForScrollOffset$material3(FFZ)Landroidx/compose/material3/carousel/KeylineList;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    sub-float v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v3, v1, p1

    if-gtz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    return-object p0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v0, v1, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v1

    iget-object v4, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    cmpl-float v6, p1, v2

    if-lez v6, :cond_2

    invoke-static {v0, v3, v2, p2, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v1

    iget-object v4, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p1, v2, p1

    if-gez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->lastStartAndEndKeylineListSteps:Ljava/util/List;

    if-nez p1, :cond_1

    new-array p1, p2, [Landroidx/compose/material3/carousel/KeylineList;

    iget-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    invoke-static {p2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    invoke-static {p2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->lastStartAndEndKeylineListSteps:Ljava/util/List;

    :cond_1
    move-object v5, p1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, v4, v1}, Landroidx/compose/material3/carousel/StrategyKt;->access$getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/ShiftPointRange;

    move-result-object p0

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getSteppedInterpolation()F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getFromStepIndex()I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getToStepIndex()I

    move-result p0

    :goto_0
    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/carousel/KeylineList;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getFromStepIndex()I

    move-result p1

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getToStepIndex()I

    move-result p2

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/ShiftPointRange;->getSteppedInterpolation()F

    move-result p0

    invoke-static {p1, p2, p0}, Landroidx/compose/material3/carousel/KeylineListKt;->lerp(Landroidx/compose/material3/carousel/KeylineList;Landroidx/compose/material3/carousel/KeylineList;F)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public final getStartKeylineSteps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    invoke-static {v0, v2, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    invoke-virtual {v2}, Landroidx/collection/FloatList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    invoke-virtual {v0}, Landroidx/collection/FloatList;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/KeylineList;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isValid()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    return p0
.end method
