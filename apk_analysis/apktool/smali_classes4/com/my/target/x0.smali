.class public final Lcom/my/target/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/x0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ld9a;

.field public final c:F

.field public final d:Z

.field public final e:Lou;

.field public final f:Lm3a;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/ref/WeakReference;

.field public k:Ljava/lang/ref/WeakReference;

.field public l:Lcom/my/target/x0$a;


# direct methods
.method public constructor <init>(La0a;Ln4a;Lcom/my/target/m1$b;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm3a;

    invoke-direct {v0, p0}, Lm3a;-><init>(Lcom/my/target/x0;)V

    iput-object v0, p0, Lcom/my/target/x0;->f:Lm3a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/x0;->g:Z

    iput-boolean v0, p0, Lcom/my/target/x0;->h:Z

    iput-boolean v0, p0, Lcom/my/target/x0;->i:Z

    new-instance v0, Lou;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lou;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/my/target/x0;->e:Lou;

    iget v0, p1, La0a;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_0

    sget-object v0, Ld9a;->f:Ld9a;

    iput-object v0, p0, Lcom/my/target/x0;->b:Ld9a;

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ld9a;->a(I)Ld9a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/x0;->b:Ld9a;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/x0;->a:Ljava/util/ArrayList;

    iget v1, p1, La0a;->c:F

    mul-float/2addr v1, v2

    float-to-long v5, v1

    const-string v1, "viewabilityDuration"

    invoke-virtual {p2, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewabilityDuration stats count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Ls5a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ViewabilityTracker"

    invoke-static {v9, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/my/target/s0;

    move-object v3, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/my/target/s0;-><init>(Lcom/my/target/x0;Ls5a;JLcom/my/target/m1$b;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v7, p3

    :goto_1
    const-string p0, "show"

    invoke-virtual {p2, p0}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Show stats count = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v4, Ls5a;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/my/target/i1;

    move-object v8, v7

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/my/target/i1;-><init>(Lcom/my/target/x0;Ls5a;JLn4a;Lcom/my/target/m1$b;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "viewin"

    invoke-virtual {v7, p0}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "View In stats count = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ls5a;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/my/target/g0;

    invoke-direct {p2, v3, p0}, Lcom/my/target/g3;-><init>(Lcom/my/target/x0;Ls5a;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "render"

    invoke-virtual {v7, p0}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Render stats count = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ls5a;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "viewabilityMeasurable"

    invoke-virtual {v7, p2}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "ViewabilityMeasurable stats count = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Ls5a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/my/target/u1;

    invoke-direct {p3, v3, p0, p2, v8}, Lcom/my/target/u1;-><init>(Lcom/my/target/x0;Ls5a;Ls5a;Lcom/my/target/m1$b;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p1, La0a;->b:F

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    iput p0, v3, Lcom/my/target/x0;->c:F

    const/4 p0, 0x1

    iput-boolean p0, v3, Lcom/my/target/x0;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/my/target/x0;->h:Z

    iget-object v1, p0, Lcom/my/target/x0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/my/target/g3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, p3, p2, v5}, Lcom/my/target/g3;->a(ZFLandroid/content/Context;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/my/target/x0;->g:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/my/target/x0;->h:Z

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/my/target/x0;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const-string v1, "ViewabilityTracker"

    if-nez v0, :cond_1

    const-string v0, "Tracking view disappeared"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/x0;->e()V

    return-void

    :cond_1
    invoke-static {v0}, Ll3a;->a(Landroid/view/View;)F

    move-result v2

    iget v3, p0, Lcom/my/target/x0;->c:F

    invoke-static {v2, v3}, Ly14;->a(FF)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "View visibility "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "% (isVisible = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v4, p0, Lcom/my/target/x0;->f:Lm3a;

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-boolean v5, p0, Lcom/my/target/x0;->i:Z

    :cond_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/x0;->a(Landroid/view/View;FZ)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/my/target/x0;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/my/target/x0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/my/target/x0;->d:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "start tracking"

    const-string v2, "ViewabilityTracker"

    invoke-static {v2, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/my/target/x0;->g:Z

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/my/target/x0;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/g3;

    invoke-virtual {v1}, Lcom/my/target/g3;->c()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/x0;->b()V

    iget-boolean v0, p0, Lcom/my/target/x0;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/x0;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/x0;->e:Lou;

    invoke-virtual {v0, v1}, Ld9a;->b(Ljava/lang/Runnable;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/my/target/x0;->d()V

    :try_start_0
    new-instance v1, Lcom/my/target/sk;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/my/target/sk;-><init>(Landroid/content/Context;)V

    const-string v3, "viewability_view"

    invoke-static {v1, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v0, "help view added"

    invoke-static {v2, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lpu;

    invoke-direct {v0, p0}, Lpu;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/my/target/sk;->setStateChangedListener(Lcom/my/target/sk$a;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to add Viewability View - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/my/target/x0;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/x0;->f:Lm3a;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/sk;

    :goto_0
    iput-object v1, p0, Lcom/my/target/x0;->k:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/my/target/sk;->setStateChangedListener(Lcom/my/target/sk$a;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_1
    return-void

    :cond_2
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string p0, "ViewabilityTracker"

    const-string v0, "help view removed"

    invoke-static {p0, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lcom/my/target/x0;->g:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/x0;->g:Z

    const-string v1, "ViewabilityTracker"

    const-string v2, "stop tracking"

    invoke-static {v1, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/x0;->d()V

    iget-object v1, p0, Lcom/my/target/x0;->b:Ld9a;

    iget-object v2, p0, Lcom/my/target/x0;->e:Lou;

    invoke-virtual {v1, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/my/target/x0;->h:Z

    iget-object v0, p0, Lcom/my/target/x0;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/x0;->f:Lm3a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/x0;->j:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/my/target/x0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/g3;

    invoke-virtual {v1}, Lcom/my/target/g3;->d()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
