.class public final Landroidx/compose/foundation/layout/FlowLayoutData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private fillCrossAxisFraction:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/layout/FlowLayoutData;FILjava/lang/Object;)Landroidx/compose/foundation/layout/FlowLayoutData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutData;->copy(F)Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    return p0
.end method

.method public final copy(F)Landroidx/compose/foundation/layout/FlowLayoutData;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/layout/FlowLayoutData;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutData;-><init>(F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FlowLayoutData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowLayoutData;

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    iget p1, p1, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getFillCrossAxisFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final setFillCrossAxisFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowLayoutData(fillCrossAxisFraction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
