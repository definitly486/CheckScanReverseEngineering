.class public final Lcom/my/target/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;
.implements Lcom/my/target/z0$a;
.implements Lcom/my/target/d2$b;
.implements Lcom/my/target/p$a;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/my/target/n$a;
.implements Lcom/my/target/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/z1$a;
    }
.end annotation


# instance fields
.field public final b:Lxda;

.field public final c:Lcom/my/target/m2$a;

.field public final d:Lcom/my/target/z0;

.field public final e:Landroid/os/Handler;

.field public final f:Lnh;

.field public final g:La9a;

.field public h:I

.field public final i:Lcom/my/target/o;

.field public final j:Lcom/my/target/m2$b;

.field public final k:Lcom/my/target/k0;

.field public l:Lcom/my/target/n;

.field public final m:Lcom/my/target/f0;

.field public final n:Lkha;

.field public final o:Lcom/my/target/yj;

.field public final p:Lcom/my/target/o1;

.field public final q:Ljava/util/ArrayList;

.field public r:Z

.field public final s:F

.field public t:J

.field public final u:J

.field public final v:Ljava/util/ArrayList;

.field public w:Z

.field public final x:Z


# direct methods
.method public constructor <init>(Lcom/my/target/s;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lm5;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/z1;->h:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/my/target/z1;->q:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/my/target/z1;->w:Z

    iput-object p4, p0, Lcom/my/target/z1;->j:Lcom/my/target/m2$b;

    iput-object p2, p0, Lcom/my/target/z1;->b:Lxda;

    iput-object p3, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    new-instance p4, La9a;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/my/target/z1;->g:La9a;

    invoke-virtual {p2}, Lxda;->k()Z

    move-result p4

    iput-boolean p4, p0, Lcom/my/target/z1;->x:Z

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/my/target/z1;->e:Landroid/os/Handler;

    iget-object p4, p2, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lao9;->L:Z

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    move-object v7, p0

    move-object v8, p0

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/my/target/s;->a(Lxda;Lcom/my/target/z1;Lcom/my/target/z1$a;Lcom/my/target/z1;Lcom/my/target/z1;)Lcom/my/target/z0;

    move-result-object p0

    move-object v4, v5

    iput-object p0, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v4, Lcom/my/target/z1;->v:Ljava/util/ArrayList;

    check-cast p0, Lcom/my/target/p;

    move p1, v0

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfo9;

    iget-object p5, v4, Lcom/my/target/z1;->v:Ljava/util/ArrayList;

    new-instance v2, Lix9;

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-direct {v2, p2, v3}, Lix9;-><init>(Lfo9;Z)V

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, v4, Lcom/my/target/z1;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lix9;

    invoke-interface {p0, p1, p2}, Lcom/my/target/p;->a(Ljava/util/List;Lix9;)V

    goto/16 :goto_2

    :cond_2
    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/my/target/s;->a(Lxda;Lcom/my/target/z1;Lcom/my/target/z1$a;Lcom/my/target/z1;Lcom/my/target/z1;)Lcom/my/target/z0;

    move-result-object p0

    iput-object p0, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    goto :goto_2

    :cond_3
    iget-object p0, v3, Lxda;->Z:Lkha;

    if-eqz p0, :cond_6

    iput-object p0, v4, Lcom/my/target/z1;->n:Lkha;

    new-instance v5, Lcom/my/target/z1$a;

    invoke-direct {v5, v4}, Lcom/my/target/z1$a;-><init>(Lcom/my/target/z1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/my/target/s;->a(Lxda;Lcom/my/target/z1;Lcom/my/target/z1$a;Lcom/my/target/z1;Lcom/my/target/z1;)Lcom/my/target/z0;

    move-result-object p1

    iput-object p1, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    instance-of p2, p1, Lj2a;

    if-eqz p2, :cond_4

    check-cast p1, Lj2a;

    invoke-interface {p1}, Lj2a;->getVideoView()Lcom/my/target/f0;

    move-result-object p2

    iput-object p2, v4, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    invoke-virtual {p2, v4}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    iget-object p4, p0, Lao9;->a:Ln4a;

    invoke-static {p4, p5}, Lcom/my/target/o1;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;

    move-result-object p4

    iput-object p4, v4, Lcom/my/target/z1;->p:Lcom/my/target/o1;

    iget-object v3, v2, Lcom/my/target/s;->a:Lcom/my/target/e3;

    iget-object v2, v2, Lcom/my/target/s;->b:Landroid/content/Context;

    invoke-static {p0, v3, p5, v2}, Lcom/my/target/k0;->a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;

    move-result-object p5

    iput-object p5, v4, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    invoke-virtual {p4, p2}, Lcom/my/target/o1;->d(Landroid/view/View;)V

    iget p2, p0, Lao9;->z:F

    iput p2, v4, Lcom/my/target/z1;->s:F

    invoke-interface {p1}, Lj2a;->getVideoPlayer()Lcom/my/target/n;

    move-result-object p2

    iput-object p2, v4, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p2, v4}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    invoke-interface {p1}, Lj2a;->getVideoContent()Lcom/my/target/yj;

    move-result-object p1

    iput-object p1, v4, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    iget p2, p0, Lao9;->z:F

    invoke-virtual {p1, p2}, Lcom/my/target/yj;->setDuration(F)V

    iget-boolean p2, p0, Lkha;->e0:Z

    invoke-virtual {p1, p2}, Lcom/my/target/yj;->setPauseEnabled(Z)V

    :cond_4
    iget-boolean p0, p0, Lkha;->X:Z

    iget-object p1, v4, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/my/target/n;->setVolume(F)V

    goto :goto_2

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p1, p0}, Lcom/my/target/n;->setVolume(F)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/my/target/s;->a(Lxda;Lcom/my/target/z1;Lcom/my/target/z1$a;Lcom/my/target/z1;Lcom/my/target/z1;)Lcom/my/target/z0;

    move-result-object p0

    iput-object p0, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    :goto_2
    iget-object p0, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    iget-object p1, v4, Lcom/my/target/z1;->b:Lxda;

    invoke-interface {p0, p1}, Lcom/my/target/z0;->setBanner(Lxda;)V

    new-instance p0, Lnh;

    const/4 p1, 0x2

    invoke-direct {p0, v4, p1}, Lnh;-><init>(Ljava/lang/Object;I)V

    iput-object p0, v4, Lcom/my/target/z1;->f:Lnh;

    iget-object p0, v4, Lcom/my/target/z1;->b:Lxda;

    iget-object p2, p0, Lao9;->H:Lcom/my/target/q;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p4, p2, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez p4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lao9;->d()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/my/target/o;

    iget-object v2, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {v2}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p5, p2, p4, v2}, Lcom/my/target/o;-><init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V

    iput-object p5, v4, Lcom/my/target/z1;->i:Lcom/my/target/o;

    new-instance p2, Lig8;

    invoke-direct {p2, v4, p0}, Lig8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p5, Lcom/my/target/o;->e:Lgv9;

    :goto_3
    iget-object p0, v4, Lcom/my/target/z1;->b:Lxda;

    iget-object p2, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p2}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lcom/my/target/m2$a;->o(Lao9;Landroid/view/View;)V

    iget-object p0, v4, Lcom/my/target/z1;->b:Lxda;

    iget-object p2, v4, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    iget-object p3, p0, Lxda;->Z:Lkha;

    const-wide/16 p4, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz p3, :cond_c

    iget-boolean v3, p3, Lkha;->Y:Z

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    iget-boolean p0, p3, Lkha;->c0:Z

    if-eqz p0, :cond_b

    iget p0, p3, Lkha;->f0:F

    iget p2, v4, Lcom/my/target/z1;->s:F

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr p0, v2

    float-to-long p2, p0

    iput-wide p2, v4, Lcom/my/target/z1;->u:J

    iput-wide p2, v4, Lcom/my/target/z1;->t:J

    cmp-long p0, p2, p4

    if-lez p0, :cond_a

    iput p1, v4, Lcom/my/target/z1;->h:I

    invoke-virtual {v4}, Lcom/my/target/z1;->w()V

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Lcom/my/target/z1;->t()V

    goto :goto_5

    :cond_b
    iput v0, v4, Lcom/my/target/z1;->h:I

    invoke-interface {p2}, Lcom/my/target/z0;->c()V

    goto :goto_6

    :cond_c
    :goto_4
    iget-boolean p1, p0, Ljia;->V:Z

    if-eqz p1, :cond_e

    iget p0, p0, Ljia;->S:F

    mul-float/2addr p0, v2

    float-to-long p0, p0

    iput-wide p0, v4, Lcom/my/target/z1;->u:J

    iput-wide p0, v4, Lcom/my/target/z1;->t:J

    cmp-long p0, p0, p4

    const/4 p1, 0x0

    if-lez p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "InterstitialPresenterS4: Banner will be allowed to close in "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, v4, Lcom/my/target/z1;->t:J

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " millis"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v4, Lcom/my/target/z1;->h:I

    invoke-virtual {v4}, Lcom/my/target/z1;->w()V

    goto :goto_6

    :cond_d
    const-string p0, "InterstitialPresenterS4: Banner is allowed to close"

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/my/target/z1;->t()V

    :goto_5
    move v0, v1

    goto :goto_6

    :cond_e
    iput v0, v4, Lcom/my/target/z1;->h:I

    invoke-interface {p2}, Lcom/my/target/z0;->c()V

    :goto_6
    iget-object p0, v4, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    iget-object p0, p0, Lcom/my/target/z1;->b:Lxda;

    invoke-interface {v0, p0}, Lcom/my/target/z0;->setBanner(Lxda;)V

    return-void
.end method

.method public final a(F)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/yj;->a(F)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "InterstitialPresenterS4: Video playing error - "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/my/target/k0;->j()V

    :cond_1
    iget-boolean p1, p0, Lcom/my/target/z1;->w:Z

    if-eqz p1, :cond_2

    const-string p1, "InterstitialPresenterS4: Try to play video stream from URL"

    invoke-static {v2, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/z1;->w:Z

    iget-object p1, p0, Lcom/my/target/z1;->n:Lkha;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lkha;->h0:Lxha;

    check-cast p1, Lrn9;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    iget-object p1, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/my/target/yj;->c()V

    iget-object p1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->stop()V

    iget-object p1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->destroy()V

    iput-object v2, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->g()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->b()V

    iget-boolean v0, p0, Lcom/my/target/z1;->r:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->stop()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/my/target/z1;->t:J

    invoke-virtual {p0}, Lcom/my/target/z1;->t()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(ILpfa;)V
    .locals 6

    .line 37
    invoke-static {p2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v4

    .line 38
    iget-object p2, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p2}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    iget-object v1, p0, Lcom/my/target/z1;->b:Lxda;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    .line 41
    iget-boolean p1, p0, Lcom/my/target/z1;->x:Z

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/my/target/z1;->e()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    .line 97
    iget-object v0, p0, Lcom/my/target/z1;->b:Lxda;

    .line 98
    iget-object v0, v0, Lxda;->c0:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p0}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void
.end method

.method public final d(FF)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/my/target/z1;->s:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_6

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/my/target/z1;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/my/target/z1;->u:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/my/target/z1;->t:J

    :cond_1
    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getProgressView()Lc9a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc9a;->setTimeChanged(F)V

    iget-object v0, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/my/target/k0;->c(FF)V

    :cond_2
    iget-object v0, p0, Lcom/my/target/z1;->p:Lcom/my/target/o1;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/my/target/o1;->c(FF)V

    :cond_3
    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->getVolume()F

    move-result v0

    iget-object v1, p0, Lcom/my/target/z1;->j:Lcom/my/target/m2$b;

    invoke-virtual {v1, v0}, Lcom/my/target/m2$b;->a(F)V

    :cond_4
    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p1}, Lcom/my/target/n;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/my/target/z1;->c()V

    :cond_5
    iget-object p0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->stop()V

    return-void

    :cond_6
    invoke-virtual {p0, p2, v1}, Lcom/my/target/z1;->d(FF)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/z1;->r:Z

    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    iget-object v0, p0, Lcom/my/target/z1;->p:Lcom/my/target/o1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/o1;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/my/target/n;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/k0;->h()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/z1;->destroy()V

    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    iget-object v0, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/z1;->b:Lxda;

    invoke-virtual {v0, p0}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/yj;->d()V

    return-void
.end method

.method public final g()V
    .locals 0

    .line 24
    return-void
.end method

.method public final g(Lfo9;ILpfa;Landroid/view/View;)V
    .locals 6

    invoke-static {p3}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v4

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/my/target/z1;->x:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/my/target/z1;->e()V

    :cond_0
    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p0}, Lcom/my/target/z0;->getCloseButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    .line 49
    return-void
.end method

.method public final h(Ljava/util/List;Lcom/my/target/d2;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ll3a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfo9;

    iget-object v1, p0, Lcom/my/target/z1;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lao9;->a:Ln4a;

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lcom/my/target/m1;->c(Ln4a;Ljava/lang/String;)V

    :cond_1
    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/my/target/m1;->c(Ln4a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p0}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lrn9;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/my/target/z1;->w:Z

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/my/target/z1;->w:Z

    iget-object p0, p1, Lxha;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/my/target/n;->c(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "InterstitialPresenterS4: Video playing timeout"

    invoke-static {v0, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/my/target/k0;->k()V

    :cond_0
    iget-object v1, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/my/target/yj;->c()V

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->stop()V

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->destroy()V

    iput-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/z1;->o:Lcom/my/target/yj;

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
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    const-string p0, "InterstitialPresenterS4: Audiofocus loss, pausing"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lx1a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lx1a;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/z1;->b:Lxda;

    iget-object v0, v0, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {v1}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/my/target/z1;->i:Lcom/my/target/o;

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/my/target/q;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v1, p0, v0, v0, v0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/o;->b()V

    return-void
.end method

.method public final pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    iget-object v0, p0, Lcom/my/target/z1;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/z1;->f:Lnh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    instance-of v0, v0, Lcom/my/target/h;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/my/target/f0;->setViewMode(I)V

    iget-object v2, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v2, v1}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    :cond_0
    iget-object v1, p0, Lcom/my/target/z1;->n:Lkha;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lkha;->h0:Lxha;

    check-cast v1, Lrn9;

    iget-object v2, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v2}, Lcom/my/target/n;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v1, Lxha;->d:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/my/target/z1;->w:Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/my/target/z1;->i(Lrn9;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "Playback within no hardware accelerated view is available only with ExoPlayer"

    invoke-virtual {p0, v0}, Lcom/my/target/z1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final resume()V
    .locals 4

    iget v0, p0, Lcom/my/target/z1;->h:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/my/target/z1;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/z1;->w()V

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/my/target/n;->resume()V

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->c()Z

    move-result v0

    const-string v2, "audio"

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v0}, Lcom/my/target/n;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    invoke-virtual {p0}, Lcom/my/target/z1;->x()V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {v0}, Lcom/my/target/z0;->b()V

    iget-object v0, p0, Lcom/my/target/z1;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/z1;->f:Lnh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/z1;->h:I

    invoke-virtual {v2}, Lcom/my/target/m2$a;->e()V

    const/4 p0, 0x1

    iget-object v0, v2, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p0, v0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

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
    iget-object p0, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {p0}, Lcom/my/target/n;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 5

    iget-object v0, p0, Lcom/my/target/z1;->n:Lkha;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/z1;->k:Lcom/my/target/k0;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/my/target/z1;->m:Lcom/my/target/f0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkha;->h0:Lxha;

    check-cast v0, Lrn9;

    invoke-virtual {v1}, Lcom/my/target/k0;->f()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1}, Lcom/my/target/n;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1, p0}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-object v1, p0, Lcom/my/target/z1;->l:Lcom/my/target/n;

    invoke-interface {v1, v2}, Lcom/my/target/n;->b(Lcom/my/target/f0;)V

    invoke-virtual {p0, v0}, Lcom/my/target/z1;->i(Lrn9;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/z1;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/z1;->f:Lnh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/my/target/z1;->t:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/my/target/z1;->c:Lcom/my/target/m2$a;

    invoke-virtual {v2, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    iget-wide v0, p0, Lcom/my/target/z1;->t:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    invoke-interface {p0, v0}, Lcom/my/target/z0;->setRemainingAllowCloseDelay(I)V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/z1;->e:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/z1;->g:La9a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
