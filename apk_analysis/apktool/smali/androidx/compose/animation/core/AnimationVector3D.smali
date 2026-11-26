.class public final Landroidx/compose/animation/core/AnimationVector3D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final size:I

.field private v1:F

.field private v2:F

.field private v3:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector;-><init>(Ljh2;)V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    iput p3, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    const/4 p1, 0x3

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector3D;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/AnimationVector3D;

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get$animation_core(I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return p0

    :cond_1
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    return p0

    :cond_2
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    return p0
.end method

.method public getSize$animation_core()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->size:I

    return p0
.end method

.method public final getV1()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    return p0
.end method

.method public final getV2()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    return p0
.end method

.method public final getV3()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public newVector$animation_core()Landroidx/compose/animation/core/AnimationVector3D;
    .locals 1

    new-instance p0, Landroidx/compose/animation/core/AnimationVector3D;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroidx/compose/animation/core/AnimationVector3D;-><init>(FFF)V

    return-object p0
.end method

.method public bridge synthetic newVector$animation_core()Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector3D;->newVector$animation_core()Landroidx/compose/animation/core/AnimationVector3D;

    move-result-object p0

    return-object p0
.end method

.method public reset$animation_core()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return-void
.end method

.method public set$animation_core(IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return-void

    :cond_1
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    return-void

    :cond_2
    iput p2, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    return-void
.end method

.method public final setV1$animation_core(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    return-void
.end method

.method public final setV2$animation_core(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    return-void
.end method

.method public final setV3$animation_core(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector3D: v1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/AnimationVector3D;->v2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector3D;->v3:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
