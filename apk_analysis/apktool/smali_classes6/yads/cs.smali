.class public abstract Lyads/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashSet;

.field public final c:Lyads/k14;

.field public final d:Lyads/tl2;

.field public e:Landroid/os/Looper;

.field public f:Lyads/kx5;

.field public g:Lyads/rw4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lyads/cs;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lyads/cs;->b:Ljava/util/HashSet;

    new-instance v0, Lyads/k14;

    invoke-direct {v0}, Lyads/k14;-><init>()V

    iput-object v0, p0, Lyads/cs;->c:Lyads/k14;

    new-instance v0, Lyads/tl2;

    invoke-direct {v0}, Lyads/tl2;-><init>()V

    iput-object v0, p0, Lyads/cs;->d:Lyads/tl2;

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
.end method

.method public a()V
    .locals 0

    .line 31
    return-void
.end method

.method public final a(Lyads/i14;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 41
    iget-object v1, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    .line 42
    iget-object p1, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lyads/cs;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lyads/kx5;)V
    .locals 2

    .line 32
    iput-object p1, p0, Lyads/cs;->f:Lyads/kx5;

    .line 33
    iget-object v0, p0, Lyads/cs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/i14;

    .line 34
    invoke-interface {v1, p0, p1}, Lyads/i14;->a(Lyads/cs;Lyads/kx5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/l14;)V
    .locals 3

    iget-object p0, p0, Lyads/cs;->c:Lyads/k14;

    iget-object v0, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j14;

    iget-object v2, v1, Lyads/j14;->b:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract a(Lyads/p16;)V
.end method

.method public final a(Lyads/ul2;)V
    .locals 3

    .line 35
    iget-object p0, p0, Lyads/cs;->d:Lyads/tl2;

    .line 36
    iget-object v0, p0, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/sl2;

    .line 38
    iget-object v2, v1, Lyads/sl2;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 39
    iget-object v2, p0, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract a(Lyads/z04;)V
.end method

.method public b()V
    .locals 0

    .line 22
    return-void
.end method

.method public final b(Lyads/i14;)V
    .locals 2

    iget-object v0, p0, Lyads/cs;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/cs;->b()V

    :cond_0
    return-void
.end method

.method public abstract c()Lyads/p04;
.end method

.method public final c(Lyads/i14;)V
    .locals 1

    iget-object v0, p0, Lyads/cs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyads/cs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/cs;->e:Landroid/os/Looper;

    iput-object p1, p0, Lyads/cs;->f:Lyads/kx5;

    iput-object p1, p0, Lyads/cs;->g:Lyads/rw4;

    iget-object p1, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lyads/cs;->e()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lyads/cs;->a(Lyads/i14;)V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
