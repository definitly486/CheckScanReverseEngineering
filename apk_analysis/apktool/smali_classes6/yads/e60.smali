.class public final Lyads/e60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/i2;

.field public final c:Lyads/b4;

.field public final d:Lyads/sj4;

.field public final e:Lyads/bx5;

.field public final f:Lyads/fo1;

.field public final g:Lyads/f60;

.field public final h:Lyads/nt3;

.field public i:Lyads/n03;

.field public j:Lyads/d60;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/i2;Lyads/b4;Lyads/sj4;Lyads/bx5;Lyads/fo1;)V
    .locals 2

    new-instance v0, Lyads/f60;

    invoke-direct {v0}, Lyads/f60;-><init>()V

    new-instance v1, Lyads/nt3;

    invoke-direct {v1}, Lyads/nt3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e60;->a:Lyads/d9;

    iput-object p2, p0, Lyads/e60;->b:Lyads/i2;

    iput-object p3, p0, Lyads/e60;->c:Lyads/b4;

    iput-object p4, p0, Lyads/e60;->d:Lyads/sj4;

    iput-object p5, p0, Lyads/e60;->e:Lyads/bx5;

    iput-object p6, p0, Lyads/e60;->f:Lyads/fo1;

    iput-object v0, p0, Lyads/e60;->g:Lyads/f60;

    iput-object v1, p0, Lyads/e60;->h:Lyads/nt3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 7

    new-instance v0, Lyads/d60;

    invoke-direct {v0, p0}, Lyads/d60;-><init>(Lyads/e60;)V

    iget-object v1, p0, Lyads/e60;->b:Lyads/i2;

    iget-object v1, v1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lyads/e60;->j:Lyads/d60;

    iget-object v0, p0, Lyads/e60;->h:Lyads/nt3;

    iget-object v1, v0, Lyads/nt3;->a:Lyads/mt3;

    const-string v1, "linear_progress_view"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iget-object v0, v0, Lyads/nt3;->b:Lyads/e55;

    sget-object v1, Lyads/nt3;->c:[Lze4;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lyads/e60;->g:Lyads/f60;

    iget-object v0, p0, Lyads/e60;->a:Lyads/d9;

    iget-object v1, p0, Lyads/e60;->c:Lyads/b4;

    iget-object v3, p0, Lyads/e60;->d:Lyads/sj4;

    iget-object v4, p0, Lyads/e60;->e:Lyads/bx5;

    iget-object v5, p0, Lyads/e60;->f:Lyads/fo1;

    iget-object v6, p0, Lyads/e60;->h:Lyads/nt3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lyads/sj4;->a:Lyads/el4;

    iget-object v3, v3, Lyads/sj4;->b:Lyads/lm4;

    if-eqz v5, :cond_1

    iget-object v2, v5, Lyads/fo1;->a:Ljava/lang/String;

    :cond_1
    sget-object v5, Lyads/un0;->b:[Lyads/un0;

    const-string v5, "pack_shot"

    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Lyads/vi4;

    invoke-direct {p1, v1, v4, v6}, Lyads/vi4;-><init>(Lyads/b4;Lyads/bx5;Lyads/m15;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v2, Lyads/dl4;

    invoke-direct {v2, v0, p1, v1, v6}, Lyads/dl4;-><init>(Lyads/d9;Lyads/el4;Lyads/b4;Lyads/m15;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    new-instance p1, Lyads/km4;

    iget-object v0, v4, Lyads/bx5;->c:Lyads/ek0;

    invoke-direct {p1, v3, v1, v0, v6}, Lyads/km4;-><init>(Lyads/lm4;Lyads/b4;Lyads/ek0;Lyads/m15;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lyads/vi4;

    invoke-direct {p1, v1, v4, v6}, Lyads/vi4;-><init>(Lyads/b4;Lyads/bx5;Lyads/m15;)V

    :goto_1
    invoke-interface {p1}, Lyads/n03;->start()V

    iput-object p1, p0, Lyads/e60;->i:Lyads/n03;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/e60;->j:Lyads/d60;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/e60;->b:Lyads/i2;

    iget-object v1, v1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lyads/e60;->i:Lyads/n03;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/n03;->invalidate()V

    :cond_1
    iget-object p0, p0, Lyads/e60;->h:Lyads/nt3;

    iget-object p0, p0, Lyads/nt3;->b:Lyads/e55;

    sget-object v0, Lyads/nt3;->c:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
