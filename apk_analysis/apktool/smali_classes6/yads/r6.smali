.class public final Lyads/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/c13;


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public final b:Lyads/a3;

.field public final c:Lyads/m2;

.field public final d:Lyads/n6;

.field public final e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

.field public final f:Lyads/z2;

.field public final g:Lyads/l15;

.field public final h:Lyads/l10;

.field public final i:Lyads/aa5;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/List;

.field public final l:J

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/pg4;Lyads/bj4;Lyads/oa5;Ljava/util/ArrayList;Lyads/fo1;Landroid/widget/RelativeLayout;Lyads/a3;Lyads/m2;Lyads/sr3;Lyads/n6;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    new-instance v6, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    move-object/from16 v8, p1

    invoke-direct {v6, v8}, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lyads/z2;

    invoke-direct {v7, v4, v2, v5}, Lyads/z2;-><init>(Lyads/pg4;Lyads/m2;Lyads/bj4;)V

    new-instance v9, Lyads/l15;

    invoke-direct {v9}, Lyads/l15;-><init>()V

    new-instance v10, Lyads/l10;

    invoke-direct {v10}, Lyads/l10;-><init>()V

    new-instance v11, Lyads/aa5;

    new-instance v12, Lyads/ux5;

    invoke-direct {v12}, Lyads/ux5;-><init>()V

    invoke-direct {v11, v12}, Lyads/aa5;-><init>(Lyads/ux5;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v12, p7

    iput-object v12, v0, Lyads/r6;->a:Landroid/widget/RelativeLayout;

    move-object/from16 v12, p8

    iput-object v12, v0, Lyads/r6;->b:Lyads/a3;

    iput-object v2, v0, Lyads/r6;->c:Lyads/m2;

    iput-object v3, v0, Lyads/r6;->d:Lyads/n6;

    iput-object v6, v0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iput-object v7, v0, Lyads/r6;->f:Lyads/z2;

    iput-object v9, v0, Lyads/r6;->g:Lyads/l15;

    iput-object v10, v0, Lyads/r6;->h:Lyads/l10;

    iput-object v11, v0, Lyads/r6;->i:Lyads/aa5;

    iget-object v2, v3, Lyads/n6;->a:Ljava/util/List;

    iput-object v2, v0, Lyads/r6;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v18, 0x0

    move-wide/from16 v6, v18

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/u6;

    iget-wide v9, v3, Lyads/u6;->a:J

    add-long/2addr v6, v9

    goto :goto_0

    :cond_0
    iput-wide v6, v0, Lyads/r6;->l:J

    iget-object v3, v0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    new-instance v6, Lyads/q6;

    invoke-direct {v6, v0}, Lyads/q6;-><init>(Lyads/r6;)V

    iget-object v10, v0, Lyads/r6;->g:Lyads/l15;

    new-instance v15, Lyads/t6;

    invoke-direct {v15, v0}, Lyads/t6;-><init>(Lyads/r6;)V

    iget-object v2, v0, Lyads/r6;->d:Lyads/n6;

    iget-object v12, v0, Lyads/r6;->h:Lyads/l10;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v4, Lyads/ni4;

    const/16 v20, 0x0

    if-eqz v7, :cond_7

    check-cast v4, Lyads/ni4;

    iget-object v7, v2, Lyads/n6;->a:Ljava/util/List;

    invoke-virtual {v4}, Lyads/ni4;->k()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_3

    invoke-static {v9, v7}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lyads/u6;

    new-instance v16, Lyads/bx5;

    move-object/from16 v21, v11

    new-instance v11, Lyads/o6;

    invoke-direct {v11, v7}, Lyads/o6;-><init>(Ljava/util/List;)V

    move/from16 v22, v14

    move-object v14, v12

    new-instance v12, Lyads/s6;

    if-eqz v3, :cond_1

    move-object/from16 p7, v6

    move-object/from16 p2, v7

    iget-wide v6, v3, Lyads/u6;->a:J

    goto :goto_2

    :cond_1
    move-object/from16 p7, v6

    move-object/from16 p2, v7

    move-wide/from16 v6, v18

    :goto_2
    invoke-direct {v12, v6, v7}, Lyads/s6;-><init>(J)V

    move-object v6, v13

    new-instance v13, Lyads/p6;

    invoke-direct {v13, v2, v9}, Lyads/p6;-><init>(Lyads/n6;I)V

    move-object/from16 p8, v3

    move v3, v9

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    invoke-direct/range {v9 .. v14}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;Lyads/l10;)V

    move-object/from16 v21, v10

    move-object/from16 v23, v14

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/pg4;

    new-instance v11, Lyads/jt5;

    invoke-direct {v11, v5}, Lyads/jt5;-><init>(Lyads/h80;)V

    if-eqz v1, :cond_2

    invoke-static {v3, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/fo1;

    move-object/from16 v16, v12

    move-object/from16 v1, p2

    move-object/from16 v13, p4

    move-object/from16 v24, v7

    move-object v14, v9

    move-object/from16 v9, v17

    move-object/from16 v12, p7

    :goto_3
    move-object/from16 v17, p8

    move-object/from16 v7, p10

    goto :goto_4

    :cond_2
    move-object/from16 v16, v20

    move-object/from16 v1, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p7

    move-object/from16 v24, v7

    move-object v14, v9

    move-object/from16 v9, v17

    goto :goto_3

    :goto_4
    invoke-virtual/range {v7 .. v17}, Lyads/sr3;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;

    move-result-object v10

    move-object/from16 v17, v9

    move-object v13, v12

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    move-object v3, v13

    move-object v13, v6

    move-object v6, v3

    move-object/from16 v8, p1

    move-object v7, v1

    move-object/from16 v3, v17

    move-object/from16 v10, v21

    move/from16 v14, v22

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    move-object v1, v13

    move-object v13, v6

    move-object v6, v1

    move-object/from16 v17, v3

    move-object v1, v7

    move-object/from16 v21, v10

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/u6;

    new-instance v7, Lyads/bx5;

    new-instance v9, Lyads/o6;

    invoke-direct {v9, v1}, Lyads/o6;-><init>(Ljava/util/List;)V

    new-instance v10, Lyads/s6;

    if-eqz v2, :cond_4

    iget-wide v11, v2, Lyads/u6;->a:J

    goto :goto_5

    :cond_4
    move-wide/from16 v11, v18

    :goto_5
    invoke-direct {v10, v11, v12}, Lyads/s6;-><init>(J)V

    new-instance v11, Lyads/vr4;

    invoke-direct {v11}, Lyads/vr4;-><init>()V

    move-object/from16 v8, v21

    move-object/from16 v12, v23

    invoke-direct/range {v7 .. v12}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;Lyads/l10;)V

    if-eqz p6, :cond_5

    move-object/from16 v10, p6

    move-object/from16 v1, p10

    move-object v11, v2

    move-object v12, v6

    move-object v8, v7

    move-object v6, v13

    move-object v9, v15

    move-object/from16 v3, v17

    move-object/from16 v2, p1

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v11}, Lyads/sr3;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;

    move-result-object v20

    :goto_6
    move-object/from16 v1, v20

    goto :goto_7

    :cond_5
    move-object v12, v6

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_6

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v13, v12

    goto/16 :goto_b

    :cond_7
    move-object v8, v10

    iget-object v13, v2, Lyads/n6;->a:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lyads/bx5;

    new-instance v1, Lyads/o6;

    invoke-direct {v1, v13}, Lyads/o6;-><init>(Ljava/util/List;)V

    new-instance v10, Lyads/s6;

    invoke-static {v13}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/u6;

    if-eqz v5, :cond_8

    move-object/from16 p8, v10

    iget-wide v9, v5, Lyads/u6;->a:J

    move-object/from16 v5, p8

    goto :goto_8

    :cond_8
    move-object v5, v10

    move-wide/from16 v9, v18

    :goto_8
    invoke-direct {v5, v9, v10}, Lyads/s6;-><init>(J)V

    new-instance v11, Lyads/p6;

    const/4 v9, 0x0

    invoke-direct {v11, v2, v9}, Lyads/p6;-><init>(Lyads/n6;I)V

    move-object v9, v1

    move-object v10, v5

    invoke-direct/range {v7 .. v12}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;Lyads/l10;)V

    move-object v12, v8

    if-eqz p5, :cond_9

    invoke-static/range {p5 .. p5}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/fo1;

    move-object v10, v1

    goto :goto_9

    :cond_9
    move-object/from16 v10, v20

    :goto_9
    invoke-static {v13}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lyads/u6;

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v1, p10

    move-object v8, v7

    move-object v9, v15

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v11}, Lyads/sr3;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1, v13}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lyads/u6;

    new-instance v8, Lyads/bx5;

    new-instance v1, Lyads/o6;

    invoke-direct {v1, v13}, Lyads/o6;-><init>(Ljava/util/List;)V

    new-instance v2, Lyads/s6;

    if-eqz v11, :cond_a

    iget-wide v4, v11, Lyads/u6;->a:J

    goto :goto_a

    :cond_a
    move-wide/from16 v4, v18

    :goto_a
    invoke-direct {v2, v4, v5}, Lyads/s6;-><init>(J)V

    new-instance v4, Lyads/vr4;

    invoke-direct {v4}, Lyads/vr4;-><init>()V

    invoke-direct {v8, v12, v1, v2, v4}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;)V

    if-eqz p6, :cond_b

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p6

    move-object/from16 v1, p10

    invoke-virtual/range {v1 .. v11}, Lyads/sr3;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;

    move-result-object v20

    :cond_b
    move-object/from16 v1, v20

    if-eqz v1, :cond_c

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v13, v14

    :goto_b
    iput-object v13, v0, Lyads/r6;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 57
    iget-object v0, p0, Lyads/r6;->a:Landroid/widget/RelativeLayout;

    iget p0, p0, Lyads/r6;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(I)V
    .locals 6

    iget v0, p0, Lyads/r6;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/r6;->m:I

    iget-object v0, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/rr3;

    invoke-virtual {p1}, Lyads/rr3;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lyads/r6;->m:I

    iget-object v0, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lyads/r6;->c:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lyads/r6;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lyads/r6;->a()V

    iget-object v0, p0, Lyads/r6;->i:Lyads/aa5;

    iget-object v1, p0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget-wide v2, p0, Lyads/r6;->l:J

    iget-object p0, p0, Lyads/r6;->g:Lyads/l15;

    iget-wide v4, p0, Lyads/l15;->a:J

    invoke-virtual/range {v0 .. v5}, Lyads/aa5;->a(Landroid/view/View;JJ)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget v0, p0, Lyads/r6;->m:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lyads/r6;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/u6;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lyads/u6;->a:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lyads/r6;->g:Lyads/l15;

    iget-wide v5, v0, Lyads/l15;->a:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lyads/l15;->a:J

    iget-object v0, p0, Lyads/r6;->h:Lyads/l10;

    iget-wide v3, v0, Lyads/l10;->a:J

    iget-wide v5, v0, Lyads/l10;->b:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lyads/l10;->a:J

    iput-wide v1, v0, Lyads/l10;->b:J

    iget v0, p0, Lyads/r6;->m:I

    iget-object v1, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lyads/r6;->m:I

    invoke-virtual {p0, v0}, Lyads/r6;->a(I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lyads/r6;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lyads/r6;->f:Lyads/z2;

    iget-object v1, p0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lyads/z2;->a:Lyads/pg4;

    instance-of v2, v2, Lyads/ni4;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lyads/z2;->e:Lyads/xk;

    iget-object v3, v0, Lyads/z2;->d:Lyads/xd4;

    invoke-virtual {v2, v1, v3}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object v1

    iget-object v2, v0, Lyads/z2;->a:Lyads/pg4;

    check-cast v2, Lyads/ni4;

    invoke-virtual {v2, v1}, Lyads/ni4;->b(Lyads/ih4;)Lyads/g70;

    iget-object v1, v0, Lyads/z2;->a:Lyads/pg4;

    check-cast v1, Lyads/ni4;

    iget-object v2, v0, Lyads/z2;->c:Lyads/bj4;

    invoke-virtual {v1, v2}, Lyads/ni4;->b(Lyads/h80;)V
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lyads/r6;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/r6;->n:Z

    iget-object v1, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/rr3;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/rr3;->a()Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    iget v0, p0, Lyads/r6;->m:I

    iget-object v1, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object p0, p0, Lyads/r6;->c:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lyads/r6;->b()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lyads/r6;->a()V

    iget-object v0, p0, Lyads/r6;->i:Lyads/aa5;

    iget-object v1, p0, Lyads/r6;->e:Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    iget-wide v2, p0, Lyads/r6;->l:J

    iget-object p0, p0, Lyads/r6;->g:Lyads/l15;

    iget-wide v4, p0, Lyads/l15;->a:J

    invoke-virtual/range {v0 .. v5}, Lyads/aa5;->a(Landroid/view/View;JJ)V

    return-void

    :catch_0
    iget-object p0, v0, Lyads/z2;->b:Lyads/m2;

    invoke-virtual {p0}, Lyads/m2;->e()V

    return-void
.end method

.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/rr3;

    invoke-virtual {v1}, Lyads/rr3;->b()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/r6;->f:Lyads/z2;

    iget-object p0, p0, Lyads/z2;->a:Lyads/pg4;

    instance-of v0, p0, Lyads/ni4;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/ni4;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/ni4;->b(Lyads/h80;)V

    :cond_1
    return-void
.end method
