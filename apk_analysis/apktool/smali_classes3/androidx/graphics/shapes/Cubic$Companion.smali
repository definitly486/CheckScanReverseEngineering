.class public final Landroidx/graphics/shapes/Cubic$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/Cubic$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final circularArc(FFFFFF)Landroidx/graphics/shapes/Cubic;
    .locals 16

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v6, p5

    move/from16 v7, p6

    sub-float v2, v0, p1

    sub-float v3, v1, p2

    invoke-static {v2, v3}, Landroidx/graphics/shapes/Utils;->directionVector(FF)J

    move-result-wide v4

    sub-float v8, v6, p1

    sub-float v9, v7, p2

    invoke-static {v8, v9}, Landroidx/graphics/shapes/Utils;->directionVector(FF)J

    move-result-wide v10

    invoke-static {v4, v5}, Landroidx/graphics/shapes/Utils;->rotate90-DnnuFBc(J)J

    move-result-wide v12

    invoke-static {v10, v11}, Landroidx/graphics/shapes/Utils;->rotate90-DnnuFBc(J)J

    move-result-wide v14

    invoke-static {v12, v13, v8, v9}, Landroidx/graphics/shapes/PointKt;->dotProduct-5P9i7ZU(JFF)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {v4, v5, v10, v11}, Landroidx/graphics/shapes/PointKt;->dotProduct-ybeJwSQ(JJ)F

    move-result v4

    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v1, v6, v7}, Landroidx/graphics/shapes/Cubic$Companion;->straightLine(FFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v2, v3}, Landroidx/graphics/shapes/Utils;->distance(FF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v3, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v4, v4

    sub-float v4, v3, v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    sub-float/2addr v9, v4

    mul-float/2addr v9, v2

    div-float/2addr v9, v5

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    mul-float/2addr v9, v3

    invoke-static {v12, v13}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v2

    mul-float/2addr v2, v9

    add-float/2addr v2, v0

    invoke-static {v12, v13}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    mul-float/2addr v3, v9

    add-float/2addr v3, v1

    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v4

    mul-float/2addr v4, v9

    sub-float v4, v6, v4

    invoke-static {v14, v15}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v5

    mul-float/2addr v5, v9

    sub-float v5, v7, v5

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0
.end method

.method public final straightLine(FFFF)Landroidx/graphics/shapes/Cubic;
    .locals 8

    const p0, 0x3eaaaaab

    invoke-static {p1, p3, p0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v2

    invoke-static {p2, p4, p0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v3

    const p0, 0x3f2aaaab

    invoke-static {p1, p3, p0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v4

    invoke-static {p2, p4, p0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v5

    move v0, p1

    move v1, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object p0

    return-object p0
.end method
