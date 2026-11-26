.class final Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "Landroidx/compose/foundation/gestures/AnimationData;",
        ">;"
    }
.end annotation


# instance fields
.field private final offsetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->zoomAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->offsetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->rotationAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method


# virtual methods
.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/foundation/gestures/AnimationData;",
            "TV;>;)",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->zoomAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    sget-object v1, Lsc3;->a:Lsc3;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lsc3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->offsetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec;->rotationAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lsc3;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p0

    new-instance v1, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec$vectorize$1;

    invoke-direct {v1, p1, v0, v2, p0}, Landroidx/compose/foundation/gestures/DelegatingAnimationSpec$vectorize$1;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/VectorizedAnimationSpec;)V

    return-object v1
.end method
