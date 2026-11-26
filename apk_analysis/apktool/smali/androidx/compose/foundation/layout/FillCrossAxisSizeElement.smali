.class public final Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final fraction:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;

    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->create()Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;->getFraction()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final getFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 2

    const-string v0, "fraction"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;)V
    .locals 0

    .line 6
    iget p0, p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->fraction:F

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;->setFraction(F)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;->update(Landroidx/compose/foundation/layout/FillCrossAxisSizeNode;)V

    return-void
.end method
