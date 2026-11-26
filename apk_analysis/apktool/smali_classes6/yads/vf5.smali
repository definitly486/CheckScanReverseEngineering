.class public final Lyads/vf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/b24;


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/d9;

.field public final c:Lyads/h24;

.field public final d:Lyads/c24;

.field public final e:Lyads/g24;

.field public final f:Lyads/e24;


# direct methods
.method public constructor <init>(Lyads/bf5;Lyads/d9;)V
    .locals 4

    new-instance v0, Lyads/h24;

    invoke-direct {v0, p1, p2}, Lyads/h24;-><init>(Lyads/bf5;Lyads/d9;)V

    new-instance v1, Lyads/c24;

    invoke-direct {v1, p2}, Lyads/c24;-><init>(Lyads/d9;)V

    new-instance v2, Lyads/g24;

    invoke-direct {v2}, Lyads/g24;-><init>()V

    new-instance v3, Lyads/e24;

    invoke-direct {v3}, Lyads/e24;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vf5;->a:Lyads/bf5;

    iput-object p2, p0, Lyads/vf5;->b:Lyads/d9;

    iput-object v0, p0, Lyads/vf5;->c:Lyads/h24;

    iput-object v1, p0, Lyads/vf5;->d:Lyads/c24;

    iput-object v2, p0, Lyads/vf5;->e:Lyads/g24;

    iput-object v3, p0, Lyads/vf5;->f:Lyads/e24;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/bf5;Lyads/b05;Lyads/j24;Lyads/uj5;Lyads/v14;Ly22;)Lyads/z14;
    .locals 9

    move-object/from16 v8, p7

    .line 280
    iget-object v5, p6, Lyads/v14;->c:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 281
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object p0, p0, Lyads/vf5;->d:Lyads/c24;

    .line 284
    invoke-virtual {p0, p1, p3, p4, v8}, Lyads/c24;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/b05;Lyads/j24;Ly22;)Lyads/wf5;

    move-result-object p0

    return-object p0

    .line 285
    :cond_0
    :try_start_0
    iget-object v0, p0, Lyads/vf5;->e:Lyads/g24;

    .line 286
    iget-object v1, p0, Lyads/vf5;->b:Lyads/d9;

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 287
    invoke-virtual/range {v0 .. v8}, Lyads/g24;->a(Lyads/d9;Lyads/bf5;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/b05;Ljava/util/List;Lyads/j24;Lyads/uj5;Ly22;)Lyads/yf5;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    iget-object p0, p0, Lyads/vf5;->d:Lyads/c24;

    .line 289
    invoke-virtual {p0, p1, p3, p4, v8}, Lyads/c24;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/b05;Lyads/j24;Ly22;)Lyads/wf5;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/e4;Lyads/b05;Lyads/tj6;Lyads/we3;Lyads/sj4;Lyads/aj4;Lyads/we4;Lyads/j24;Lyads/uj5;Lyads/v14;Ly22;)Lyads/z14;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v15, p11

    const/16 v16, 0x0

    if-nez v15, :cond_0

    return-object v16

    :cond_0
    iget-object v9, v2, Lyads/sj4;->a:Lyads/el4;

    iget-object v4, v2, Lyads/sj4;->b:Lyads/lm4;

    iget-object v2, v15, Lyads/v14;->a:Lyads/by3;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lyads/xt2;->e:Lyads/xt2;

    invoke-static {v5, v6}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    if-eqz v9, :cond_b

    iget-object v2, v15, Lyads/v14;->b:Lyads/r96;

    iget-object v3, v0, Lyads/vf5;->c:Lyads/h24;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v4, v3, Lyads/h24;->e:Lyads/yl4;

    iget-object v4, v4, Lyads/yl4;->a:Lyads/hc0;

    invoke-virtual {v1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getVideoScaleType()Lyads/se6;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Lyads/se6;->b:Lyads/se6;

    :cond_2
    iget-object v5, v3, Lyads/h24;->f:Lyads/kl4;

    if-eqz v2, :cond_3

    iget-object v7, v2, Lyads/r96;->b:Lyads/we6;

    goto :goto_0

    :cond_3
    move-object/from16 v7, v16

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lyads/td6;

    if-eqz v7, :cond_4

    iget-boolean v8, v7, Lyads/we6;->a:Z

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    :goto_1
    if-eqz v7, :cond_5

    iget-boolean v10, v7, Lyads/we6;->b:Z

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-eqz v7, :cond_6

    iget-object v7, v7, Lyads/we6;->c:Ljava/lang/Double;

    goto :goto_3

    :cond_6
    move-object/from16 v7, v16

    :goto_3
    invoke-direct {v5, v4, v8, v10, v7}, Lyads/td6;-><init>(Lyads/se6;ZZLjava/lang/Double;)V

    iget-object v4, v3, Lyads/h24;->d:Lyads/hc0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getVideoControlsLayoutId()I

    move-result v23

    iget-object v4, v3, Lyads/h24;->g:Lyads/dm4;

    move-object/from16 v21, p4

    move-object/from16 v22, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v23}, Lyads/dm4;->a(Landroid/content/Context;Lyads/td6;Lyads/tj6;Lyads/r96;I)Lyads/am4;

    move-result-object v4

    iget-object v2, v3, Lyads/h24;->c:Lyads/cf6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lyads/nf6;

    iget-object v5, v3, Lyads/h24;->a:Lyads/bf5;

    iget-object v7, v3, Lyads/h24;->b:Lyads/d9;

    move-object/from16 v6, p2

    move-object/from16 v12, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p12

    move-object v3, v5

    move-object/from16 v5, v20

    invoke-direct/range {v2 .. v14}, Lyads/nf6;-><init>(Lyads/bf5;Lyads/am4;Lyads/td6;Lyads/e4;Lyads/d9;Lyads/we3;Lyads/nl4;Lyads/aj4;Lyads/we4;Lyads/b05;Lyads/uj5;Ly22;)V

    move-object v5, v13

    new-instance v8, Lyads/zf5;

    move-object/from16 v4, p9

    invoke-direct {v8, v1, v2, v4}, Lyads/zf5;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/nf6;Lyads/j24;)V

    if-eqz v5, :cond_8

    iget-object v2, v5, Lyads/uj5;->e:Lyads/ql5;

    move-object/from16 v16, v2

    :cond_8
    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    iget-object v2, v0, Lyads/vf5;->a:Lyads/bf5;

    move-object/from16 v3, p3

    move-object/from16 v7, p12

    move-object v6, v15

    invoke-virtual/range {v0 .. v7}, Lyads/vf5;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/bf5;Lyads/b05;Lyads/j24;Lyads/uj5;Lyads/v14;Ly22;)Lyads/z14;

    move-result-object v2

    move-object v6, v0

    if-eqz v2, :cond_9

    sget-object v0, Lyads/eg5;->j:Lyads/ag5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/eg5;

    move-object/from16 v1, p1

    move-object/from16 v4, p9

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lyads/eg5;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/zf5;Lyads/z14;Lyads/j24;Lyads/ql5;)V

    move-object/from16 v16, v0

    goto :goto_6

    :cond_9
    :goto_4
    move-object v2, v8

    goto :goto_5

    :cond_a
    move-object v6, v0

    goto :goto_4

    :goto_5
    move-object/from16 v16, v2

    goto :goto_6

    :cond_b
    move-object v6, v0

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    invoke-static {v3}, Lyads/ya;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_0
    iget-object v0, v6, Lyads/vf5;->f:Lyads/e24;

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lyads/e24;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/by3;Lyads/we3;Lyads/lm4;Lyads/j24;)Lyads/xf5;

    move-result-object v16
    :try_end_0
    .catch Lyads/bk6; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    :goto_6
    if-nez v16, :cond_d

    iget-object v2, v6, Lyads/vf5;->a:Lyads/bf5;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v7, p12

    move-object v0, v6

    move-object/from16 v6, p11

    invoke-virtual/range {v0 .. v7}, Lyads/vf5;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/bf5;Lyads/b05;Lyads/j24;Lyads/uj5;Lyads/v14;Ly22;)Lyads/z14;

    move-result-object v16

    :cond_d
    return-object v16
.end method
