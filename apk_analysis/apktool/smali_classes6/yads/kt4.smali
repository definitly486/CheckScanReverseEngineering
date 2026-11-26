.class public final Lyads/kt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final b:Lyads/zo1;

.field public final c:Landroid/view/Choreographer;

.field public final d:Ljava/util/LinkedHashSet;

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Lyads/zo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kt4;->b:Lyads/zo1;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lyads/kt4;->c:Landroid/view/Choreographer;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lyads/kt4;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/kt4;->b:Lyads/zo1;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/kt4;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/kt4;->f:J

    iget-object v0, p0, Lyads/kt4;->c:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lyads/kt4;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/kt4;->e:Z

    iget-object v0, p0, Lyads/kt4;->c:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final doFrame(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lyads/kt4;->e:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lyads/kt4;->b:Lyads/zo1;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-wide v3, v0, Lyads/kt4;->f:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    sub-long v3, v1, v3

    long-to-float v3, v3

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v4

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v3, v6, v4}, Lkx6;->d(FFF)F

    move-result v3

    :goto_0
    iput-wide v1, v0, Lyads/kt4;->f:J

    iget-object v1, v0, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/dx3;

    iget-object v7, v5, Lyads/dx3;->c:Lyads/zo1;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v8

    :goto_3
    instance-of v9, v7, Landroid/text/Spanned;

    if-eqz v9, :cond_4

    check-cast v7, Landroid/text/Spanned;

    goto :goto_4

    :cond_4
    move-object v7, v8

    :goto_4
    if-nez v7, :cond_6

    :cond_5
    move v15, v3

    goto/16 :goto_b

    :cond_6
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_5

    iget-object v7, v5, Lyads/dx3;->b:Lyads/bx3;

    instance-of v9, v7, Lyads/zw3;

    if-eqz v9, :cond_7

    move-object v8, v7

    check-cast v8, Lyads/zw3;

    :cond_7
    if-nez v8, :cond_9

    :cond_8
    :goto_5
    move v15, v3

    goto/16 :goto_8

    :cond_9
    iget-boolean v7, v5, Lyads/dx3;->h:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v8, Lyads/zw3;->d:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v8, Lyads/zw3;->c:Z

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    cmpg-float v4, v3, v6

    if-gtz v4, :cond_c

    :cond_b
    move v15, v3

    goto/16 :goto_9

    :cond_c
    iget v4, v5, Lyads/dx3;->f:F

    iget v7, v5, Lyads/dx3;->g:F

    iget-object v9, v5, Lyads/dx3;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/cx3;

    iget v11, v10, Lyads/cx3;->f:F

    mul-float/2addr v11, v3

    cmpg-float v12, v11, v6

    if-nez v12, :cond_e

    goto :goto_7

    :cond_e
    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    iget v12, v10, Lyads/cx3;->d:F

    mul-float v14, v12, v13

    iget v15, v10, Lyads/cx3;->e:F

    mul-float v16, v15, v11

    sub-float v14, v14, v16

    mul-float/2addr v12, v11

    mul-float/2addr v15, v13

    add-float/2addr v15, v12

    iput v14, v10, Lyads/cx3;->d:F

    iput v15, v10, Lyads/cx3;->e:F

    :goto_7
    iget v11, v10, Lyads/cx3;->a:F

    iget v12, v10, Lyads/cx3;->d:F

    mul-float/2addr v12, v3

    add-float/2addr v12, v11

    iput v12, v10, Lyads/cx3;->a:F

    iget v11, v10, Lyads/cx3;->b:F

    iget v13, v10, Lyads/cx3;->e:F

    mul-float/2addr v13, v3

    add-float/2addr v13, v11

    iput v13, v10, Lyads/cx3;->b:F

    iget v11, v10, Lyads/cx3;->c:F

    neg-float v14, v11

    cmpg-float v15, v12, v14

    const/high16 v16, 0x40000000    # 2.0f

    if-gez v15, :cond_f

    mul-float v15, v11, v16

    add-float/2addr v15, v4

    add-float/2addr v12, v15

    iput v12, v10, Lyads/cx3;->a:F

    :cond_f
    add-float v15, v4, v11

    cmpl-float v15, v12, v15

    if-lez v15, :cond_10

    mul-float v15, v11, v16

    add-float/2addr v15, v4

    sub-float/2addr v12, v15

    iput v12, v10, Lyads/cx3;->a:F

    :cond_10
    cmpg-float v12, v13, v14

    if-gez v12, :cond_11

    mul-float v12, v11, v16

    add-float/2addr v12, v7

    add-float/2addr v13, v12

    iput v13, v10, Lyads/cx3;->b:F

    :cond_11
    add-float v12, v7, v11

    cmpl-float v12, v13, v12

    if-lez v12, :cond_12

    mul-float v11, v11, v16

    add-float/2addr v11, v7

    sub-float/2addr v13, v11

    iput v13, v10, Lyads/cx3;->b:F

    :cond_12
    iget v11, v10, Lyads/cx3;->h:F

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v12, v3

    add-float/2addr v12, v11

    iput v12, v10, Lyads/cx3;->h:F

    iget v11, v10, Lyads/cx3;->g:F

    cmpl-float v11, v12, v11

    if-ltz v11, :cond_d

    new-instance v11, Ljava/util/Random;

    iget-wide v12, v5, Lyads/dx3;->i:J

    invoke-virtual {v10}, Lyads/cx3;->hashCode()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Random;-><init>(J)V

    iget v12, v8, Lyads/zw3;->e:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v15

    const v15, 0x3f333333    # 0.7f

    add-float/2addr v14, v15

    mul-float/2addr v14, v12

    iput v14, v10, Lyads/cx3;->c:F

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v12

    mul-float/2addr v12, v4

    iput v12, v10, Lyads/cx3;->a:F

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v12

    mul-float/2addr v12, v7

    iput v12, v10, Lyads/cx3;->b:F

    iget-object v12, v5, Lyads/dx3;->c:Lyads/zo1;

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    if-eqz v12, :cond_13

    iget v13, v12, Landroid/util/DisplayMetrics;->density:F

    :cond_13
    mul-float v16, v16, v13

    const/high16 v12, 0x41100000    # 9.0f

    mul-float/2addr v13, v12

    sub-float v13, v13, v16

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v12

    float-to-double v14, v12

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v14, v14, v17

    double-to-float v12, v14

    const v14, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v12, v14

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v14

    mul-float/2addr v14, v13

    add-float v14, v14, v16

    float-to-double v12, v12

    move v15, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    iput v2, v10, Lyads/cx3;->d:F

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    iput v2, v10, Lyads/cx3;->e:F

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v3

    iput v2, v10, Lyads/cx3;->f:F

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x45bb8000    # 6000.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    iput v2, v10, Lyads/cx3;->g:F

    iput v6, v10, Lyads/cx3;->h:F

    move v3, v15

    goto/16 :goto_6

    :goto_8
    if-eqz v4, :cond_14

    :goto_9
    const/4 v4, 0x1

    :goto_a
    move v3, v15

    goto/16 :goto_2

    :cond_14
    move v3, v15

    goto/16 :goto_1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_15
    iget-object v1, v0, Lyads/kt4;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    if-nez v4, :cond_16

    goto :goto_c

    :cond_16
    iget-object v1, v0, Lyads/kt4;->b:Lyads/zo1;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    iget-object v1, v0, Lyads/kt4;->c:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_17
    :goto_c
    invoke-virtual {v0}, Lyads/kt4;->b()V

    return-void

    :cond_18
    :goto_d
    invoke-virtual {v0}, Lyads/kt4;->b()V

    return-void
.end method
