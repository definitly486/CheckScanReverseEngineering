.class public final Lyads/xe3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/af3;
.implements Lyads/ia4;
.implements Lyads/qd6;
.implements Lyads/o65;


# instance fields
.field public final a:Lyads/lf4;

.field public final b:Lyads/g5;

.field public final c:Lyads/ye3;

.field public final d:Landroid/content/Context;

.field public e:Ljava/util/ArrayList;

.field public f:Lyads/j5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/lf4;Lyads/ze3;Lyads/g5;)V
    .locals 1

    new-instance v0, Lyads/ye3;

    invoke-direct {v0, p3}, Lyads/ye3;-><init>(Lyads/ze3;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/xe3;->a:Lyads/lf4;

    iput-object p4, p0, Lyads/xe3;->b:Lyads/g5;

    iput-object v0, p0, Lyads/xe3;->c:Lyads/ye3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/xe3;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lyads/xe3;->b:Lyads/g5;

    iget-object v1, v0, Lyads/g5;->a:Lyads/vf4;

    iget-object v1, v1, Lyads/vf4;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lyads/g5;->b:Lyads/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lyads/f5;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lyads/f5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lyads/xe3;->a:Lyads/lf4;

    iget-object p0, p0, Lyads/xe3;->f:Lyads/j5;

    iget-object v0, v0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {v0, p0}, Lyads/nf4;->a(Lyads/j5;)V

    return-void
.end method

.method public final b()V
    .locals 7

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/xe3;->c:Lyads/ye3;

    iget-boolean v1, v0, Lyads/ye3;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/ye3;->d:Z

    sget-object v1, Lyads/ye3;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/e75;

    iget-object v3, v0, Lyads/ye3;->a:Lyads/ze3;

    iget-object v4, v0, Lyads/ye3;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lyads/ze3;->a()Lyads/h75;

    move-result-object v5

    iget-object v6, v5, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v2, v5}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 7

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/xe3;->c:Lyads/ye3;

    iget-boolean v1, v0, Lyads/ye3;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/ye3;->c:Z

    sget-object v1, Lyads/ye3;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/e75;

    iget-object v3, v0, Lyads/ye3;->a:Lyads/ze3;

    iget-object v4, v0, Lyads/ye3;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lyads/ze3;->a()Lyads/h75;

    move-result-object v5

    iget-object v6, v5, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v2, v5}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 7

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/xe3;->c:Lyads/ye3;

    iget-boolean v1, v0, Lyads/ye3;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/ye3;->c:Z

    sget-object v1, Lyads/ye3;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/e75;

    iget-object v3, v0, Lyads/ye3;->a:Lyads/ze3;

    iget-object v4, v0, Lyads/ye3;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lyads/ze3;->a()Lyads/h75;

    move-result-object v5

    iget-object v6, v5, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v2, v5}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 7

    invoke-virtual {p0}, Lyads/xe3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/xe3;->c:Lyads/ye3;

    iget-boolean v1, v0, Lyads/ye3;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/ye3;->d:Z

    sget-object v1, Lyads/ye3;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/e75;

    iget-object v3, v0, Lyads/ye3;->a:Lyads/ze3;

    iget-object v4, v0, Lyads/ye3;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lyads/ze3;->a()Lyads/h75;

    move-result-object v5

    iget-object v6, v5, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v2, v5}, Lyads/ze3;->a(Lyads/e75;Lyads/h75;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/xe3;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/xe3;->a()V

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lyads/xe3;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lyads/fe5;->u:Z

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lyads/xe3;->e:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
