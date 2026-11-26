.class public final Lyads/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n2;
.implements Lyads/c60;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/view/Window;

.field public final d:Lyads/pg4;

.field public final e:Lyads/d9;

.field public final f:Lyads/x2;

.field public final g:Lyads/e4;

.field public final h:Lyads/fe5;

.field public final i:Lyads/m03;

.field public final j:Lyads/r03;

.field public final k:Lyads/c13;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/view/Window;Lyads/pg4;Lyads/d9;Lyads/x2;Lyads/i2;Lyads/e4;Lyads/bf5;ILyads/fe5;)V
    .locals 12

    move-object/from16 v10, p4

    move-object/from16 v8, p8

    new-instance v0, Lyads/m03;

    invoke-direct {v0, p1}, Lyads/m03;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lyads/r03;

    iget-object v3, v8, Lyads/e4;->a:Lyads/n70;

    invoke-direct {v2, v3}, Lyads/r03;-><init>(Lyads/n70;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/m2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lyads/m2;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lyads/m2;->c:Landroid/view/Window;

    iput-object v10, p0, Lyads/m2;->d:Lyads/pg4;

    move-object/from16 v5, p5

    iput-object v5, p0, Lyads/m2;->e:Lyads/d9;

    move-object/from16 v7, p6

    iput-object v7, p0, Lyads/m2;->f:Lyads/x2;

    iput-object v8, p0, Lyads/m2;->g:Lyads/e4;

    move-object/from16 v6, p11

    iput-object v6, p0, Lyads/m2;->h:Lyads/fe5;

    iput-object v0, p0, Lyads/m2;->i:Lyads/m03;

    iput-object v2, p0, Lyads/m2;->j:Lyads/r03;

    new-instance v0, Lyads/j13;

    move-object v4, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v9, p9

    move/from16 v6, p10

    move-object v2, v5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v9}, Lyads/j13;-><init>(Landroid/app/Activity;Lyads/d9;Landroid/widget/RelativeLayout;Lyads/m2;Lyads/i2;ILyads/x2;Lyads/e4;Lyads/bf5;)V

    new-instance v2, Lyads/ao1;

    iget-object v3, v0, Lyads/j13;->c:Lyads/bf5;

    check-cast v3, Lyads/do6;

    iget-object v3, v3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v3, v3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v3

    invoke-direct {v2, v10, p0, v3}, Lyads/ao1;-><init>(Lyads/pg4;Lyads/m2;Lyads/q84;)V

    new-instance v6, Lyads/oa5;

    invoke-direct {v6, p1, v2, p0}, Lyads/oa5;-><init>(Landroid/app/Activity;Lyads/ao1;Lyads/m2;)V

    iget-object v2, v0, Lyads/j13;->f:Lyads/c4;

    iget-object v3, v0, Lyads/j13;->a:Lyads/d9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lyads/d9;->a:Lyads/n70;

    sget-object v5, Lyads/n70;->f:Lyads/n70;

    if-ne v3, v5, :cond_0

    new-instance v3, Lyads/p95;

    iget-object v2, v2, Lyads/c4;->a:Lyads/x2;

    invoke-direct {v3, v2, v6}, Lyads/p95;-><init>(Lyads/x2;Lyads/oa5;)V

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lyads/ep3;

    invoke-direct {v3}, Lyads/ep3;-><init>()V

    goto :goto_0

    :goto_1
    invoke-interface {v10}, Lyads/pg4;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lyads/fo1;

    iget-object v9, v9, Lyads/fo1;->a:Ljava/lang/String;

    sget-object v11, Lyads/un0;->b:[Lyads/un0;

    const-string v11, "ad"

    invoke-static {v9, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v5, v3

    :cond_3
    invoke-interface {v10}, Lyads/pg4;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lyads/fo1;

    iget-object v9, v9, Lyads/fo1;->a:Ljava/lang/String;

    sget-object v11, Lyads/un0;->b:[Lyads/un0;

    const-string v11, "pack_shot"

    invoke-static {v9, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_5
    move-object v7, v3

    :goto_3
    check-cast v7, Lyads/fo1;

    goto :goto_4

    :cond_6
    move-object v7, v3

    :goto_4
    invoke-interface {v10}, Lyads/pg4;->b()Lyads/vg4;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v2, Lyads/vg4;->j:Lyads/n6;

    move-object v11, v2

    goto :goto_5

    :cond_7
    move-object v11, v3

    :goto_5
    iget-object v2, v0, Lyads/j13;->a:Lyads/d9;

    iget-object v2, v2, Lyads/d9;->p:Ljava/lang/String;

    sget-object v9, Lyads/rn0;->b:[Lyads/rn0;

    const-string v9, "ad_pod"

    invoke-static {v2, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v11, :cond_a

    instance-of v2, v10, Lyads/ni4;

    if-nez v2, :cond_9

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    move-object v1, v5

    move-object v4, v6

    goto :goto_7

    :cond_9
    :goto_6
    new-instance v2, Lyads/r6;

    iget-object v3, v0, Lyads/j13;->d:Lyads/bj4;

    move-object v4, v6

    move-object v6, v7

    iget-object v7, v0, Lyads/j13;->b:Landroid/widget/RelativeLayout;

    iget-object v10, v0, Lyads/j13;->e:Lyads/sr3;

    move-object v9, p0

    move-object v1, p1

    move-object v0, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v11}, Lyads/r6;-><init>(Landroid/app/Activity;Lyads/pg4;Lyads/bj4;Lyads/oa5;Ljava/util/ArrayList;Lyads/fo1;Landroid/widget/RelativeLayout;Lyads/a3;Lyads/m2;Lyads/sr3;Lyads/n6;)V

    move-object v2, v0

    goto :goto_8

    :cond_a
    move-object v4, v6

    move-object v1, v5

    :goto_7
    new-instance v5, Lyads/u25;

    invoke-direct {v5, v8}, Lyads/u25;-><init>(Lyads/a3;)V

    new-instance v7, Lyads/bx5;

    new-instance v2, Lyads/l15;

    invoke-direct {v2}, Lyads/l15;-><init>()V

    new-instance v6, Lyads/zk5;

    iget-object v8, v0, Lyads/j13;->a:Lyads/d9;

    invoke-direct {v6, v8}, Lyads/zk5;-><init>(Lyads/d9;)V

    new-instance v8, Lyads/el5;

    iget-object v9, v0, Lyads/j13;->a:Lyads/d9;

    invoke-direct {v8, v9}, Lyads/el5;-><init>(Lyads/d9;)V

    new-instance v9, Lyads/dl5;

    invoke-direct {v9}, Lyads/dl5;-><init>()V

    invoke-direct {v7, v2, v6, v8, v9}, Lyads/bx5;-><init>(Lyads/l15;Lyads/b3;Lyads/ek0;Lyads/y00;)V

    iget-object v2, v0, Lyads/j13;->e:Lyads/sr3;

    move-object v6, v2

    iget-object v2, v0, Lyads/j13;->b:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lyads/j13;->d:Lyads/bj4;

    new-instance v8, Lyads/fl5;

    invoke-direct {v8}, Lyads/fl5;-><init>()V

    if-eqz v1, :cond_b

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/fo1;

    :cond_b
    move-object v9, v3

    const/4 v10, 0x0

    move-object v1, v4

    move-object v4, v0

    move-object v0, v6

    move-object v6, v1

    move-object v1, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v10}, Lyads/sr3;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;

    move-result-object v0

    new-instance v2, Lyads/i13;

    invoke-direct {v2, v0, p0}, Lyads/i13;-><init>(Lyads/rr3;Lyads/m2;)V

    :goto_8
    iput-object v2, p0, Lyads/m2;->k:Lyads/c13;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lyads/m2;->f:Lyads/x2;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lyads/m2;->f:Lyads/x2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lyads/m2;->g:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->a:Lyads/n70;

    sget-object v1, Lyads/n70;->i:Lyads/n70;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lyads/m2;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lyads/b9;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lyads/m2;->k:Lyads/c13;

    invoke-interface {v0}, Lyads/c13;->c()V

    iget-object v0, p0, Lyads/m2;->f:Lyads/x2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lyads/m2;->f:Lyads/x2;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object p0, p0, Lyads/m2;->i:Lyads/m03;

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lyads/m03;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lyads/fe5;->s:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/m2;->f:Lyads/x2;

    iget-object p0, p0, Lyads/x2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lyads/m2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iget-object v2, p0, Lyads/m2;->f:Lyads/x2;

    invoke-virtual {v2, v0}, Lyads/x2;->a(I)V

    iget-object v0, p0, Lyads/m2;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lyads/m2;->c:Landroid/view/Window;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lyads/m2;->c:Landroid/view/Window;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lyads/m2;->j:Lyads/r03;

    iget-object v2, p0, Lyads/m2;->c:Landroid/view/Window;

    iget-object v3, p0, Lyads/m2;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3}, Lyads/r03;->a(Landroid/view/Window;Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lyads/m2;->e:Lyads/d9;

    iget-boolean v0, v0, Lyads/d9;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/m2;->h:Lyads/fe5;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lyads/fe5;->I0:Z

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lyads/m2;->j:Lyads/r03;

    iget-object p0, p0, Lyads/m2;->c:Landroid/view/Window;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lyads/m2;->k:Lyads/c13;

    invoke-interface {p0}, Lyads/c13;->invalidate()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    iget-object v0, p0, Lyads/m2;->d:Lyads/pg4;

    invoke-interface {v0}, Lyads/pg4;->destroy()V

    iget-object p0, p0, Lyads/m2;->f:Lyads/x2;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method
