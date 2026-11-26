.class public final Ln4a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpp9;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Lm4a;

.field public i:Z


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln4a;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln4a;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln4a;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln4a;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln4a;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln4a;->g:Ljava/util/ArrayList;

    new-instance v0, Lm4a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln4a;->h:Lm4a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln4a;->i:Z

    iput-object p1, p0, Ln4a;->a:Lpp9;

    return-void
.end method

.method public static i(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2a;

    iget-boolean v0, v0, Lm2a;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(I)Ls5a;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ln4a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsna;

    iget v3, v2, Lo2a;->g:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ls5a;

    iget-object p0, p0, Ln4a;->a:Lpp9;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2a;

    invoke-virtual {p0, v0}, Ln4a;->c(Lm2a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lm2a;)V
    .locals 2

    iget-boolean v0, p1, Lm2a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ln4a;->i:Z

    :cond_0
    instance-of v0, p1, Lhq9;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lhq9;

    iget-object v0, v0, Lhq9;->f:Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Ln4a;->e:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ln4a;->d:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    instance-of v0, p1, Lk8a;

    if-eqz v0, :cond_4

    iget-object p0, p0, Ln4a;->c:Ljava/util/HashSet;

    check-cast p1, Lk8a;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    instance-of v0, p1, Lht9;

    if-eqz v0, :cond_6

    check-cast p1, Lht9;

    iget-object v0, p0, Ln4a;->h:Lm4a;

    iget-object p0, p0, Ln4a;->f:Ljava/util/ArrayList;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_5

    neg-int v0, v0

    sub-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_6
    instance-of v0, p1, Lsna;

    if-eqz v0, :cond_7

    iget-object p0, p0, Ln4a;->g:Ljava/util/ArrayList;

    check-cast p1, Lsna;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p0, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ln4a;F)V
    .locals 7

    iget-object v0, p1, Ln4a;->b:Ljava/util/HashSet;

    iget-object v1, p1, Ln4a;->f:Ljava/util/ArrayList;

    iget-object v2, p1, Ln4a;->c:Ljava/util/HashSet;

    iget-object v3, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ln4a;->g:Ljava/util/ArrayList;

    iget-object v3, p1, Ln4a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ln4a;->d:Ljava/util/HashSet;

    iget-object v3, p1, Ln4a;->d:Ljava/util/HashSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ln4a;->e:Ljava/util/HashSet;

    iget-object p1, p1, Ln4a;->e:Ljava/util/HashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    cmpg-float v0, p2, p1

    if-gtz v0, :cond_0

    iget-object p1, p0, Ln4a;->c:Ljava/util/HashSet;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Ln4a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk8a;

    iget v5, v2, Lk8a;->g:F

    cmpl-float v6, v5, p1

    if-ltz v6, :cond_1

    mul-float/2addr v5, p2

    div-float/2addr v5, v4

    iput v5, v2, Lk8a;->f:F

    iput v3, v2, Lk8a;->g:F

    :cond_1
    invoke-virtual {p0, v2}, Ln4a;->c(Lm2a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lht9;

    iget v2, v1, Lht9;->j:F

    cmpl-float v5, v2, p1

    if-ltz v5, :cond_3

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    iput v2, v1, Lht9;->i:F

    iput v3, v1, Lht9;->j:F

    :cond_3
    invoke-virtual {p0, v1}, Ln4a;->c(Lm2a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final e(I)Ls5a;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ln4a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lht9;

    iget v3, v2, Lo2a;->g:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ls5a;

    iget-object p0, p0, Ln4a;->a:Lpp9;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Ls5a;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2a;

    iget-object v3, v2, Lm2a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ls5a;

    iget-object p0, p0, Ln4a;->a:Lpp9;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    return-object p1
.end method

.method public final g(Ln4a;F)V
    .locals 8

    const-string v0, "playbackStarted"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Ln4a;->c:Ljava/util/HashSet;

    iget-object v2, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackResumed"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackPaused"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackStopped"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackCompleted"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackError"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "volumeOn"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "volumeOff"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "fullscreenOn"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "fullscreenOff"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "playbackTimeout"

    invoke-virtual {p1, v0}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ln4a;->a(I)Ls5a;

    move-result-object v2

    iget-object v2, v2, Ls5a;->b:Ljava/util/List;

    iget-object v3, p0, Ln4a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_0

    iget-object p2, p0, Ln4a;->c:Ljava/util/HashSet;

    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v0}, Ln4a;->e(I)Ls5a;

    move-result-object p1

    iget-object p1, p1, Ls5a;->b:Ljava/util/List;

    iget-object p0, p0, Ln4a;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk8a;

    iget v6, v3, Lk8a;->g:F

    cmpl-float v7, v6, v2

    if-ltz v7, :cond_1

    mul-float/2addr v6, p2

    div-float/2addr v6, v5

    iput v6, v3, Lk8a;->f:F

    iput v4, v3, Lk8a;->g:F

    :cond_1
    invoke-virtual {p0, v3}, Ln4a;->c(Lm2a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ln4a;->e(I)Ls5a;

    move-result-object p1

    iget-object p1, p1, Ls5a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lht9;

    iget v1, v0, Lht9;->j:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    mul-float/2addr v1, p2

    div-float/2addr v1, v5

    iput v1, v0, Lht9;->i:F

    iput v4, v0, Lht9;->j:F

    :cond_3
    invoke-virtual {p0, v0}, Ln4a;->c(Lm2a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2a;

    iget-object v2, v1, Lm2a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Ln4a;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2a;

    iget-object v0, v0, Lm2a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
