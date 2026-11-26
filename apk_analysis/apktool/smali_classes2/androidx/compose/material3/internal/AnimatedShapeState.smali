.class public final Landroidx/compose/material3/internal/AnimatedShapeState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private bottomEnd:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private bottomStart:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;

.field private final shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private size:J

.field private final spec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private topEnd:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private topStart:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/shape/RoundedCornerShape;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public static final synthetic access$getBottomEnd$p(Landroidx/compose/material3/internal/AnimatedShapeState;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getBottomStart$p(Landroidx/compose/material3/internal/AnimatedShapeState;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getTopEnd$p(Landroidx/compose/material3/internal/AnimatedShapeState;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getTopStart$p(Landroidx/compose/material3/internal/AnimatedShapeState;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static synthetic bottomEnd-TmRCtEA$default(Landroidx/compose/material3/internal/AnimatedShapeState;JLandroidx/compose/ui/unit/Density;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method

.method public static synthetic bottomStart-TmRCtEA$default(Landroidx/compose/material3/internal/AnimatedShapeState;JLandroidx/compose/ui/unit/Density;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method

.method public static synthetic topEnd-TmRCtEA$default(Landroidx/compose/material3/internal/AnimatedShapeState;JLandroidx/compose/ui/unit/Density;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method

.method public static synthetic topStart-TmRCtEA$default(Landroidx/compose/material3/internal/AnimatedShapeState;JLandroidx/compose/ui/unit/Density;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final animateToShape(Landroidx/compose/foundation/shape/CornerBasedShape;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/shape/CornerBasedShape;",
            "Le02<",
            "-",
            "Lmb4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Le02;)V

    invoke-static {v0, p2}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bottomEnd-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomEnd:Landroidx/compose/animation/core/Animatable;

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final bottomStart-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0}, Landroidx/compose/foundation/shape/CornerBasedShape;->getBottomStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->bottomStart:Landroidx/compose/animation/core/Animatable;

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getShape()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method

.method public final getSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    return-wide v0
.end method

.method public final getSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public final setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setSize-uvyYCjk(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    return-void
.end method

.method public final topEnd-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopEnd()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topEnd:Landroidx/compose/animation/core/Animatable;

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final topStart-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0}, Landroidx/compose/foundation/shape/CornerBasedShape;->getTopStart()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
