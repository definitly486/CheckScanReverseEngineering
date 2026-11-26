.class public final Lyads/dx3;
.super Lyads/px4;
.source "SourceFile"


# instance fields
.field public final b:Lyads/bx3;

.field public final c:Lyads/zo1;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/graphics/Paint;

.field public f:F

.field public g:F

.field public h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lyads/bx3;Lyads/zo1;)V
    .locals 0

    invoke-direct {p0}, Lyads/px4;-><init>()V

    iput-object p1, p0, Lyads/dx3;->b:Lyads/bx3;

    iput-object p2, p0, Lyads/dx3;->c:Lyads/zo1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/dx3;->d:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lyads/dx3;->e:Landroid/graphics/Paint;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lyads/dx3;->f:F

    iput p1, p0, Lyads/dx3;->g:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    move-object/from16 v5, p2

    move-object/from16 v6, p9

    invoke-virtual {v6, v5, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    sub-int v6, v4, v3

    int-to-float v6, v6

    iget-object v7, v0, Lyads/dx3;->b:Lyads/bx3;

    instance-of v8, v7, Lyads/ax3;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-object v1, v0, Lyads/dx3;->e:Landroid/graphics/Paint;

    check-cast v7, Lyads/ax3;

    iget v2, v7, Lyads/ax3;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v3

    add-float v13, p5, v5

    int-to-float v14, v4

    iget-object v15, v0, Lyads/dx3;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v11, p5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iput-boolean v9, v0, Lyads/dx3;->h:Z

    return-void

    :cond_0
    instance-of v4, v7, Lyads/zw3;

    if-eqz v4, :cond_b

    iget v4, v0, Lyads/dx3;->f:F

    cmpg-float v4, v5, v4

    const/4 v8, 0x1

    if-nez v4, :cond_1

    iget v4, v0, Lyads/dx3;->g:F

    cmpg-float v4, v6, v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lyads/dx3;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move-object v4, v7

    check-cast v4, Lyads/zw3;

    iput v5, v0, Lyads/dx3;->f:F

    iput v6, v0, Lyads/dx3;->g:F

    iget-object v10, v0, Lyads/dx3;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget v10, v4, Lyads/zw3;->b:F

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Lw65;->b(F)I

    move-result v10

    int-to-long v11, v1

    const-wide/32 v13, 0x466f45d

    mul-long/2addr v11, v13

    int-to-long v1, v2

    const-wide/32 v13, 0x127409f    # 9.5600037E-317

    mul-long/2addr v1, v13

    xor-long/2addr v1, v11

    int-to-long v10, v10

    xor-long/2addr v1, v10

    iput-wide v1, v0, Lyads/dx3;->i:J

    new-instance v1, Ljava/util/Random;

    iget-wide v10, v0, Lyads/dx3;->i:J

    invoke-direct {v1, v10, v11}, Ljava/util/Random;-><init>(J)V

    iget v2, v4, Lyads/zw3;->e:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    move/from16 p2, v10

    move v12, v11

    const-wide v10, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v11, v12, v10

    const v10, 0x4019999a    # 2.4f

    div-float/2addr v11, v10

    float-to-double v12, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v10, v12

    const v12, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v10, v12

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    cmpl-float v13, v10, v11

    if-lez v13, :cond_2

    mul-float v13, v5, v6

    div-float/2addr v13, v10

    goto :goto_0

    :cond_2
    move v13, v11

    :goto_0
    iget v4, v4, Lyads/zw3;->b:F

    cmpl-float v10, v4, p2

    if-ltz v10, :cond_3

    const v11, 0x3f7d70a4    # 0.99f

    goto :goto_1

    :cond_3
    cmpg-float v10, v4, v11

    if-gtz v10, :cond_4

    goto :goto_1

    :cond_4
    move v11, v4

    :goto_1
    mul-float/2addr v13, v11

    invoke-static {v13}, Lw65;->b(F)I

    move-result v4

    const/16 v10, 0x320

    invoke-static {v4, v8, v10}, Lkx6;->f(III)I

    move-result v4

    iget-object v10, v0, Lyads/dx3;->c:Lyads/zo1;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    if-eqz v10, :cond_5

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    goto :goto_2

    :cond_5
    move/from16 v10, p2

    :goto_2
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v10

    const/high16 v13, 0x41100000    # 9.0f

    mul-float/2addr v10, v13

    sub-float/2addr v10, v11

    move v13, v9

    :goto_3
    if-ge v13, v4, :cond_6

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v15

    const v15, 0x3f333333    # 0.7f

    add-float/2addr v14, v15

    mul-float v18, v14, v2

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v14, v14, v16

    double-to-float v14, v14

    sub-float/2addr v14, v12

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v15

    mul-float/2addr v15, v10

    add-float/2addr v15, v11

    move/from16 p3, v13

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v19, v8, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v20, v8, v15

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    mul-float v21, v8, v9

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const v12, 0x45bb8000    # 6000.0f

    mul-float/2addr v8, v12

    add-float v22, v8, v12

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float v8, v8, v22

    mul-float v23, v8, v9

    iget-object v8, v0, Lyads/dx3;->d:Ljava/util/ArrayList;

    new-instance v15, Lyads/cx3;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float v16, v9, v5

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float v17, v9, v6

    invoke-direct/range {v15 .. v23}, Lyads/cx3;-><init>(FFFFFFFF)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, p3, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v12, 0x40490fdb    # (float)Math.PI

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lyads/dx3;->e:Landroid/graphics/Paint;

    check-cast v7, Lyads/zw3;

    iget v2, v7, Lyads/zw3;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lyads/dx3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cx3;

    iget v4, v2, Lyads/cx3;->a:F

    iget v8, v2, Lyads/cx3;->c:F

    sub-float v9, v5, v8

    invoke-static {v4, v8, v9}, Lkx6;->d(FFF)F

    move-result v4

    iget v8, v2, Lyads/cx3;->b:F

    iget v9, v2, Lyads/cx3;->c:F

    sub-float v10, v6, v9

    invoke-static {v8, v9, v10}, Lkx6;->d(FFF)F

    move-result v8

    add-float v4, p5, v4

    int-to-float v9, v3

    add-float/2addr v9, v8

    iget v2, v2, Lyads/cx3;->c:F

    iget-object v8, v0, Lyads/dx3;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v4, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    iget-boolean v1, v7, Lyads/zw3;->c:Z

    if-nez v1, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/dx3;->h:Z

    iget-object v1, v0, Lyads/dx3;->c:Lyads/zo1;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lyads/zo1;->u:Lyads/kt4;

    if-nez v2, :cond_8

    new-instance v2, Lyads/kt4;

    invoke-direct {v2, v1}, Lyads/kt4;-><init>(Lyads/zo1;)V

    iput-object v2, v1, Lyads/zo1;->u:Lyads/kt4;

    :cond_8
    iget-object v1, v2, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lyads/kt4;->b()V

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/dx3;->h:Z

    iget-object v1, v0, Lyads/dx3;->c:Lyads/zo1;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lyads/zo1;->u:Lyads/kt4;

    if-nez v2, :cond_a

    new-instance v2, Lyads/kt4;

    invoke-direct {v2, v1}, Lyads/kt4;-><init>(Lyads/zo1;)V

    iput-object v2, v1, Lyads/zo1;->u:Lyads/kt4;

    :cond_a
    iget-object v1, v2, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lyads/kt4;->a()V

    :cond_b
    return-void
.end method
