.class final Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationCriteria"
.end annotation


# instance fields
.field private final checkBack:Z

.field private final checkFront:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    iput-boolean p2, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;ZZILjava/lang/Object;)Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->copy(ZZ)Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    return p0
.end method

.method public final copy(ZZ)Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
    .locals 0

    new-instance p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;-><init>(ZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    iget-boolean v3, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    iget-boolean p1, p1, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCheckBack()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    return p0
.end method

.method public final getCheckFront()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidationCriteria(checkBack="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", checkFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->checkFront:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
