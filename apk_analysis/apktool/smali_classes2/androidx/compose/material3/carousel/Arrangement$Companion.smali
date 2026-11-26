.class public final Landroidx/compose/material3/carousel/Arrangement$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Arrangement;
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

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Arrangement$Companion;-><init>()V

    return-void
.end method

.method private final calculateLargeSize(FIFII)F
    .locals 0

    int-to-float p0, p2

    int-to-float p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-float/2addr p0, p2

    mul-float/2addr p0, p3

    sub-float/2addr p1, p0

    int-to-float p0, p5

    add-float/2addr p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method private final fit(IFFIFFFIFIF)Landroidx/compose/material3/carousel/Arrangement;
    .locals 8

    move/from16 v4, p8

    move/from16 v5, p10

    add-int v0, v5, v4

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v1, p2, v0

    invoke-static/range {p5 .. p7}, Lkx6;->d(FFF)F

    move-result p2

    int-to-float p3, v5

    mul-float v0, p11, p3

    int-to-float v6, v4

    mul-float v2, p9, v6

    add-float/2addr v2, v0

    int-to-float v0, p4

    mul-float v3, p2, v0

    add-float/2addr v3, v2

    sub-float v2, v1, v3

    const/4 v7, 0x0

    if-lez p4, :cond_0

    cmpl-float v3, v2, v7

    if-lez v3, :cond_0

    div-float/2addr v2, v0

    sub-float v0, p7, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    add-float/2addr p2, v0

    goto :goto_1

    :cond_0
    if-lez p4, :cond_1

    cmpg-float v3, v2, v7

    if-gez v3, :cond_1

    div-float/2addr v2, v0

    sub-float v0, p6, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    if-lez p4, :cond_2

    move v3, p2

    :goto_2
    move-object v0, p0

    move v2, p4

    goto :goto_3

    :cond_2
    move v3, v7

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/carousel/Arrangement$Companion;->calculateLargeSize(FIFII)F

    move-result p0

    move v2, v3

    add-float v3, p0, v2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    if-lez p8, :cond_4

    cmpg-float p2, p0, p11

    if-nez p2, :cond_3

    goto :goto_4

    :cond_3
    sub-float p2, p11, p0

    mul-float/2addr p2, p3

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float p2, p2, v7

    if-lez p2, :cond_5

    div-float p2, v0, v6

    sub-float/2addr v3, p2

    div-float/2addr v0, p3

    add-float/2addr p0, v0

    :cond_4
    :goto_4
    move v6, p0

    move v4, v3

    goto :goto_5

    :cond_5
    div-float p2, v0, v6

    add-float/2addr v3, p2

    div-float/2addr v0, p3

    sub-float/2addr p0, v0

    goto :goto_4

    :goto_5
    new-instance v0, Landroidx/compose/material3/carousel/Arrangement;

    move v1, p1

    move v3, p4

    move/from16 v5, p8

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    return-object v0
.end method


# virtual methods
.method public final findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;
    .locals 22

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    move-object/from16 v14, p10

    array-length v15, v14

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v15, :cond_5

    aget v12, v14, v4

    array-length v5, v1

    move/from16 v6, v16

    :goto_1
    if-ge v6, v5, :cond_4

    aget v10, v1, v6

    array-length v7, v0

    move/from16 v8, v16

    :goto_2
    if-ge v8, v7, :cond_3

    move v9, v6

    aget v6, v0, v8

    move/from16 v11, p7

    move/from16 v13, p9

    move-object v0, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v19, v9

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v13}, Landroidx/compose/material3/carousel/Arrangement$Companion;->fit(IFFIFFFIFIF)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-static {v6, v13}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v2

    invoke-static {v0, v13}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    move-object v2, v0

    goto :goto_4

    :cond_1
    :goto_3
    invoke-static {v6, v13}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    return-object v6

    :cond_2
    move-object v2, v6

    :goto_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v0, p6

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    goto :goto_2

    :cond_3
    move/from16 v13, p9

    move-object v0, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, p6

    goto :goto_1

    :cond_4
    move/from16 v13, p9

    move/from16 v17, v4

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p6

    goto :goto_0

    :cond_5
    return-object v2
.end method
