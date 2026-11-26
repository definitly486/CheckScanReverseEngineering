.class final Landroidx/camera/viewfinder/core/BiasAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/viewfinder/core/impl/Alignment;


# instance fields
.field private final horizontalBias:F

.field private final verticalBias:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    iput p2, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/viewfinder/core/BiasAlignment;FFILjava/lang/Object;)Landroidx/camera/viewfinder/core/BiasAlignment;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/viewfinder/core/BiasAlignment;->copy(FF)Landroidx/camera/viewfinder/core/BiasAlignment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public align-41g9ag8(Landroid/util/SizeF;Landroid/util/SizeF;I)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, v1

    iget p1, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, -0x40800000    # -1.0f

    mul-float/2addr p1, p3

    :goto_0
    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p1, p3

    mul-float/2addr p1, v0

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    add-float/2addr p3, p0

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, Landroidx/camera/viewfinder/core/impl/TransformationsKt;->OffsetF(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    return p0
.end method

.method public final copy(FF)Landroidx/camera/viewfinder/core/BiasAlignment;
    .locals 0

    new-instance p0, Landroidx/camera/viewfinder/core/BiasAlignment;

    invoke-direct {p0, p1, p2}, Landroidx/camera/viewfinder/core/BiasAlignment;-><init>(FF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/viewfinder/core/BiasAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/viewfinder/core/BiasAlignment;

    iget v1, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    iget v3, p1, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    iget p1, p1, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHorizontalBias()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    return p0
.end method

.method public final getVerticalBias()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

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

    iget v1, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->horizontalBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", verticalBias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/viewfinder/core/BiasAlignment;->verticalBias:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
