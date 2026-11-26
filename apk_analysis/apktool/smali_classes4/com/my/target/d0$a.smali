.class public final Lcom/my/target/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/g1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/d0;

.field public final b:Lwv9;

.field public final c:Lz94$b;

.field public final d:Lgg;

.field public final e:Lf72;


# direct methods
.method public constructor <init>(Lcom/my/target/d0;Lwv9;Lz94$b;Lgg;Lf72;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    iput-object p2, p0, Lcom/my/target/d0$a;->b:Lwv9;

    iput-object p3, p0, Lcom/my/target/d0$a;->c:Lz94$b;

    iput-object p5, p0, Lcom/my/target/d0$a;->e:Lf72;

    iput-object p4, p0, Lcom/my/target/d0$a;->d:Lgg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lcom/my/target/d0$a;->b:Lwv9;

    iget-object v1, v0, Lao9;->a:Ln4a;

    new-instance v2, Lx3;

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    invoke-direct {v2, p0, v0}, Lx3;-><init>(Lcom/my/target/r;Lao9;)V

    const-string v3, "error"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    iget-object v5, v0, Lao9;->Q:Lpp9;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x157c

    invoke-virtual/range {v5 .. v10}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    iget-object v0, v0, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    .line 40
    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final b(Lao9;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    invoke-virtual {p0, p1}, Lcom/my/target/r;->b(Lao9;)V

    return-void
.end method

.method public final c(Landroid/webkit/WebView;)V
    .locals 3

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    iget-object v0, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/my/target/d0;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/g1;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/my/target/e3$b;

    invoke-virtual {v1, p1, v2}, Lcom/my/target/e3;->c(Landroid/view/View;[Lcom/my/target/e3$b;)V

    invoke-interface {v0}, Lcom/my/target/t1;->getCloseButton()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    new-instance v1, Lcom/my/target/e3$b;

    invoke-direct {v1, p1}, Lcom/my/target/e3$b;-><init>(Landroid/view/View;)V

    filled-new-array {v1}, [Lcom/my/target/e3$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/my/target/e3;->e([Lcom/my/target/e3$b;)V

    :cond_3
    iget-object p0, p0, Lcom/my/target/d0;->o:Lcom/my/target/e3;

    invoke-virtual {p0}, Lcom/my/target/e3;->g()V

    return-void
.end method

.method public final d(FF)V
    .locals 7

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    iget-object v0, p0, Lcom/my/target/d0;->k:Ls5a;

    iget-object v1, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sub-float p1, p2, p1

    invoke-virtual {v0}, Ls5a;->a()Ls5a;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk8a;

    iget v3, v2, Lk8a;->f:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    iget v5, v2, Lk8a;->g:F

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, p2, v3

    mul-float/2addr v3, v5

    :cond_2
    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_1

    iget-object v3, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    new-instance p1, Lgg;

    invoke-direct {p1, p0}, Lgg;-><init>(Lcom/my/target/d0;)V

    invoke-static {v0, p1}, Lcom/my/target/m1;->f(Ls5a;Lcom/my/target/m1$b;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/r;->e:Z

    iget-object p0, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz p0, :cond_1

    check-cast p0, Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lz94$a;->b(Lz94;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lao9;)V
    .locals 3

    .line 26
    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    .line 27
    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    .line 28
    iget-object p1, p1, Lao9;->a:Ln4a;

    .line 29
    const-string v0, "closedByUser"

    const/16 v1, 0x3e7

    iget-object v2, p0, Lcom/my/target/d0$a;->d:Lgg;

    invoke-static {p1, v0, v1, v2}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    .line 30
    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/my/target/e2;

    iget-object p1, p0, Lcom/my/target/d0$a;->e:Lf72;

    invoke-direct {v0, p1}, Lcom/my/target/e2;-><init>(Lf72;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v1, p0, Lcom/my/target/d0$a;->b:Lwv9;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/my/target/e2;->a(Lao9;ILcha;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/e2;->b(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/d0$a;->c:Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object p1, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lz94$a;->f(Lz94;)V

    :cond_1
    return-void
.end method

.method public final l(Lwv9;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lao9;->a:Ln4a;

    new-instance v1, Lig;

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    invoke-direct {v1, p0, p1}, Lig;-><init>(Lcom/my/target/d0;Lao9;)V

    const/16 p0, 0x3e7

    invoke-static {v0, p2, p0, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/d0$a;->b:Lwv9;

    iget-object v0, v0, Lao9;->Q:Lpp9;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lpp9;->c(I)V

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    invoke-virtual {p0}, Lcom/my/target/r;->t()V

    return-void
.end method

.method public final n(D)V
    .locals 0

    return-void
.end method

.method public final o(Lao9;Landroid/view/View;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAdHtmlEngine$InterstitialWebViewPresenterListener: Ad shown, banner Id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/d0$a;->b:Lwv9;

    iget-object v1, v1, Lao9;->B:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/d0$a;->a:Lcom/my/target/d0;

    iget-object v0, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/d0;->j:Lwv9;

    iget-object v1, v0, Lao9;->b:La0a;

    iget-object v0, v0, Lao9;->a:Ln4a;

    new-instance v3, Lgg;

    invoke-direct {v3, p0}, Lgg;-><init>(Lcom/my/target/d0;)V

    new-instance v4, Lcom/my/target/x0;

    invoke-direct {v4, v1, v0, v3}, Lcom/my/target/x0;-><init>(La0a;Ln4a;Lcom/my/target/m1$b;)V

    iput-object v4, p0, Lcom/my/target/d0;->m:Lcom/my/target/x0;

    iget-boolean p0, p0, Lcom/my/target/r;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {v4, p2}, Lcom/my/target/x0;->c(Landroid/view/View;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "InterstitialAdHtmlEngine: Ad shown, banner Id = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lao9;->B:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
