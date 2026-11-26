.class public final Landroidx/compose/ui/BiasAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Alignment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/BiasAlignment$Horizontal;,
        Landroidx/compose/ui/BiasAlignment$Vertical;
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final horizontalBias:F

.field private final verticalBias:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    iput p2, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/BiasAlignment;FFILjava/lang/Object;)Landroidx/compose/ui/BiasAlignment;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/BiasAlignment;->copy(FF)Landroidx/compose/ui/BiasAlignment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p3, v0

    long-to-int v1, v1

    shr-long v2, p1, v0

    long-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const-wide v3, 0xffffffffL

    and-long/2addr p3, v3

    long-to-int p3, p3

    and-long/2addr p1, v3

    long-to-int p1, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v2

    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget p3, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p3, p2

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p3, p2

    mul-float/2addr p3, v1

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    add-float/2addr p2, p0

    mul-float/2addr p2, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p2, p0

    shl-long/2addr p2, v0

    int-to-long p0, p1

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    return p0
.end method

.method public final copy(FF)Landroidx/compose/ui/BiasAlignment;
    .locals 0

    new-instance p0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/BiasAlignment;

    iget v1, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    iget v3, p1, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    iget p1, p1, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHorizontalBias()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    return p0
.end method

.method public final getVerticalBias()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BiasAlignment(horizontalBias="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/BiasAlignment;->horizontalBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", verticalBias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/BiasAlignment;->verticalBias:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
