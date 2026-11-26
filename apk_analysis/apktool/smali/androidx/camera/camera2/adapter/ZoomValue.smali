.class public final Landroidx/camera/camera2/adapter/ZoomValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ZoomState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;
    }
.end annotation


# instance fields
.field private linearZoom:Ljava/lang/Float;

.field private final maxZoomRatio:F

.field private final minZoomRatio:F

.field private final zoomRatio:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    .line 29
    iput p2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    .line 30
    iput p3, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;FF)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->getValue()F

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroidx/camera/camera2/internal/ZoomMath;->getZoomRatioFromLinearZoom(FFF)F

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(FFF)V

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->linearZoom:Ljava/lang/Float;

    return-void
.end method

.method private final component1()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    return p0
.end method

.method private final component2()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    return p0
.end method

.method private final component3()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    return p0
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/adapter/ZoomValue;FFFILjava/lang/Object;)Landroidx/camera/camera2/adapter/ZoomValue;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/ZoomValue;->copy(FFF)Landroidx/camera/camera2/adapter/ZoomValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(FFF)Landroidx/camera/camera2/adapter/ZoomValue;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/adapter/ZoomValue;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(FFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/ZoomValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/ZoomValue;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    iget v3, p1, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    iget v3, p1, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    iget p1, p1, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLinearZoom()F
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->linearZoom:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    sget-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    iget v2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    invoke-virtual {v0, v1, v2, p0}, Landroidx/camera/camera2/internal/ZoomMath;->getLinearZoomFromZoomRatio(FFF)F

    move-result p0

    return p0
.end method

.method public getMaxZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    return p0
.end method

.method public getMinZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomValue(zoomRatio="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->zoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/ZoomValue;->minZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue;->maxZoomRatio:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
