.class public final Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/ZoomValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearZoom"
.end annotation


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;FILjava/lang/Object;)Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->copy(F)Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    return p0
.end method

.method public final copy(F)Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;-><init>(F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    iget p1, p1, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinearZoom(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/adapter/ZoomValue$LinearZoom;->value:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
