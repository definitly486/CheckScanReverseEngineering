.class public final Landroidx/compose/animation/core/AnimationVector1D;
.super Landroidx/compose/animation/core/AnimationVector;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final size:I

.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector;-><init>(Ljh2;)V

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/animation/core/AnimationVector1D;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    iget p1, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get$animation_core(I)F
    .locals 0

    if-nez p1, :cond_0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSize$animation_core()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->size:I

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public newVector$animation_core()Landroidx/compose/animation/core/AnimationVector1D;
    .locals 1

    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    return-object p0
.end method

.method public bridge synthetic newVector$animation_core()Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector1D;->newVector$animation_core()Landroidx/compose/animation/core/AnimationVector1D;

    move-result-object p0

    return-object p0
.end method

.method public reset$animation_core()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method

.method public set$animation_core(IF)V
    .locals 0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    :cond_0
    return-void
.end method

.method public final setValue$animation_core(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationVector1D: value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
