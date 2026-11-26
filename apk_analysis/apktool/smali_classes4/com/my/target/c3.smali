.class public final Lcom/my/target/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/c3$a;
    }
.end annotation


# instance fields
.field public final b:Lxda;

.field public final c:Lt2a;

.field public final d:Lcom/my/target/m2$a;

.field public final e:Lcom/my/target/hg;

.field public final f:Loh5;

.field public final g:Lcom/my/target/dg;

.field public final h:Lcom/my/target/m2$b;

.field public final i:Landroid/os/Handler;

.field public final j:Z

.field public final k:Lwea;

.field public l:Lcom/my/target/t2;

.field public final m:Lcom/my/target/v;

.field public n:Lcom/my/target/c3$a;

.field public o:J

.field public final p:J

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/my/target/f3;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lrd0;)V
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    iput-object v2, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/my/target/c3;->s:Z

    new-instance v2, Lwea;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lwea;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/my/target/c3;->k:Lwea;

    iput-object v1, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object v2, v1, Lao9;->r:Lt2a;

    iput-object v2, p0, Lcom/my/target/c3;->c:Lt2a;

    iput-object v8, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    move-object/from16 v6, p4

    iput-object v6, p0, Lcom/my/target/c3;->h:Lcom/my/target/m2$b;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    new-instance v3, Lcom/my/target/dg;

    iget-object v4, p1, Lcom/my/target/f3;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/my/target/dg;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    iget-object v5, v1, Lxda;->X:Lev9;

    iget v5, v5, Lev9;->h:I

    invoke-interface {v3, v5}, Liq9;->setColor(I)V

    move-object v5, v2

    new-instance v2, Lcom/my/target/bg;

    iget-object v7, p1, Lcom/my/target/f3;->d:Lon9;

    invoke-direct {v2, v7, v4, p0}, Lcom/my/target/bg;-><init>(Lon9;Landroid/content/Context;Lcom/my/target/c3;)V

    invoke-interface {v2, v1}, Lnn9;->setBanner(Lxda;)V

    iget-object v7, v1, Lxda;->Z:Lkha;

    iget-object v10, v1, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_1

    new-instance v5, Lcom/my/target/core/ui/views/promo/style2/cards/b;

    invoke-direct {v5, v4}, Lcom/my/target/core/ui/views/promo/style2/cards/b;-><init>(Landroid/content/Context;)V

    new-instance v4, Lmia;

    invoke-direct {v4, v5, v10, p0}, Lmia;-><init>(Lcom/my/target/core/ui/views/promo/style2/cards/b;Ljava/util/ArrayList;Lcom/my/target/c3;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfo9;

    new-instance v11, Lcom/my/target/n2;

    invoke-direct {v11, v10, v4}, Lcom/my/target/n2;-><init>(Lfo9;Lmia;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lmda;

    invoke-direct {v4, v6, p1}, Lmda;-><init>(Ljava/util/ArrayList;Lcom/my/target/f3;)V

    invoke-virtual {v5, v4}, Lcom/my/target/core/ui/views/promo/style2/cards/b;->setAdapter(Lmda;)V

    move-object v0, p1

    move-object v4, v5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/f3;->a(Lxda;Lcom/my/target/bg;Lcom/my/target/dg;Landroid/widget/FrameLayout;Lcom/my/target/c3;)Lcom/my/target/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_1
    move-object v0, v3

    if-eqz v7, :cond_3

    iget-boolean v1, v5, Lt2a;->n:Z

    iput-boolean v1, p0, Lcom/my/target/c3;->j:Z

    new-instance v1, Lcom/my/target/f0;

    invoke-direct {v1, v4}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    move-object v5, p0

    move-object v3, v0

    move-object v4, v1

    move-object v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/f3;->a(Lxda;Lcom/my/target/bg;Lcom/my/target/dg;Landroid/widget/FrameLayout;Lcom/my/target/c3;)Lcom/my/target/hg;

    move-result-object v10

    move-object v11, v1

    move-object v13, v3

    move-object v2, v4

    iput-object v10, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {v7}, Lkha;->c()I

    move-result v0

    invoke-virtual {v7}, Lkha;->j()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/my/target/f0;->b(II)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Lcom/my/target/t2;

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v4, p4

    move-object v1, v7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/my/target/t2;-><init>(Lkha;Lcom/my/target/f0;Lcom/my/target/c3;Lcom/my/target/m2$b;Lcom/my/target/f3;Lcom/my/target/n;Lrd0;)V

    iput-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    iget v0, v1, Lao9;->z:F

    invoke-interface {v13, v0}, Liq9;->setMaxTime(F)V

    iget-object v0, v1, Lkha;->S:Lh14;

    if-nez v0, :cond_2

    iget-object v0, v11, Lao9;->p:Lh14;

    :cond_2
    invoke-interface {v10, v0}, Lgw9;->setBackgroundImage(Lh14;)V

    move-object v0, v10

    move-object v1, v11

    goto :goto_1

    :cond_3
    move-object/from16 v11, p2

    move-object v13, v0

    const/4 v4, 0x0

    move-object v5, p0

    move-object v0, p1

    move-object v1, v11

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/f3;->a(Lxda;Lcom/my/target/bg;Lcom/my/target/dg;Landroid/widget/FrameLayout;Lcom/my/target/c3;)Lcom/my/target/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {v0}, Lcom/my/target/hg;->f()V

    iget-object v2, v1, Lao9;->p:Lh14;

    invoke-interface {v0, v2}, Lgw9;->setBackgroundImage(Lh14;)V

    :goto_1
    iget-object v2, v0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    invoke-interface {v0, v1}, Lgw9;->setBanner(Lxda;)V

    new-instance v3, Loh5;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Loh5;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/my/target/c3;->f:Loh5;

    iget-object v3, v1, Lxda;->Z:Lkha;

    const/16 v4, 0x8

    const-wide/16 v6, 0x0

    const/high16 v10, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_7

    iget-boolean v11, v3, Lkha;->Y:Z

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v11, v3, Lkha;->c0:Z

    if-eqz v11, :cond_6

    iget v2, v3, Lkha;->f0:F

    mul-float/2addr v2, v10

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/my/target/c3;->p:J

    iput-wide v2, p0, Lcom/my/target/c3;->o:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    sget-object v2, Lcom/my/target/c3$a;->c:Lcom/my/target/c3$a;

    iput-object v2, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    invoke-virtual {p0}, Lcom/my/target/c3;->n()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/my/target/c3;->m()V

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    :goto_2
    iget-boolean v3, v1, Ljia;->V:Z

    if-eqz v3, :cond_9

    iget v2, v1, Ljia;->S:F

    mul-float/2addr v2, v10

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/my/target/c3;->p:J

    iput-wide v2, p0, Lcom/my/target/c3;->o:J

    cmp-long v2, v2, v6

    const/4 v3, 0x0

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "InterstitialPromoPresenterS2: Banner will be allowed to close in "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/my/target/c3;->o:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/my/target/c3$a;->b:Lcom/my/target/c3$a;

    iput-object v2, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    invoke-virtual {p0}, Lcom/my/target/c3;->n()V

    goto :goto_4

    :cond_8
    const-string v2, "InterstitialPromoPresenterS2: Banner is allowed to close"

    invoke-static {v3, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/c3;->m()V

    :goto_3
    move v9, v12

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    iput-object v3, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    iget-object v2, v2, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v9, v2, Lcom/my/target/r;->i:Z

    invoke-virtual {v8, v1, v0}, Lcom/my/target/m2$a;->o(Lao9;Landroid/view/View;)V

    iget-object v0, v1, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_b

    :goto_5
    return-void

    :cond_b
    new-instance v1, Lex0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/my/target/v;

    invoke-direct {v2, v0, v1}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v2, p0, Lcom/my/target/c3;->m:Lcom/my/target/v;

    new-instance v0, Lm71;

    invoke-direct {v0, p0}, Lm71;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/my/target/v;->c:Lgv9;

    return-void
.end method


# virtual methods
.method public final a(Lao9;ILpfa;)V
    .locals 7

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    iget-object v1, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    if-eqz p1, :cond_0

    invoke-static {p3}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void

    :cond_0
    move v4, p2

    invoke-static {p3}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/my/target/c3;->b:Lxda;

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final b(Le6a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/my/target/c3;->j:Z

    iget-object v1, p0, Lcom/my/target/c3;->b:Lxda;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lup9;

    const/16 v3, 0x2000

    invoke-direct {v0, v3, p1}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/my/target/c3;->r:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/c3;->c:Lt2a;

    iget-boolean v0, v0, Lt2a;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lup9;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lup9;-><init>(ILe6a;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    :goto_1
    invoke-virtual {p0, v3, v2, v0}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, v1, Lxda;->Z:Lkha;

    if-eqz p1, :cond_6

    iget-boolean p1, p1, Lkha;->e0:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {p1, v2}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {p1, v2, v3}, Lcom/my/target/hg;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/my/target/hg;->e(Z)V

    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    iget-object p1, p0, Lcom/my/target/c3;->k:Lwea;

    const-wide/16 v0, 0xfa0

    iget-object v3, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/my/target/c3;->q:Z

    return-void
.end method

.method public final c(Z)V
    .locals 5

    iget-object v0, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object v0, v0, Lxda;->X:Lev9;

    iget v1, v0, Lev9;->g:I

    iget v0, v0, Lev9;->j:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    if-eqz p1, :cond_0

    move v1, v0

    :cond_0
    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-interface {p0, v1}, Lgw9;->setPanelColor(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object v0, v0, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    iget-object v1, p0, Lcom/my/target/c3;->m:Lcom/my/target/v;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/my/target/v;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_2
    invoke-virtual {v1, p0}, Lcom/my/target/v;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/c3;->t:Z

    iget-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/t2;->e()V

    iget-object v1, v0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->destroy()V

    iget-object v0, v0, Lcom/my/target/t2;->e:Lcom/my/target/o1;

    invoke-virtual {v0}, Lcom/my/target/o1;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    return-void
.end method

.method public final g(I)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/c3;->s:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object p1, p1, Lxda;->Z:Lkha;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lkha;->e0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    iget-object v1, p1, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/my/target/t2;->e()V

    invoke-virtual {v0}, Lcom/my/target/k0;->i()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/my/target/n;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/my/target/t2;->p()V

    invoke-virtual {v0}, Lcom/my/target/k0;->l()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/my/target/t2;->i()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-interface {p0}, Lgw9;->getCloseButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h(Le6a;)V
    .locals 3

    iget-boolean v0, p0, Lcom/my/target/c3;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object v1, v0, Lao9;->Q:Lpp9;

    iget-boolean v1, v1, Lpp9;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Lup9;

    const/16 v2, 0x2000

    invoke-direct {v1, v2, p1}, Lup9;-><init>(ILe6a;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/my/target/c3;->q:Z

    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    iget-object p1, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {p1}, Lcom/my/target/hg;->f()V

    iput-boolean v0, p0, Lcom/my/target/c3;->q:Z

    :cond_2
    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->d(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/my/target/hg;->b(Z)V

    invoke-virtual {v0}, Lcom/my/target/hg;->f()V

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->e(Z)V

    iget-object v0, v0, Lcom/my/target/hg;->b:Lcom/my/target/e6;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    invoke-interface {v0, v1}, Liq9;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/my/target/c3;->m()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/my/target/t2;->d:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->a()V

    iget-object p0, p0, Lcom/my/target/t2;->g:Lcom/my/target/k0;

    invoke-interface {v0}, Lcom/my/target/n;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/k0;->d(Z)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->d(Z)V

    invoke-virtual {v0}, Lcom/my/target/hg;->f()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/my/target/hg;->b(Z)V

    invoke-virtual {v0, v1}, Lcom/my/target/hg;->e(Z)V

    iget-object p0, p0, Lcom/my/target/c3;->g:Lcom/my/target/dg;

    invoke-interface {p0, v1}, Liq9;->setVisible(Z)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    iget-object v1, v0, Lcom/my/target/hg;->d:Lcom/my/target/e6;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    iget-object v0, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/c3;->f:Loh5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    iput-object v0, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    invoke-virtual {v2}, Lcom/my/target/m2$a;->e()V

    const/4 p0, 0x1

    iget-object v0, v2, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p0, v0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/c3;->f:Loh5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/my/target/c3;->o:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/my/target/c3;->d:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    iget-wide v0, p0, Lcom/my/target/c3;->p:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/my/target/c3;->o:J

    long-to-float v3, v1

    sub-float v3, v0, v3

    div-float/2addr v3, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    long-to-int v0, v1

    iget-object p0, p0, Lcom/my/target/c3;->e:Lcom/my/target/hg;

    iget-object p0, p0, Lcom/my/target/hg;->u:Lcom/my/target/fk;

    invoke-virtual {p0, v0}, Lcom/my/target/fk;->setDigit(I)V

    invoke-virtual {p0, v3}, Lcom/my/target/fk;->setProgress(F)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/c3;->q:Z

    iget-object v0, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/c3;->k:Lwea;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/t2;->e()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/c3;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/c3;->f:Loh5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    return-void
.end method

.method public final resume()V
    .locals 4

    iget-boolean v0, p0, Lcom/my/target/c3;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    sget-object v1, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/my/target/c3;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/my/target/c3;->n()V

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    iget-object v0, p0, Lcom/my/target/c3;->b:Lxda;

    iget-object v0, v0, Lxda;->Z:Lkha;

    iget-object v1, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lkha;->Y:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/my/target/c3;->s:Z

    if-nez p0, :cond_2

    invoke-virtual {v1}, Lcom/my/target/t2;->p()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/c3;->l:Lcom/my/target/t2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/t2;->e()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/c3;->o()V

    return-void
.end method
