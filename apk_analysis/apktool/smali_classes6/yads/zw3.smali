.class public final Lyads/zw3;
.super Lyads/bx3;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:Z

.field public final d:Z

.field public final e:F


# direct methods
.method public constructor <init>(IFZZF)V
    .locals 0

    invoke-direct {p0}, Lyads/bx3;-><init>()V

    iput p1, p0, Lyads/zw3;->a:I

    iput p2, p0, Lyads/zw3;->b:F

    iput-boolean p3, p0, Lyads/zw3;->c:Z

    iput-boolean p4, p0, Lyads/zw3;->d:Z

    iput p5, p0, Lyads/zw3;->e:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/zw3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/zw3;

    iget v1, p0, Lyads/zw3;->a:I

    iget v3, p1, Lyads/zw3;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lyads/zw3;->b:F

    iget v3, p1, Lyads/zw3;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lyads/zw3;->c:Z

    iget-boolean v3, p1, Lyads/zw3;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lyads/zw3;->d:Z

    iget-boolean v3, p1, Lyads/zw3;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lyads/zw3;->e:F

    iget p1, p1, Lyads/zw3;->e:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/zw3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/zw3;->b:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget-boolean v2, p0, Lyads/zw3;->c:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lyads/zw3;->d:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget p0, p0, Lyads/zw3;->e:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lyads/zw3;->a:I

    iget v1, p0, Lyads/zw3;->b:F

    iget-boolean v2, p0, Lyads/zw3;->c:Z

    iget-boolean v3, p0, Lyads/zw3;->d:Z

    iget p0, p0, Lyads/zw3;->e:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Particles(color="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", density="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isAnimated="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEnabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", particleSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v4, v0, p0}, Lxy;->e(Ljava/lang/StringBuilder;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
