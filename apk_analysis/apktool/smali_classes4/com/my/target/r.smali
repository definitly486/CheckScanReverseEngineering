.class public abstract Lcom/my/target/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b3;
.implements Lcom/my/target/common/MyTargetActivity$a;


# instance fields
.field public final a:Lz94$b;

.field public final b:Lcom/my/target/b3$a;

.field public final c:Lz94;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lz94$b;Lz94;Lz94$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    iput-object p1, p0, Lcom/my/target/r;->a:Lz94$b;

    iput-object p2, p0, Lcom/my/target/r;->c:Lz94;

    iput-object p3, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    return-void
.end method

.method public static r(Lz94;Ljava/util/ArrayList;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljia;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/my/target/r;->s(Lz94;Ljia;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljia;

    instance-of v5, v4, Lxda;

    if-eqz v5, :cond_1

    check-cast v4, Lxda;

    iget v5, v4, Lxda;->f0:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljia;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/my/target/r;->s(Lz94;Ljia;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljia;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/my/target/r;->s(Lz94;Ljia;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lcom/my/target/p0;

    invoke-direct {p1, p3, p0, p4}, Lcom/my/target/r;-><init>(Lz94$b;Lz94;Lz94$b;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxda;

    new-instance p4, Lv2a;

    iget-object v0, p2, Lao9;->a:Ln4a;

    new-instance v1, Li01;

    invoke-direct {v1, p3, p2}, Li01;-><init>(Lz94$b;Lxda;)V

    invoke-static {v0, v1}, Lcom/my/target/n0;->a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Lv2a;-><init>(Lxda;Lcom/my/target/n0;)V

    iget-object p2, p1, Lcom/my/target/p0;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Lz94;Ljia;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;
    .locals 8

    instance-of v0, p1, Lxda;

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lxda;

    new-instance v1, Lcom/my/target/m2;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/my/target/m2;-><init>(Lz94;Lxda;Lkia;Lz94$b;Lz94$b;)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    instance-of p0, p1, Lwv9;

    if-eqz p0, :cond_1

    check-cast p1, Lwv9;

    move-object v3, v2

    new-instance v2, Lcom/my/target/d0;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/my/target/d0;-><init>(Lz94;Lwv9;Lkia;Lz94$b;Lz94$b;)V

    return-object v2

    :cond_1
    instance-of p0, p1, Lvy9;

    if-eqz p0, :cond_2

    check-cast p1, Lvy9;

    new-instance p0, Lcom/my/target/m0;

    invoke-direct {p0, v2, p1, v5}, Lcom/my/target/m0;-><init>(Lz94;Lvy9;Lz94$b;)V

    return-object p0

    :cond_2
    instance-of p0, p1, Lj1a;

    if-eqz p0, :cond_3

    check-cast p1, Lj1a;

    new-instance p0, Lcom/my/target/u0;

    invoke-direct {p0, v2, p1, v5, v6}, Lcom/my/target/u0;-><init>(Lz94;Lj1a;Lz94$b;Lz94$b;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    iget-boolean v0, p0, Lcom/my/target/r;->g:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/my/target/r;->a:Lz94$b;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lz94$b;->c()V

    const-string p0, "InterstitialAdEngine: Unable to open Interstitial Ad twice, please dismiss currently showing ad first"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/my/target/r;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lz94$b;->c()V

    const-string p1, "InterstitialAdEngine: Unable to open Interstitial Ad twice, please use another ad object"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/r;->c:Lz94;

    iget-object p0, p0, Lzc0;->a:Lz2a;

    iget-object v0, p0, Lz2a;->g:Lz8a;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x138b

    invoke-virtual/range {v0 .. v5}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v2, Lz94$b;->b:Lz94;

    iget-object v1, v0, Lzc0;->b:Lcom/my/target/t0$a;

    new-instance v2, Lcom/my/target/t0;

    iget v3, v1, Lcom/my/target/t0$a;->a:I

    const-string v4, "myTarget"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/my/target/t0;-><init>(ILjava/lang/String;I)V

    iget-boolean v1, v1, Lcom/my/target/t0$a;->b:Z

    iput-boolean v1, v2, Lcom/my/target/t0;->e:Z

    iput-object v2, v0, Lkd0;->g:Lcom/my/target/t0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->g:Z

    sput-object p0, Lcom/my/target/common/MyTargetActivity;->f:Lcom/my/target/common/MyTargetActivity$a;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/my/target/common/MyTargetActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public b(Lao9;)V
    .locals 3

    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object v0, p1, Lao9;->a:Ln4a;

    new-instance v1, Ly3;

    invoke-direct {v1, p0, p1}, Ly3;-><init>(Lcom/my/target/r;Lao9;)V

    const-string p1, "closedByUser"

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V
    .locals 0

    const p2, 0x1030006

    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/my/target/r;->f:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/my/target/r;->a:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->d()V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/my/target/r;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/my/target/r;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lcom/my/target/common/MyTargetActivity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_5

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/r;->f:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/my/target/r;->a:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->a()V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/r;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->h:Z

    iget-object p0, p0, Lcom/my/target/r;->f:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/common/MyTargetActivity;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public abstract u()Z
.end method
