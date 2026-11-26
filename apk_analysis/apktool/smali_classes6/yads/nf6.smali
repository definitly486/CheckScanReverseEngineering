.class public final Lyads/nf6;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/d9;

.field public final d:Lyads/lf6;

.field public final e:Lyads/wl4;

.field public final f:Lyads/kf6;

.field public final g:Lyads/il4;

.field public h:Lyads/jf6;


# direct methods
.method public constructor <init>(Lyads/bf5;Lyads/am4;Lyads/td6;Lyads/e4;Lyads/d9;Lyads/we3;Lyads/nl4;Lyads/aj4;Lyads/we4;Lyads/b05;Lyads/uj5;Ly22;)V
    .locals 14

    new-instance v0, Lyads/lf6;

    invoke-direct {v0}, Lyads/lf6;-><init>()V

    move-object/from16 v1, p2

    invoke-direct {p0, v1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    move-object/from16 v7, p5

    iput-object v7, p0, Lyads/nf6;->c:Lyads/d9;

    iput-object v0, p0, Lyads/nf6;->d:Lyads/lf6;

    new-instance v1, Lyads/wl4;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p0

    move-object v6, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lyads/wl4;-><init>(Landroid/content/Context;Lyads/nf6;Lyads/td6;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/we3;Lyads/nl4;Lyads/aj4;Lyads/b05;Lyads/uj5;Ly22;)V

    iput-object v1, p0, Lyads/nf6;->e:Lyads/wl4;

    new-instance v1, Lyads/kf6;

    check-cast p1, Lyads/do6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/no6;

    invoke-direct {p1}, Lyads/no6;-><init>()V

    invoke-direct {v1, p1}, Lyads/kf6;-><init>(Lyads/no6;)V

    iput-object v1, p0, Lyads/nf6;->f:Lyads/kf6;

    move-object/from16 p1, p9

    iget-object p1, p1, Lyads/we4;->a:Lyads/il4;

    iput-object p1, p0, Lyads/nf6;->g:Lyads/il4;

    iget-object p0, v8, Lyads/we3;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 121
    iget-object v0, p0, Lyads/nf6;->h:Lyads/jf6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/jf6;->k()V

    .line 122
    :cond_0
    iget-object p0, p0, Lyads/nf6;->d:Lyads/lf6;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lyads/lf6;->a:Lyads/jf6;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 6

    check-cast p1, Lyads/am4;

    iget-object p0, p0, Lyads/nf6;->e:Lyads/wl4;

    iget-object v0, p0, Lyads/wl4;->e:Lyads/tl4;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v4, v0, Lyads/tl4;->m:Lyads/yv4;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lyads/yv4;->b:Lyads/wa6;

    invoke-interface {v4}, Lyads/wa6;->stop()V

    iget-object v4, p1, Lyads/am4;->c:Lyads/sk4;

    iget-object v4, v4, Lyads/sk4;->b:Lyads/wz3;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lyads/wz3;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-interface {v4}, Lyads/wz3;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-interface {v4}, Lyads/wz3;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, v0, Lyads/tl4;->h:Lyads/bm4;

    invoke-virtual {v0, p1}, Lyads/bm4;->b(Lyads/am4;)V

    :cond_3
    iput-object v3, p0, Lyads/wl4;->e:Lyads/tl4;

    iget-object v0, p0, Lyads/wl4;->f:Lyads/zi4;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lyads/wl4;->a:Lyads/aj4;

    iget-object v4, v4, Lyads/aj4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v3, p0, Lyads/wl4;->f:Lyads/zi4;

    :cond_4
    invoke-virtual {p1, v3}, Lyads/am4;->setOnAttachStateChangeListener(Lyads/jl4;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 3

    .line 101
    check-cast p3, Lyads/r96;

    .line 102
    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyads/am4;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {p2, v0, p1}, Lyads/vf6;->a(Landroid/view/View;Lyads/ak;)V

    if-eqz p3, :cond_1

    .line 104
    iget-object v1, p0, Lyads/nf6;->h:Lyads/jf6;

    if-eqz v1, :cond_1

    .line 105
    iget-object p3, p3, Lyads/r96;->a:Ljava/util/List;

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/ja6;

    .line 106
    iget-object v1, p3, Lyads/ja6;->a:Lyads/p90;

    .line 107
    new-instance v2, Lyads/xc6;

    invoke-direct {v2, v0, v1}, Lyads/xc6;-><init>(Lyads/am4;Lyads/p90;)V

    .line 108
    invoke-interface {p2, p1, v2}, Lyads/vf6;->a(Lyads/ak;Lyads/f00;)V

    .line 109
    iget-object p0, p0, Lyads/nf6;->e:Lyads/wl4;

    .line 110
    iget-object p1, p0, Lyads/wl4;->c:Lyads/uc6;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget-object p1, p3, Lyads/ja6;->d:Lyads/aw4;

    .line 113
    check-cast p1, Lyads/ol4;

    .line 114
    iget p2, p1, Lyads/ol4;->c:I

    if-eqz p2, :cond_0

    .line 115
    iget p1, p1, Lyads/ol4;->b:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x3fe38e39

    .line 116
    :goto_0
    invoke-virtual {v0, p1}, Lyads/am4;->setAspectRatio(F)V

    .line 117
    iget-object p0, p0, Lyads/wl4;->e:Lyads/tl4;

    if-eqz p0, :cond_1

    .line 118
    iget-object p0, p0, Lyads/tl4;->b:Lyads/nf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lyads/am4;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 120
    check-cast p1, Lyads/am4;

    check-cast p2, Lyads/r96;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lyads/am4;

    move-object/from16 v7, p2

    check-cast v7, Lyads/r96;

    iget-object v2, v7, Lyads/r96;->a:Ljava/util/List;

    invoke-static {v2}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ja6;

    iget-object v3, v0, Lyads/nf6;->f:Lyads/kf6;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lyads/jb6;->e:Lyads/jb6;

    invoke-virtual {v3, v4, v2, v5}, Lyads/kf6;->a(Landroid/content/Context;Lyads/ja6;Lyads/jb6;)Lyads/jf6;

    move-result-object v11

    iput-object v11, v0, Lyads/nf6;->h:Lyads/jf6;

    iget-object v3, v0, Lyads/nf6;->d:Lyads/lf6;

    iput-object v11, v3, Lyads/lf6;->a:Lyads/jf6;

    iget-object v3, v0, Lyads/nf6;->g:Lyads/il4;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lyads/nf6;->c:Lyads/d9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/ja6;->f:Ljava/lang/String;

    sget-object v6, Lyads/xt2;->c:Lyads/xt2;

    invoke-static {v4, v6}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v4

    sget-object v6, Lyads/ql4;->b:[Lyads/ql4;

    const-string v6, "first_video_preloading_strategy"

    iget-object v5, v5, Lyads/d9;->v:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v3, v3, Lyads/il4;->c:Lyads/ix2;

    iget-object v4, v3, Lyads/ix2;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, v3, Lyads/ix2;->b:Lyads/al4;

    iget-object v5, v3, Lyads/al4;->b:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/qk2;

    if-eqz v5, :cond_0

    iget v8, v5, Lyads/qk2;->c:I

    add-int/2addr v8, v6

    iput v8, v5, Lyads/qk2;->c:I

    iget-object v5, v5, Lyads/qk2;->a:Lyads/nk2;

    const/4 v8, 0x7

    invoke-virtual {v5, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, v3, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw v0

    :cond_1
    iget-object v3, v3, Lyads/il4;->b:Lyads/sl0;

    invoke-virtual {v3, v2}, Lyads/sl0;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, v0, Lyads/nf6;->e:Lyads/wl4;

    iget-object v2, v0, Lyads/wl4;->d:Lyads/xk4;

    iget-object v3, v7, Lyads/r96;->a:Ljava/util/List;

    invoke-static {v3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ja6;

    iget-object v4, v2, Lyads/xk4;->b:Lyads/wk4;

    iget-object v4, v4, Lyads/wk4;->a:Lyads/br2;

    invoke-virtual {v4, v3}, Lyads/br2;->a(Lyads/ja6;)Lyads/gr2;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-boolean v9, v4, Lyads/gr2;->j:Z

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move-object v6, v4

    goto/16 :goto_b

    :cond_3
    :goto_3
    iget-object v4, v2, Lyads/xk4;->a:Lyads/ql0;

    new-instance v9, Lyads/zp2;

    iget-object v10, v4, Lyads/ql0;->d:Landroid/content/Context;

    iget-object v12, v4, Lyads/ql0;->a:Lyads/e4;

    iget-object v13, v4, Lyads/ql0;->b:Lyads/bf5;

    iget-object v4, v4, Lyads/ql0;->c:Lyads/d9;

    invoke-direct {v9, v10, v12, v13, v4}, Lyads/zp2;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    iget-object v4, v9, Lyads/zp2;->d:Lyads/zt3;

    iget-object v10, v9, Lyads/zp2;->e:Lyads/fe5;

    if-eqz v10, :cond_4

    iget-object v10, v10, Lyads/fe5;->O0:Lyads/lv4;

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_a

    iget-object v4, v10, Lyads/lv4;->a:Ljava/lang/Integer;

    const v12, 0xc350

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v15, v4

    goto :goto_5

    :cond_5
    move v15, v12

    :goto_5
    iget-object v4, v10, Lyads/lv4;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_6
    iget-object v4, v10, Lyads/lv4;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6

    :cond_7
    const/16 v4, 0x9c4

    :goto_6
    iget-object v13, v10, Lyads/lv4;->d:Ljava/lang/Integer;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_7

    :cond_8
    const/16 v13, 0x1388

    :goto_7
    const-string v14, "bufferForPlaybackMs"

    const-string v8, "0"

    invoke-static {v4, v5, v14, v8}, Lyads/kl0;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "bufferForPlaybackAfterRebufferMs"

    const-string v14, "0"

    invoke-static {v13, v5, v8, v14}, Lyads/kl0;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "minBufferMs"

    const-string v14, "bufferForPlaybackMs"

    invoke-static {v15, v4, v8, v14}, Lyads/kl0;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "minBufferMs"

    const-string v14, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v15, v13, v8, v14}, Lyads/kl0;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    const-string v14, "minBufferMs"

    invoke-static {v12, v15, v8, v14}, Lyads/kl0;->a(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, v10, Lyads/lv4;->e:Ljava/lang/Integer;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_8
    move/from16 v19, v8

    goto :goto_9

    :cond_9
    const/4 v8, -0x1

    goto :goto_8

    :goto_9
    new-instance v14, Lyads/aj0;

    invoke-direct {v14}, Lyads/aj0;-><init>()V

    move/from16 v18, v13

    new-instance v13, Lyads/kl0;

    const/16 v20, 0x1

    move/from16 v17, v4

    move/from16 v16, v12

    invoke-direct/range {v13 .. v20}, Lyads/kl0;-><init>(Lyads/aj0;IIIIIZ)V

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    :goto_a
    new-instance v4, Lyads/wp2;

    iget-object v8, v9, Lyads/zp2;->f:Landroid/content/Context;

    invoke-direct {v4, v8}, Lyads/wp2;-><init>(Landroid/content/Context;)V

    new-instance v8, Lyads/zl0;

    iget-object v10, v9, Lyads/zp2;->f:Landroid/content/Context;

    invoke-direct {v8, v10}, Lyads/zl0;-><init>(Landroid/content/Context;)V

    iput-boolean v6, v8, Lyads/zl0;->d:Z

    invoke-virtual {v4, v8}, Lyads/wp2;->c(Lyads/zl0;)Lyads/wp2;

    move-result-object v4

    if-eqz v13, :cond_b

    invoke-virtual {v4, v13}, Lyads/wp2;->b(Lyads/kl0;)V

    :cond_b
    iget-boolean v8, v4, Lyads/wp2;->r:Z

    if-nez v8, :cond_11

    iput-boolean v6, v4, Lyads/wp2;->r:Z

    new-instance v6, Lyads/eq2;

    invoke-direct {v6, v4}, Lyads/eq2;-><init>(Lyads/wp2;)V

    new-instance v4, Lyads/s14;

    iget-object v8, v9, Lyads/zp2;->f:Landroid/content/Context;

    invoke-direct {v4, v8}, Lyads/s14;-><init>(Landroid/content/Context;)V

    new-instance v8, Lyads/fe6;

    iget-object v10, v9, Lyads/zp2;->f:Landroid/content/Context;

    iget-object v12, v9, Lyads/zp2;->a:Lyads/e4;

    iget-object v13, v9, Lyads/zp2;->b:Lyads/bf5;

    iget-object v9, v9, Lyads/zp2;->c:Lyads/d9;

    invoke-direct {v8, v10, v12, v13, v9}, Lyads/fe6;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance v9, Lyads/gr2;

    invoke-direct {v9, v6, v4, v8}, Lyads/gr2;-><init>(Lyads/eq2;Lyads/s14;Lyads/fe6;)V

    iget-object v2, v2, Lyads/xk4;->b:Lyads/wk4;

    iget-object v2, v2, Lyads/wk4;->a:Lyads/br2;

    invoke-virtual {v2, v3, v9}, Lyads/br2;->a(Lyads/ja6;Lyads/gr2;)V

    move-object v6, v9

    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Lyads/wl4;->b:Lyads/ul4;

    new-instance v10, Lyads/cb6;

    iget-object v4, v2, Lyads/ul4;->c:Lyads/e4;

    iget-object v8, v2, Lyads/ul4;->e:Lyads/d9;

    invoke-direct {v10, v4, v8}, Lyads/cb6;-><init>(Lyads/e4;Lyads/d9;)V

    new-instance v4, Lyads/tl4;

    move-object v8, v4

    iget-object v4, v2, Lyads/ul4;->e:Lyads/d9;

    move v9, v5

    iget-object v5, v2, Lyads/ul4;->d:Lyads/bf5;

    move-object v12, v8

    iget-object v8, v2, Lyads/ul4;->b:Lyads/td6;

    move v13, v9

    iget-object v9, v2, Lyads/ul4;->a:Lyads/nf6;

    move-object v14, v12

    iget-object v12, v2, Lyads/ul4;->f:Lyads/we3;

    move v15, v13

    iget-object v13, v2, Lyads/ul4;->g:Lyads/nl4;

    move-object/from16 v16, v14

    iget-object v14, v2, Lyads/ul4;->h:Lyads/b05;

    move/from16 v17, v15

    iget-object v15, v2, Lyads/ul4;->i:Lyads/uj5;

    iget-object v2, v2, Lyads/ul4;->j:Ly22;

    move-object/from16 v21, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v16}, Lyads/tl4;-><init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;Lyads/gr2;Lyads/r96;Lyads/td6;Lyads/nf6;Lyads/cb6;Lyads/jf6;Lyads/we3;Lyads/nl4;Lyads/b05;Lyads/uj5;Ly22;)V

    move-object v14, v2

    iput-object v14, v0, Lyads/wl4;->e:Lyads/tl4;

    iget-object v2, v14, Lyads/tl4;->f:Lyads/uk4;

    iget-object v3, v14, Lyads/tl4;->a:Lyads/td6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lyads/td6;->d:Ljava/lang/Double;

    iget-object v5, v2, Lyads/uk4;->b:Lyads/yk4;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_c

    :cond_c
    const-wide/16 v7, 0x0

    :goto_c
    iget-object v4, v5, Lyads/yk4;->a:Lyads/gr2;

    double-to-float v5, v7

    invoke-virtual {v4, v5}, Lyads/gr2;->a(F)V

    iget-object v3, v3, Lyads/td6;->a:Lyads/se6;

    iget-object v2, v2, Lyads/uk4;->a:Lyads/gr2;

    iget-boolean v4, v2, Lyads/gr2;->j:Z

    if-nez v4, :cond_d

    iget-object v2, v2, Lyads/gr2;->e:Lyads/pe6;

    iput-object v3, v2, Lyads/pe6;->e:Lyads/se6;

    invoke-virtual {v2}, Lyads/pe6;->b()V

    :cond_d
    iget-object v2, v14, Lyads/tl4;->h:Lyads/bm4;

    invoke-virtual {v2, v1}, Lyads/bm4;->a(Lyads/am4;)V

    iget-object v2, v1, Lyads/am4;->a:Lyads/xd6;

    iget-object v3, v14, Lyads/tl4;->g:Lyads/a15;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lyads/xd6;->b:Landroid/widget/ImageView;

    iget-object v2, v2, Lyads/xd6;->a:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_f

    iget-object v5, v3, Lyads/a15;->a:Lyads/r96;

    iget-object v5, v5, Lyads/r96;->c:Lyads/rd3;

    if-eqz v5, :cond_f

    iget-object v5, v3, Lyads/a15;->d:Lmb4;

    const/4 v7, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v5, v7}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_e
    iget-object v5, v3, Lyads/a15;->c:Ly22;

    new-instance v8, Lyads/z05;

    invoke-direct {v8, v3, v4, v2, v7}, Lyads/z05;-><init>(Lyads/a15;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Le02;)V

    const/4 v2, 0x3

    invoke-static {v5, v7, v7, v8, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v2

    iput-object v2, v3, Lyads/a15;->d:Lmb4;

    goto :goto_d

    :cond_f
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object v2, v14, Lyads/tl4;->j:Lyads/yv4;

    invoke-virtual {v14, v2}, Lyads/tl4;->a(Lyads/yv4;)V

    new-instance v2, Lyads/zi4;

    invoke-direct {v2, v6}, Lyads/zi4;-><init>(Lyads/gr2;)V

    iput-object v2, v0, Lyads/wl4;->f:Lyads/zi4;

    iget-object v0, v0, Lyads/wl4;->a:Lyads/aj4;

    iget-object v3, v0, Lyads/aj4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lyads/aj4;->b:Z

    if-eqz v0, :cond_10

    invoke-virtual {v6}, Lyads/gr2;->a()V

    :cond_10
    new-instance v0, Lyads/bl4;

    invoke-direct {v0, v6, v1}, Lyads/bl4;-><init>(Lyads/gr2;Lyads/am4;)V

    invoke-virtual {v1, v0}, Lyads/am4;->setOnAttachStateChangeListener(Lyads/jl4;)V

    return-void

    :cond_11
    invoke-static {}, Lud;->g()V

    return-void
.end method
