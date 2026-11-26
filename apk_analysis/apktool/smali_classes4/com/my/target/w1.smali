.class public final Lcom/my/target/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;
.implements Lcom/my/target/z0$a;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/my/target/n$a;
.implements Lcom/my/target/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/w1$a;,
        Lcom/my/target/w1$b;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Lcom/my/target/o1;

.field public final C:Lcom/my/target/rf;

.field public final D:Lcom/my/target/w1$a;

.field public final b:Lcom/my/target/j1;

.field public c:Lcom/my/target/k0;

.field public d:Lcom/my/target/o;

.field public e:Lkha;

.field public final f:Ljava/util/List;

.field public final g:Lcom/my/target/p0$a;

.field public final h:Lx8a;

.field public final i:Lcom/my/target/w4;

.field public final j:Landroid/os/Handler;

.field public k:Lv2a;

.field public l:Z

.field public m:Lcom/my/target/z0;

.field public n:J

.field public final o:Lfp;

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:J

.field public v:F

.field public w:F

.field public x:Lcom/my/target/yj;

.field public y:Lcom/my/target/n;

.field public z:Lcom/my/target/f0;


# direct methods
.method public constructor <init>(Lcom/my/target/j1;Ljava/util/ArrayList;Lcom/my/target/p0$a;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/w1;->l:Z

    iput-boolean v0, p0, Lcom/my/target/w1;->p:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/w1;->q:I

    iput v0, p0, Lcom/my/target/w1;->t:I

    iput-object p1, p0, Lcom/my/target/w1;->b:Lcom/my/target/j1;

    iput-object p2, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    new-instance v0, Lcom/my/target/w1$a;

    invoke-direct {v0, p0}, Lcom/my/target/w1$a;-><init>(Lcom/my/target/w1;)V

    iput-object v0, p0, Lcom/my/target/w1;->D:Lcom/my/target/w1$a;

    iput-object p3, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    new-instance v0, Lx8a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/my/target/w1;->h:Lx8a;

    new-instance v0, Lcom/my/target/w1$b;

    invoke-direct {v0, p0}, Lcom/my/target/w1$b;-><init>(Lcom/my/target/w1;)V

    new-instance v1, Lcom/my/target/w4;

    iget-object p1, p1, Lcom/my/target/j1;->a:Landroid/content/Context;

    invoke-direct {v1, p1, p0, v0, p0}, Lcom/my/target/w4;-><init>(Landroid/content/Context;Lcom/my/target/w1;Lcom/my/target/w1$b;Lcom/my/target/w1;)V

    iput-object v1, p0, Lcom/my/target/w1;->i:Lcom/my/target/w4;

    invoke-interface {v1}, Lefa;->getProgressBar()Lcom/my/target/rf;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/w1;->C:Lcom/my/target/rf;

    iget v2, p0, Lcom/my/target/w1;->t:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2a;

    iput-object v2, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v2, v2, Lv2a;->a:Lxda;

    invoke-virtual {v2}, Lxda;->k()Z

    move-result v3

    iput-boolean v3, p0, Lcom/my/target/w1;->l:Z

    iget v3, v2, Ljia;->T:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/my/target/w1;->v:F

    iget v3, v2, Ljia;->S:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/my/target/w1;->w:F

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/my/target/rf;->setCountBars(I)V

    iget-object p2, v2, Lxda;->Z:Lkha;

    if-eqz p2, :cond_4

    iput-object p2, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object p2, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result p2

    invoke-virtual {v1, v2, p2}, Lcom/my/target/w4;->a(Lxda;Z)V

    invoke-interface {v1}, Lefa;->getInterstitialView()Lcom/my/target/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    instance-of v3, p2, Lj2a;

    if-eqz v3, :cond_1

    check-cast p2, Lj2a;

    invoke-interface {p2}, Lj2a;->getVideoView()Lcom/my/target/f0;

    move-result-object v3

    iput-object v3, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v3, p0}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    iget-object v3, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object v3, v3, Lao9;->a:Ln4a;

    new-instance v5, Lah;

    invoke-direct {v5, p0}, Lah;-><init>(Lcom/my/target/w1;)V

    invoke-static {v3, v5}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object v3

    iput-object v3, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    iget-object v3, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object v5, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v5, v5, Lv2a;->b:Lcom/my/target/e3;

    new-instance v6, Lah;

    invoke-direct {v6, p0}, Lah;-><init>(Lcom/my/target/w1;)V

    invoke-static {v3, v5, v6, p1}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    iget-object p1, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    iget-object v3, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {p1, v3}, Lcom/my/target/o1;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/my/target/w1;->e:Lkha;

    iget p1, p1, Lao9;->z:F

    iput p1, p0, Lcom/my/target/w1;->A:F

    invoke-interface {p2}, Lj2a;->getVideoPlayer()Lcom/my/target/n;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p1, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    invoke-interface {p2}, Lj2a;->getVideoContent()Lcom/my/target/yj;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget p1, p0, Lcom/my/target/w1;->t:I

    iget p2, p0, Lcom/my/target/w1;->w:F

    div-float/2addr p2, v4

    invoke-virtual {v0, p1, p2}, Lcom/my/target/rf;->a(IF)V

    iget-object p1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget-object p2, p0, Lcom/my/target/w1;->e:Lkha;

    iget p2, p2, Lao9;->z:F

    invoke-virtual {p1, p2}, Lcom/my/target/yj;->setDuration(F)V

    iget-object p1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget-object p2, p0, Lcom/my/target/w1;->e:Lkha;

    iget-boolean p2, p2, Lkha;->e0:Z

    invoke-virtual {p1, p2}, Lcom/my/target/yj;->setPauseEnabled(Z)V

    iget-object p1, p0, Lcom/my/target/w1;->e:Lkha;

    iget-boolean p1, p1, Lkha;->X:Z

    iget-object p2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/my/target/n;->setVolume(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {p2, p1}, Lcom/my/target/n;->setVolume(F)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p1, Lkha;->Y:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/my/target/w1;->u()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/my/target/yj;->e()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/my/target/w4;->a(Lxda;Z)V

    iget p1, p0, Lcom/my/target/w1;->t:I

    iget p2, p0, Lcom/my/target/w1;->w:F

    div-float/2addr p2, v4

    invoke-virtual {v0, p1, p2}, Lcom/my/target/rf;->a(IF)V

    :cond_5
    :goto_1
    invoke-interface {v1}, Lefa;->getInterstitialView()Lcom/my/target/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    new-instance p1, Lfp;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lfp;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {p0, v2}, Lcom/my/target/w1;->y(Lxda;)V

    invoke-virtual {p0, v2}, Lcom/my/target/w1;->z(Lxda;)V

    iget-object p0, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-interface {v1}, Lefa;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/my/target/p0$a;->b(Lv2a;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 9

    iget v0, p0, Lcom/my/target/w1;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/w1;->t:I

    invoke-virtual {p0}, Lcom/my/target/w1;->destroy()V

    iget-object v0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/my/target/w1;->t:I

    iget-object v3, p0, Lcom/my/target/w1;->i:Lcom/my/target/w4;

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/my/target/w1;->w:F

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    iget-object v5, p0, Lcom/my/target/w1;->C:Lcom/my/target/rf;

    iget-object v6, v5, Lcom/my/target/rf;->b:Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc9a;

    invoke-interface {v8, v1}, Lc9a;->setMaxTime(F)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc9a;

    invoke-interface {v8, v1}, Lc9a;->setTimeChanged(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/my/target/w1;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2a;

    iput-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v0, v0, Lv2a;->a:Lxda;

    invoke-virtual {v0}, Lxda;->k()Z

    move-result v1

    iput-boolean v1, p0, Lcom/my/target/w1;->l:Z

    iget v1, v0, Ljia;->T:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/my/target/w1;->v:F

    iget v1, v0, Ljia;->S:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/my/target/w1;->w:F

    iget-object v1, v0, Lxda;->Z:Lkha;

    if-eqz v1, :cond_5

    iput-object v1, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object v1, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/my/target/w4;->a(Lxda;Z)V

    invoke-interface {v3}, Lefa;->getInterstitialView()Lcom/my/target/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    instance-of v2, v1, Lj2a;

    if-eqz v2, :cond_2

    check-cast v1, Lj2a;

    invoke-interface {v1}, Lj2a;->getVideoView()Lcom/my/target/f0;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v2, p0}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    iget-object v2, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object v2, v2, Lao9;->a:Ln4a;

    new-instance v6, Lah;

    invoke-direct {v6, p0}, Lah;-><init>(Lcom/my/target/w1;)V

    invoke-static {v2, v6}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    iget-object v2, p0, Lcom/my/target/w1;->e:Lkha;

    iget-object v6, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v6, v6, Lv2a;->b:Lcom/my/target/e3;

    new-instance v7, Lah;

    invoke-direct {v7, p0}, Lah;-><init>(Lcom/my/target/w1;)V

    iget-object v8, p0, Lcom/my/target/w1;->b:Lcom/my/target/j1;

    iget-object v8, v8, Lcom/my/target/j1;->a:Landroid/content/Context;

    invoke-static {v2, v6, v7, v8}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    iget-object v2, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    iget-object v6, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v2, v6}, Lcom/my/target/o1;->d(Landroid/view/View;)V

    iget-object v2, p0, Lcom/my/target/w1;->e:Lkha;

    iget v2, v2, Lao9;->z:F

    iput v2, p0, Lcom/my/target/w1;->A:F

    invoke-interface {v1}, Lj2a;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v2, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    invoke-interface {v1}, Lj2a;->getVideoContent()Lcom/my/target/yj;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget v1, p0, Lcom/my/target/w1;->t:I

    iget v2, p0, Lcom/my/target/w1;->w:F

    div-float/2addr v2, v4

    invoke-virtual {v5, v1, v2}, Lcom/my/target/rf;->a(IF)V

    iget-object v1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget-object v2, p0, Lcom/my/target/w1;->e:Lkha;

    iget v2, v2, Lao9;->z:F

    invoke-virtual {v1, v2}, Lcom/my/target/yj;->setDuration(F)V

    iget-object v1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    iget-object v2, p0, Lcom/my/target/w1;->e:Lkha;

    iget-boolean v2, v2, Lkha;->e0:Z

    invoke-virtual {v1, v2}, Lcom/my/target/yj;->setPauseEnabled(Z)V

    iget-object v1, p0, Lcom/my/target/w1;->e:Lkha;

    iget-boolean v1, v1, Lkha;->X:Z

    iget-object v2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/my/target/n;->setVolume(F)V

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v2, v1}, Lcom/my/target/n;->setVolume(F)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v1, v1, Lkha;->Y:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/my/target/w1;->u()V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/my/target/yj;->e()V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/my/target/w4;->a(Lxda;Z)V

    iget v1, p0, Lcom/my/target/w1;->t:I

    iget v2, p0, Lcom/my/target/w1;->w:F

    div-float/2addr v2, v4

    invoke-virtual {v5, v1, v2}, Lcom/my/target/rf;->a(IF)V

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {v3}, Lefa;->getInterstitialView()Lcom/my/target/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-virtual {p0, v0}, Lcom/my/target/w1;->y(Lxda;)V

    invoke-virtual {p0, v0}, Lcom/my/target/w1;->z(Lxda;)V

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    invoke-interface {v3}, Lefa;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object p0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/p0$a;->b(Lv2a;Landroid/view/ViewGroup;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    instance-of v1, v1, Lcom/my/target/k4;

    if-nez v1, :cond_9

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_8
    new-instance v1, Lcom/my/target/k4;

    iget-object v2, v3, Lcom/my/target/w4;->b:Lcom/my/target/w1;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/my/target/w1;->D:Lcom/my/target/w1$a;

    invoke-direct {v1, v2, v5, v4}, Lcom/my/target/k4;-><init>(Lcom/my/target/z0$a;Lcom/my/target/w1$a;Landroid/content/Context;)V

    iput-object v1, v3, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {v1, v0}, Lcom/my/target/z0;->setDoubleBanners(Ljava/util/List;)V

    iget-object v1, v3, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {v1}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v3}, Lefa;->getInterstitialView()Lcom/my/target/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    iget v1, p0, Lcom/my/target/w1;->t:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2a;

    iget-object v1, v1, Lv2a;->a:Lxda;

    invoke-virtual {p0, v1}, Lcom/my/target/w1;->z(Lxda;)V

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/my/target/w1;->t:I

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/my/target/w1;->e()V

    return-void
.end method

.method public final B()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/my/target/z0;->b()V

    iget-object v0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v0, v0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/my/target/r;->i:Z

    iput-boolean v1, p0, Lcom/my/target/w1;->r:Z

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/my/target/w1;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/w1;->q:I

    :cond_2
    return-void
.end method

.method public final C()Z
    .locals 2

    iget-object p0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lv2a;->a:Lxda;

    iget-object v0, p0, Lxda;->Z:Lkha;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lkha;->Y:Z

    if-eqz v1, :cond_1

    iget-boolean p0, v0, Lkha;->c0:Z

    return p0

    :cond_1
    iget-boolean p0, p0, Ljia;->V:Z

    return p0
.end method

.method public final D()Z
    .locals 3

    iget-object p0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2a;

    iget-boolean v2, v2, Lv2a;->e:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lv2a;->a:Lxda;

    iget-boolean v0, v0, Ljia;->U:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/my/target/w1;->t:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lv2a;->a:Lxda;

    invoke-interface {p0, v0}, Lcom/my/target/z0;->setBanner(Lxda;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/yj;->a(F)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InterstitialDoublePromoPresenter: Video playing error - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/my/target/k0;->j()V

    :cond_1
    iget-boolean p1, p0, Lcom/my/target/w1;->p:Z

    if-eqz p1, :cond_2

    const-string p1, "InterstitialDoublePromoPresenter: Try to play video stream from URL"

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/w1;->p:Z

    iget-object p1, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lkha;->h0:Lxha;

    check-cast p1, Lrn9;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->stop()V

    invoke-interface {p1}, Lcom/my/target/n;->destroy()V

    iput-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    iget-object p0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->c()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->g()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->b()V

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->stop()V

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lv2a;->f:Z

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v0, v0, Lv2a;->a:Lxda;

    iget-boolean v0, v0, Ljia;->U:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/my/target/w1;->A()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(ILpfa;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, v0, Lv2a;->a:Lxda;

    .line 51
    invoke-static {p2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object p2

    .line 52
    iget-object v1, p0, Lcom/my/target/w1;->i:Lcom/my/target/w4;

    invoke-interface {v1}, Lefa;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/my/target/p0$a;->a(Lao9;ILcha;Landroid/content/Context;)V

    .line 55
    iget-boolean p1, p0, Lcom/my/target/w1;->l:Z

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/my/target/w1;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, v0, Lv2a;->a:Lxda;

    .line 178
    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    .line 179
    iget-object v0, v0, Lxda;->c0:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object p0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {p0}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 181
    invoke-static {p0, v0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void
.end method

.method public final d(FF)V
    .locals 5

    iget-object v0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/my/target/w1;->A:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/my/target/w1;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/my/target/w1;->w:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    float-to-long v3, v0

    iput-wide v3, p0, Lcom/my/target/w1;->n:J

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/my/target/w1;->v:F

    sub-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Lcom/my/target/w1;->u:J

    :cond_1
    iget-object v0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getProgressView()Lc9a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc9a;->setTimeChanged(F)V

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/my/target/k0;->c(FF)V

    :cond_2
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lv2a;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/my/target/o1;->c(FF)V

    :cond_3
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    iget-object v2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v2}, Lcom/my/target/n;->getVolume()F

    move-result v2

    iget-object v3, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v3, v3, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object v3, v3, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lv2a;->a:Lxda;

    check-cast v3, Lz94$b;

    iget v0, v3, Lz94$b;->a:F

    invoke-static {v0, v2}, Ly14;->a(FF)I

    move-result v0

    if-eqz v0, :cond_4

    iput v2, v3, Lz94$b;->a:F

    :cond_4
    iget v0, p0, Lcom/my/target/w1;->q:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/my/target/w1;->t:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/my/target/w1;->C:Lcom/my/target/rf;

    iget-object v0, v0, Lcom/my/target/rf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc9a;

    invoke-interface {v0, p1}, Lc9a;->setTimeChanged(F)V

    :cond_5
    cmpl-float p1, p1, p2

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/my/target/w1;->c()V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->stop()V

    return-void

    :cond_7
    invoke-virtual {p0, p2, v0}, Lcom/my/target/w1;->d(FF)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/my/target/w1;->t()V

    iget-object v0, p0, Lcom/my/target/w1;->B:Lcom/my/target/o1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/o1;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/n;->destroy()V

    iput-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    :cond_1
    iput-object v1, p0, Lcom/my/target/w1;->e:Lkha;

    iput-object v1, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    iput-object v1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->h()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/w1;->destroy()V

    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v1, v1, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object v0, v0, Lv2a;->a:Lxda;

    iget-object v2, v0, Lao9;->Q:Lpp9;

    const/16 v3, 0x138c

    invoke-virtual {v2, v3}, Lpp9;->c(I)V

    iget-object v0, v0, Lao9;->a:Ln4a;

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    const-string v4, "closedByUser"

    invoke-static {v0, v4, v2, v3}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {v1}, Lcom/my/target/r;->t()V

    :cond_1
    iget-object p0, p0, Lcom/my/target/w1;->D:Lcom/my/target/w1$a;

    iget-object p0, p0, Lcom/my/target/w1$a;->a:Lcom/my/target/f1;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/my/target/f1;->f:Lcom/my/target/o1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/my/target/o1;->b()V

    :cond_3
    iget-object v0, p0, Lcom/my/target/f1;->e:Lcom/my/target/k0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/my/target/k0;->h()V

    :cond_4
    iget-object p0, p0, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->destroy()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->d()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/my/target/z0;->getCloseButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w1;->i:Lcom/my/target/w4;

    invoke-interface {p0}, Lefa;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DoubleInterstitialPromoPresenter: Video playing timeout"

    invoke-static {v0, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/my/target/k0;->k()V

    :cond_0
    iget-object v1, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/my/target/n;->stop()V

    invoke-interface {v1}, Lcom/my/target/n;->destroy()V

    iput-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    iget-object p0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/w1;->x:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->f()V

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/w1;->t()V

    const-string p0, "DoubleInterstitialPromoPresenter: Audiofocus loss, pausing"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lv2a;->a:Lxda;

    iget-object v0, v0, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/w1;->d:Lcom/my/target/o;

    if-nez v2, :cond_3

    iget-object p0, v0, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v1, p0, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/my/target/o;->b()V

    invoke-virtual {p0}, Lcom/my/target/w1;->pause()V

    return-void
.end method

.method public final pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/my/target/w1;->t()V

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    instance-of v0, v0, Lcom/my/target/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/my/target/f0;->setViewMode(I)V

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    iget-object v2, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-interface {v0, v2}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    iget-object v2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v2}, Lcom/my/target/n;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, v0, Lxha;->d:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/my/target/w1;->p:Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/my/target/w1;->x(Lrn9;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-virtual {p0, v0}, Lcom/my/target/w1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final resume()V
    .locals 4

    iget-wide v0, p0, Lcom/my/target/w1;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/my/target/w1;->u:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->c()Z

    move-result v0

    const-string v1, "audio"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/my/target/w1;->D:Lcom/my/target/w1$a;

    iget-object p0, p0, Lcom/my/target/w1$a;->a:Lcom/my/target/f1;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/my/target/f1;->p()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/my/target/w1;->t()V

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/my/target/w1;->w()V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    iget-object p0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/w1;->c:Lcom/my/target/k0;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    invoke-virtual {v1}, Lcom/my/target/k0;->f()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    iget-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    invoke-interface {v1, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-object v1, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    iget-object v2, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-interface {v1, v2}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    invoke-virtual {p0, v0}, Lcom/my/target/w1;->x(Lrn9;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 9

    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/my/target/w1;->t:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-wide v2, p0, Lcom/my/target/w1;->n:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    cmp-long v8, v2, v6

    if-ltz v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    long-to-int v2, v2

    invoke-interface {v4, v2}, Lcom/my/target/z0;->setRemainingAllowCloseDelay(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/my/target/w1;->u:J

    div-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    long-to-int v2, v2

    invoke-interface {v4, v2}, Lcom/my/target/z0;->setRemainingAllowCloseDelay(I)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    :goto_3
    iget v0, p0, Lcom/my/target/w1;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/my/target/w1;->t:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/my/target/w1;->w:F

    iget-wide v2, p0, Lcom/my/target/w1;->n:J

    long-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    iget-object p0, p0, Lcom/my/target/w1;->C:Lcom/my/target/rf;

    iget-object p0, p0, Lcom/my/target/rf;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc9a;

    invoke-interface {p0, v0}, Lc9a;->setTimeChanged(F)V

    :cond_5
    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/w1;->h:Lx8a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Lrn9;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/w1;->y:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/my/target/w1;->p:Z

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/my/target/w1;->p:Z

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/w1;->z:Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final y(Lxda;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lao9;->H:Lcom/my/target/q;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv2a;->a:Lxda;

    invoke-virtual {v0}, Lao9;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    new-instance v1, Lcom/my/target/o;

    iget-object v2, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {v2}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/my/target/o;-><init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/w1;->d:Lcom/my/target/o;

    new-instance p1, Lc21;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lc21;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v1, Lcom/my/target/o;->e:Lgv9;

    new-instance p1, Lve1;

    invoke-direct {p1, p0}, Lve1;-><init>(Ljava/lang/Object;)V

    iput-object p1, v1, Lcom/my/target/o;->f:Lve1;

    return-void
.end method

.method public final z(Lxda;)V
    .locals 8

    iget-object v0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v0, v0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    iget-object v1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lxda;->Z:Lkha;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/my/target/w1;->r:Z

    iput-boolean v1, p0, Lcom/my/target/w1;->s:Z

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/my/target/w1;->v:F

    float-to-long v5, v2

    iput-wide v5, p0, Lcom/my/target/w1;->u:J

    goto :goto_0

    :cond_1
    iput-wide v3, p0, Lcom/my/target/w1;->u:J

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    iget-boolean v5, p1, Lkha;->Y:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/my/target/w1;->t:I

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/my/target/w1;->q:I

    invoke-virtual {p0}, Lcom/my/target/w1;->C()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p1, Lkha;->f0:F

    iget v7, p0, Lcom/my/target/w1;->A:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    long-to-float v6, v6

    iput v6, p0, Lcom/my/target/w1;->w:F

    iget v6, p0, Lcom/my/target/w1;->t:I

    iget p1, p1, Lao9;->z:F

    iget-object v7, p0, Lcom/my/target/w1;->C:Lcom/my/target/rf;

    invoke-virtual {v7, v6, p1}, Lcom/my/target/rf;->a(IF)V

    iget p1, p0, Lcom/my/target/w1;->w:F

    float-to-long v6, p1

    iput-wide v6, p0, Lcom/my/target/w1;->n:J

    cmp-long p1, v6, v3

    if-lez p1, :cond_3

    iput v5, p0, Lcom/my/target/w1;->q:I

    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/my/target/w1;->B()V

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {p1}, Lcom/my/target/z0;->c()V

    :goto_1
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result p1

    iput p1, p0, Lcom/my/target/w1;->q:I

    invoke-virtual {p0}, Lcom/my/target/w1;->C()Z

    move-result p1

    iget-object v5, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_9

    iget p1, p0, Lcom/my/target/w1;->w:F

    float-to-long v5, p1

    iput-wide v5, p0, Lcom/my/target/w1;->n:J

    cmp-long p1, v5, v3

    const/4 v3, 0x0

    if-lez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "DoubleInterstitialPromoPresenter: Banner will be allowed to close in "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/my/target/w1;->n:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/my/target/w1;->q:I

    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    goto :goto_3

    :cond_8
    const-string p1, "DoubleInterstitialPromoPresenter: Banner is allowed to close"

    invoke-static {v3, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/w1;->B()V

    move v1, v2

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result p1

    iput p1, p0, Lcom/my/target/w1;->q:I

    iget-object p1, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {p1}, Lcom/my/target/z0;->c()V

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    :cond_a
    :goto_3
    iput-boolean v1, v0, Lcom/my/target/r;->i:Z

    :goto_4
    iput-boolean v2, v0, Lcom/my/target/r;->i:Z

    return-void
.end method
