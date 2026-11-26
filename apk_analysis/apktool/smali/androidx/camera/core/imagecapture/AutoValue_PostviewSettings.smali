.class final Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;
.super Landroidx/camera/core/imagecapture/PostviewSettings;
.source "SourceFile"


# instance fields
.field private final inputFormat:I

.field private final resolution:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/PostviewSettings;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->resolution:Landroid/util/Size;

    iput p2, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->inputFormat:I

    return-void

    :cond_0
    const-string p0, "Null resolution"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/PostviewSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/core/imagecapture/PostviewSettings;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->resolution:Landroid/util/Size;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/PostviewSettings;->getResolution()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->inputFormat:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/PostviewSettings;->getInputFormat()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getInputFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->inputFormat:I

    return p0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->resolution:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->resolution:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->inputFormat:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostviewSettings{resolution="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->resolution:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->inputFormat:I

    const-string v1, "}"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
