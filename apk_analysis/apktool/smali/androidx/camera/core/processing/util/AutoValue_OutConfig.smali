.class final Landroidx/camera/core/processing/util/AutoValue_OutConfig;
.super Landroidx/camera/core/processing/util/OutConfig;
.source "SourceFile"


# instance fields
.field private final getCropRect:Landroid/graphics/Rect;

.field private final getFormat:I

.field private final getRotationDegrees:I

.field private final getSize:Landroid/util/Size;

.field private final getTargets:I

.field private final getUuid:Ljava/util/UUID;

.field private final isMirroring:Z

.field private final shouldRespectInputCropRect:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;IILandroid/graphics/Rect;Landroid/util/Size;IZZ)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/core/processing/util/OutConfig;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    iput p2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    iput p3, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    if-eqz p4, :cond_1

    iput-object p4, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    if-eqz p5, :cond_0

    iput-object p5, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    iput p6, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    iput-boolean p7, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    iput-boolean p8, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    return-void

    :cond_0
    const-string p0, "Null getSize"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null getCropRect"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "Null getUuid"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/util/OutConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/core/processing/util/OutConfig;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getTargets()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->getRotationDegrees()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->isMirroring()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutConfig;->shouldRespectInputCropRect()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    return p0
.end method

.method public getRotationDegrees()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTargets()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    return p0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    if-eqz p0, :cond_1

    move v3, v4

    :cond_1
    xor-int p0, v0, v3

    return p0
.end method

.method public isMirroring()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    return p0
.end method

.method public shouldRespectInputCropRect()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutConfig{getUuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getTargets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getRotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMirroring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRespectInputCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->shouldRespectInputCropRect:Z

    const-string v1, "}"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
