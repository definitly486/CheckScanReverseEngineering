.class public abstract Lyads/h50;
.super Lyads/cs;
.source "SourceFile"


# instance fields
.field public final h:Ljava/util/HashMap;

.field public i:Landroid/os/Handler;

.field public j:Lyads/p16;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/cs;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lyads/h14;)Lyads/h14;
    .locals 0

    .line 146
    return-object p2
.end method

.method public final a()V
    .locals 2

    .line 144
    iget-object p0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g50;

    .line 145
    iget-object v1, v0, Lyads/g50;->a:Lyads/cs;

    iget-object v0, v0, Lyads/g50;->b:Lyads/i14;

    invoke-virtual {v1, v0}, Lyads/cs;->a(Lyads/i14;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lyads/cs;)V
    .locals 4

    iget-object v0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lsw9;

    invoke-direct {v0, p0, p1}, Lsw9;-><init>(Lyads/h50;Ljava/lang/Object;)V

    new-instance v1, Lyads/f50;

    invoke-direct {v1, p0, p1}, Lyads/f50;-><init>(Lyads/h50;Ljava/lang/Object;)V

    iget-object v2, p0, Lyads/h50;->h:Ljava/util/HashMap;

    new-instance v3, Lyads/g50;

    invoke-direct {v3, p2, v0, v1}, Lyads/g50;-><init>(Lyads/cs;Lyads/i14;Lyads/f50;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lyads/h50;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lyads/cs;->c:Lyads/k14;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lyads/j14;

    invoke-direct {v3, p1, v1}, Lyads/j14;-><init>(Landroid/os/Handler;Lyads/l14;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lyads/h50;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lyads/cs;->d:Lyads/tl2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lyads/sl2;

    invoke-direct {v3, p1, v1}, Lyads/sl2;-><init>(Landroid/os/Handler;Lyads/ul2;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lyads/h50;->j:Lyads/p16;

    iget-object v1, p0, Lyads/cs;->g:Lyads/rw4;

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p2, Lyads/cs;->e:Landroid/os/Looper;

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_1
    :goto_0
    iput-object v1, p2, Lyads/cs;->g:Lyads/rw4;

    iget-object v1, p2, Lyads/cs;->f:Lyads/kx5;

    iget-object v3, p2, Lyads/cs;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p2, Lyads/cs;->e:Landroid/os/Looper;

    if-nez v3, :cond_2

    iput-object v2, p2, Lyads/cs;->e:Landroid/os/Looper;

    iget-object v1, p2, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lyads/cs;->a(Lyads/p16;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lyads/cs;->b(Lyads/i14;)V

    invoke-virtual {v0, p2, v1}, Lsw9;->a(Lyads/cs;Lyads/kx5;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lyads/cs;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2, v0}, Lyads/cs;->a(Lyads/i14;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lud;->g()V

    return-void

    :cond_6
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lyads/h50;->b(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g50;

    iget-object v1, v0, Lyads/g50;->a:Lyads/cs;

    iget-object v0, v0, Lyads/g50;->b:Lyads/i14;

    invoke-virtual {v1, v0}, Lyads/cs;->b(Lyads/i14;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract b(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V
.end method

.method public d()V
    .locals 1

    iget-object p0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g50;

    iget-object v0, v0, Lyads/g50;->a:Lyads/cs;

    invoke-virtual {v0}, Lyads/cs;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g50;

    iget-object v2, v1, Lyads/g50;->a:Lyads/cs;

    iget-object v3, v1, Lyads/g50;->b:Lyads/i14;

    invoke-virtual {v2, v3}, Lyads/cs;->c(Lyads/i14;)V

    iget-object v2, v1, Lyads/g50;->a:Lyads/cs;

    iget-object v3, v1, Lyads/g50;->c:Lyads/f50;

    invoke-virtual {v2, v3}, Lyads/cs;->a(Lyads/l14;)V

    iget-object v2, v1, Lyads/g50;->a:Lyads/cs;

    iget-object v1, v1, Lyads/g50;->c:Lyads/f50;

    invoke-virtual {v2, v1}, Lyads/cs;->a(Lyads/ul2;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/h50;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
