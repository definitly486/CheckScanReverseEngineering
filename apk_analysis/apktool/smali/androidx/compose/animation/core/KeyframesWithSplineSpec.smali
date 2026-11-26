.class public final Landroidx/compose/animation/core/KeyframesWithSplineSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private periodicBias:F


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;F)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;-><init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V

    .line 11
    iput p2, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    return-void
.end method


# virtual methods
.method public final getConfig()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    return-object p0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p0

    return-object p0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getKeyframes$animation_core()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    new-instance v3, Landroidx/collection/MutableIntList;

    invoke-virtual {v1}, Landroidx/collection/IntObjectMap;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v3, v2}, Landroidx/collection/MutableIntList;-><init>(I)V

    new-instance v4, Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/IntObjectMap;->getSize()I

    move-result v2

    invoke-direct {v4, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    iget-object v2, v1, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v5, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v6, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_2

    const/4 v9, 0x0

    :goto_0
    aget-wide v10, v6, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    sub-int v12, v9, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_1

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_0

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget v8, v2, v15

    aget-object v15, v5, v15

    check-cast v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-virtual {v3, v8}, Landroidx/collection/MutableIntList;->add(I)Z

    move/from16 v17, v13

    new-instance v13, Lb36;

    move-object/from16 v18, v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lnl3;

    move-result-object v2

    move-object/from16 v19, v5

    invoke-virtual {v15}, Landroidx/compose/animation/core/KeyframeBaseEntity;->getValue$animation_core()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/compose/animation/core/KeyframeBaseEntity;->getEasing$animation_core()Landroidx/compose/animation/core/Easing;

    move-result-object v5

    invoke-direct {v13, v2, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v8, v13}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v17, v13

    :goto_2
    shr-long v10, v10, v17

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v17

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move v2, v13

    if-ne v12, v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    :goto_3
    if-eq v9, v7, :cond_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    goto :goto_0

    :goto_4
    invoke-virtual {v1, v2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v2, v2}, Landroidx/collection/MutableIntList;->add(II)V

    :cond_4
    iget-object v2, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v2}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDurationMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDurationMillis()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/collection/MutableIntList;->add(I)Z

    :cond_5
    invoke-virtual {v3}, Landroidx/collection/MutableIntList;->sort()V

    new-instance v2, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;

    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDurationMillis()I

    move-result v5

    iget-object v1, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDelayMillis()I

    move-result v6

    iget v7, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->periodicBias:F

    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V

    return-object v2
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object p0

    return-object p0
.end method
