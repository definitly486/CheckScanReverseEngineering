.class public final Lyads/cx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/cx3;->a:F

    iput p2, p0, Lyads/cx3;->b:F

    iput p3, p0, Lyads/cx3;->c:F

    iput p4, p0, Lyads/cx3;->d:F

    iput p5, p0, Lyads/cx3;->e:F

    iput p6, p0, Lyads/cx3;->f:F

    iput p7, p0, Lyads/cx3;->g:F

    iput p8, p0, Lyads/cx3;->h:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/cx3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/cx3;

    iget v1, p0, Lyads/cx3;->a:F

    iget v3, p1, Lyads/cx3;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lyads/cx3;->b:F

    iget v3, p1, Lyads/cx3;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lyads/cx3;->c:F

    iget v3, p1, Lyads/cx3;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lyads/cx3;->d:F

    iget v3, p1, Lyads/cx3;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lyads/cx3;->e:F

    iget v3, p1, Lyads/cx3;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lyads/cx3;->f:F

    iget v3, p1, Lyads/cx3;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lyads/cx3;->g:F

    iget v3, p1, Lyads/cx3;->g:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lyads/cx3;->h:F

    iget p1, p1, Lyads/cx3;->h:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/cx3;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/cx3;->b:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/cx3;->c:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/cx3;->d:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/cx3;->e:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/cx3;->f:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget v2, p0, Lyads/cx3;->g:F

    invoke-static {v0, v2, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget p0, p0, Lyads/cx3;->h:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lyads/cx3;->a:F

    iget v1, p0, Lyads/cx3;->b:F

    iget v2, p0, Lyads/cx3;->c:F

    iget v3, p0, Lyads/cx3;->d:F

    iget v4, p0, Lyads/cx3;->e:F

    iget v5, p0, Lyads/cx3;->f:F

    iget v6, p0, Lyads/cx3;->g:F

    iget p0, p0, Lyads/cx3;->h:F

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Particle(cx="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cy="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", radius="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", vx="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", vy="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", angularVel="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", lifetimeMs="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ageMs="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
