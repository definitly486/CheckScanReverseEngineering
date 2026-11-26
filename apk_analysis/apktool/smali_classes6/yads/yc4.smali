.class public final Lyads/yc4;
.super Lyads/ab2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zo1;

.field public final b:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/zo1;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Lyads/ab2;-><init>()V

    iput-object p1, p0, Lyads/yc4;->a:Lyads/zo1;

    iput-object p2, p0, Lyads/yc4;->b:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILyads/o92;Lyads/h92;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    :goto_0
    float-to-int v5, v5

    invoke-static/range {p2 .. p3}, Lyads/ab2;->a(Landroid/text/Layout;I)I

    move-result v6

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    if-nez p3, :cond_1

    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v8

    sub-int/2addr v7, v8

    :cond_1
    new-instance v8, Lyads/rn;

    iget-object v9, v0, Lyads/yc4;->a:Lyads/zo1;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget-object v13, v0, Lyads/yc4;->b:Lyads/fs2;

    move-object/from16 v12, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v8 .. v13}, Lyads/rn;-><init>(Landroid/util/DisplayMetrics;Lyads/o92;Lyads/h92;Landroid/graphics/Canvas;Lyads/fs2;)V

    move/from16 v0, p5

    int-to-float v10, v0

    int-to-float v11, v7

    int-to-float v12, v5

    int-to-float v13, v6

    const/16 v0, 0x8

    new-array v9, v0, [F

    iget-object v5, v8, Lyads/rn;->g:[F

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v5, :cond_2

    aget v21, v5, v18

    aput v21, v9, v18

    aget v21, v5, v19

    aput v21, v9, v19

    aput v20, v9, v17

    aput v20, v9, v16

    aput v20, v9, v15

    aput v20, v9, v14

    aget v21, v5, v7

    aput v21, v9, v7

    aget v5, v5, v6

    aput v5, v9, v6

    :cond_2
    invoke-virtual/range {v8 .. v13}, Lyads/rn;->a([FFFFF)V

    add-int/lit8 v5, p3, 0x1

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    if-nez v5, :cond_3

    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v10

    sub-int/2addr v9, v10

    :cond_3
    invoke-static {v1, v5}, Lyads/ab2;->a(Landroid/text/Layout;I)I

    move-result v10

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    int-to-float v9, v9

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    int-to-float v13, v10

    move v10, v11

    move v11, v9

    new-array v9, v0, [F

    invoke-virtual/range {v8 .. v13}, Lyads/rn;->a([FFFFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    :goto_2
    float-to-int v3, v3

    invoke-static {v1, v2}, Lyads/ab2;->a(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    sub-int/2addr v5, v1

    :cond_6
    int-to-float v1, v3

    int-to-float v2, v5

    move/from16 v3, p6

    int-to-float v3, v3

    int-to-float v4, v4

    new-array v0, v0, [F

    iget-object v5, v8, Lyads/rn;->g:[F

    if-eqz v5, :cond_7

    aput v20, v0, v18

    aput v20, v0, v19

    aget v9, v5, v17

    aput v9, v0, v17

    aget v9, v5, v16

    aput v9, v0, v16

    aget v9, v5, v15

    aput v9, v0, v15

    aget v5, v5, v14

    aput v5, v0, v14

    aput v20, v0, v7

    aput v20, v0, v6

    :cond_7
    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p0, v8

    invoke-virtual/range {p0 .. p5}, Lyads/rn;->a([FFFFF)V

    return-void
.end method
