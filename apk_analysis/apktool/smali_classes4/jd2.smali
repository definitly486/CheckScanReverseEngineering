.class public final Ljd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lid2;

.field public final synthetic c:Lkd2;


# direct methods
.method public constructor <init>(Lkd2;ZLid2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljd2;->c:Lkd2;

    iput-object p3, p0, Ljd2;->b:Lid2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ljd2;->c:Lkd2;

    iget-object v1, v1, Lkd2;->b:Lcom/hookedonplay/decoviewlib/DecoView;

    iget-object v2, v1, Lcom/hookedonplay/decoviewlib/DecoView;->b:Ljava/lang/String;

    iget-object v0, v0, Ljd2;->b:Lid2;

    iget-object v3, v0, Lid2;->a:Lid2$b;

    iget-wide v4, v0, Lid2;->b:J

    iget v6, v0, Lid2;->e:I

    iget v7, v0, Lid2;->c:I

    sget-object v8, Lid2$b;->EVENT_MOVE:Lid2$b;

    const/4 v10, 0x1

    if-eq v3, v8, :cond_0

    sget-object v8, Lid2$b;->EVENT_COLOR_CHANGE:Lid2$b;

    if-eq v3, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v8, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v7, :cond_e

    if-ltz v7, :cond_d

    iget-object v8, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    iget-object v8, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lka1;

    sget-object v11, Lid2$b;->EVENT_COLOR_CHANGE:Lid2$b;

    const/4 v12, 0x2

    if-ne v3, v11, :cond_5

    invoke-virtual {v8}, Lka1;->b()V

    iput-boolean v10, v8, Lka1;->m:Z

    iput-object v3, v8, Lka1;->c:Lid2$b;

    const/4 v11, 0x0

    iput v11, v8, Lka1;->g:F

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-lez v11, :cond_4

    new-instance v11, Lsn1;

    iget-object v13, v8, Lka1;->b:Lpq7;

    iget v14, v13, Lpq7;->a:I

    invoke-direct {v11, v14, v6}, Lsn1;-><init>(II)V

    iput-object v11, v8, Lka1;->o:Lsn1;

    iput v6, v13, Lpq7;->a:I

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Lzb9;->l([F)Lzb9;

    move-result-object v6

    iput-object v6, v8, Lka1;->n:Lzb9;

    invoke-virtual {v6, v4, v5}, Lzb9;->p(J)V

    iget-object v4, v8, Lka1;->n:Lzb9;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v4, Lzb9;->n:Landroid/view/animation/Interpolator;

    iget-object v4, v8, Lka1;->n:Lzb9;

    new-instance v5, Lla1;

    invoke-direct {v5, v8}, Lla1;-><init>(Lka1;)V

    iget-object v6, v4, Lzb9;->o:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lzb9;->o:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lka1;->n:Lzb9;

    new-instance v5, Lma1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v4, Ltm;->b:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Ltm;->b:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lka1;->n:Lzb9;

    invoke-virtual {v4}, Lzb9;->q()V

    :cond_3
    :goto_0
    move/from16 v16, v10

    const/16 p0, 0x0

    goto/16 :goto_4

    :cond_4
    iget-object v4, v8, Lka1;->a:Ljava/lang/String;

    const-string v5, "Must set new color to start CHANGE_COLOR event"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v11, v8, Lka1;->b:Lpq7;

    iput-object v3, v8, Lka1;->c:Lid2$b;

    iput-boolean v10, v8, Lka1;->m:Z

    invoke-virtual {v8}, Lka1;->b()V

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    if-lez v13, :cond_6

    move v13, v10

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_7

    new-instance v14, Lsn1;

    iget v15, v11, Lpq7;->a:I

    invoke-direct {v14, v15, v6}, Lsn1;-><init>(II)V

    iput-object v14, v8, Lka1;->o:Lsn1;

    iput v6, v11, Lpq7;->a:I

    :cond_7
    iget v6, v0, Lid2;->d:F

    iget v14, v8, Lka1;->f:F

    iput v14, v8, Lka1;->d:F

    iput v6, v8, Lka1;->e:F

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-eqz v15, :cond_c

    sub-float v14, v6, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move/from16 v16, v10

    const/16 p0, 0x0

    float-to-double v9, v14

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v9, v9, v17

    if-gez v9, :cond_8

    goto :goto_2

    :cond_8
    if-gez v15, :cond_9

    iget v4, v8, Lka1;->d:F

    iget v5, v8, Lka1;->e:F

    sub-float/2addr v4, v5

    iget v5, v11, Lpq7;->d:F

    div-float/2addr v4, v5

    const v5, 0x459c4000    # 5000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    :cond_9
    iget v9, v8, Lka1;->d:F

    new-array v10, v12, [F

    aput v9, v10, p0

    aput v6, v10, v16

    invoke-static {v10}, Lzb9;->l([F)Lzb9;

    move-result-object v6

    iput-object v6, v8, Lka1;->n:Lzb9;

    invoke-virtual {v6, v4, v5}, Lzb9;->p(J)V

    iget-object v4, v8, Lka1;->n:Lzb9;

    new-instance v5, Lia1;

    invoke-direct {v5, v8}, Lia1;-><init>(Lka1;)V

    iget-object v6, v4, Lzb9;->o:Ljava/util/ArrayList;

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lzb9;->o:Ljava/util/ArrayList;

    :cond_a
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lka1;->n:Lzb9;

    new-instance v5, Lja1;

    invoke-direct {v5, v8, v13, v0}, Lja1;-><init>(Lka1;ZLid2;)V

    iget-object v6, v4, Ltm;->b:Ljava/util/ArrayList;

    if-nez v6, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Ltm;->b:Ljava/util/ArrayList;

    :cond_b
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lka1;->n:Lzb9;

    invoke-virtual {v4}, Lzb9;->q()V

    goto :goto_4

    :cond_c
    move/from16 v16, v10

    const/16 p0, 0x0

    :goto_2
    invoke-virtual {v8}, Lka1;->b()V

    iget v4, v8, Lka1;->e:F

    iput v4, v8, Lka1;->f:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v8, Lka1;->g:F

    iget-object v4, v11, Lpq7;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpq7$c;

    invoke-interface {v5}, Lpq7$c;->a()V

    goto :goto_3

    :cond_d
    move/from16 v16, v10

    const/16 p0, 0x0

    const-string v4, "Ignoring move request: Invalid array index. Index: "

    const-string v5, " Size: "

    invoke-static {v7, v4, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid index: Position out of range (Index: "

    const-string v3, " Series Count: "

    invoke-static {v7, v2, v3}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_4
    sget-object v4, Lid2$b;->EVENT_SHOW:Lid2$b;

    if-eq v3, v4, :cond_10

    sget-object v5, Lid2$b;->EVENT_HIDE:Lid2$b;

    if-eq v3, v5, :cond_10

    goto :goto_7

    :cond_10
    if-ne v3, v4, :cond_11

    move/from16 v4, p0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v4, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    if-eq v7, v4, :cond_12

    if-gez v7, :cond_14

    :cond_12
    iget-object v5, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lka1;

    sget-object v6, Lid2$b;->EVENT_SHOW:Lid2$b;

    if-ne v3, v6, :cond_13

    move/from16 v6, v16

    goto :goto_6

    :cond_13
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v5, v0, v6}, Lka1;->f(Lid2;Z)V

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_15
    :goto_7
    sget-object v4, Lid2$b;->EVENT_EFFECT:Lid2$b;

    if-eq v3, v4, :cond_16

    goto :goto_a

    :cond_16
    iget-object v4, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    if-gez v7, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must specify valid data series index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    sget-object v2, Lhd2;->EFFECT_SPIRAL_EXPLODE:Lhd2;

    const-string v3, "Unable to execute null effect type"

    if-nez v2, :cond_1a

    const/4 v4, 0x0

    :goto_8
    iget-object v2, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1c

    iget-object v2, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lka1;

    if-eq v4, v7, :cond_19

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lka1;->f(Lid2;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1a
    const/4 v5, 0x0

    move v9, v5

    :goto_9
    iget-object v0, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1c

    if-eq v7, v9, :cond_1b

    if-ltz v7, :cond_1b

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_1b
    iget-object v0, v1, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lka1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lah;->f(Ljava/lang/String;)V

    :cond_1c
    :goto_a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
