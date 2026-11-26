.class public final Lyads/hc4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/e4;

.field public final c:Lyads/d9;

.field public final d:Lyads/io4;

.field public final e:Lyads/gj4;

.field public final f:Ljava/lang/String;

.field public final g:Lyads/ba;

.field public final h:Lyads/ea;

.field public final i:Lyads/zg5;

.field public final j:Lyads/i06;

.field public final k:Lyads/b16;

.field public final l:Lyads/e40;

.field public m:Lyads/we3;

.field public n:Z

.field public o:Z

.field public final p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/io4;Lyads/gj4;Ljava/lang/String;Lyads/ba;)V
    .locals 4

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p2, p3}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    sget-object p3, Lyads/zg5;->l:Lyads/zg5;

    if-nez p3, :cond_1

    sget-object p3, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p3

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
    monitor-exit p3

    move-object p3, v1

    goto :goto_2

    :goto_1
    monitor-exit p3

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/i06;

    invoke-direct {v1, p5}, Lyads/i06;-><init>(Lyads/io4;)V

    new-instance v2, Lyads/b16;

    invoke-direct {v2}, Lyads/b16;-><init>()V

    new-instance v3, Lyads/e40;

    invoke-direct {v3}, Lyads/e40;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hc4;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/hc4;->b:Lyads/e4;

    iput-object p4, p0, Lyads/hc4;->c:Lyads/d9;

    iput-object p5, p0, Lyads/hc4;->d:Lyads/io4;

    iput-object p6, p0, Lyads/hc4;->e:Lyads/gj4;

    iput-object p7, p0, Lyads/hc4;->f:Ljava/lang/String;

    iput-object p8, p0, Lyads/hc4;->g:Lyads/ba;

    iput-object v0, p0, Lyads/hc4;->h:Lyads/ea;

    iput-object p3, p0, Lyads/hc4;->i:Lyads/zg5;

    iput-object v1, p0, Lyads/hc4;->j:Lyads/i06;

    iput-object v2, p0, Lyads/hc4;->k:Lyads/b16;

    iput-object v3, p0, Lyads/hc4;->l:Lyads/e40;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/a16;)Lyads/i66;
    .locals 2

    .line 235
    iget-object v0, p0, Lyads/hc4;->i:Lyads/zg5;

    iget-object v1, p0, Lyads/hc4;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lyads/fe5;->B0()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object p0, p0, Lyads/hc4;->e:Lyads/gj4;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Lyads/a16;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/gj4;->b(I)Lyads/i66;

    move-result-object p0

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p1}, Lyads/a16;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/gj4;->a(I)Lyads/i66;

    move-result-object p0

    .line 240
    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    sget-object v0, Lyads/uu4;->h:Lyads/su4;

    iget-object v1, p0, Lyads/hc4;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/su4;->a(Landroid/content/Context;)Lyads/uu4;

    move-result-object v0

    invoke-virtual {v0}, Lyads/uu4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lyads/hc4;->j:Lyads/i06;

    invoke-virtual {v0}, Lyads/i06;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lyads/hc4;->j:Lyads/i06;

    invoke-virtual {v0, p0}, Lyads/i06;->a(Lyads/hc4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/hc4;->k:Lyads/b16;

    iget-object v1, p0, Lyads/hc4;->g:Lyads/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ck5;

    iget-object v3, v3, Lyads/ck5;->d:Lyads/dk5;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_0
    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    sget-object v0, Lyads/dk5;->b:Lyads/dk5;

    goto :goto_2

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    sget-object v0, Lyads/dk5;->c:Lyads/dk5;

    goto :goto_2

    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dk5;

    sget-object v2, Lyads/dk5;->c:Lyads/dk5;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v0, Lyads/dk5;->b:Lyads/dk5;

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/ck5;

    iget-object v4, v4, Lyads/ck5;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ck5;

    iget-object v7, v2, Lyads/ck5;->b:Ljava/lang/String;

    iget-wide v5, v2, Lyads/ck5;->a:J

    iget v4, v2, Lyads/ck5;->c:I

    iget-object v2, v2, Lyads/ck5;->d:Lyads/dk5;

    sget-object v3, Lyads/dk5;->d:Lyads/dk5;

    if-ne v2, v3, :cond_9

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move-object v8, v0

    goto :goto_6

    :cond_9
    :goto_5
    move-object v8, v2

    :goto_6
    new-instance v3, Lyads/a16;

    invoke-direct/range {v3 .. v8}, Lyads/a16;-><init>(IJLjava/lang/String;Lyads/dk5;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lyads/a16;Lyads/g66;)V
    .locals 6

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p1, Lyads/a16;->d:Lyads/dk5;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 206
    sget-object v0, Lyads/i16;->k:Lyads/i16;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 207
    :cond_1
    sget-object v0, Lyads/i16;->f:Lyads/i16;

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Lyads/i16;->e:Lyads/i16;

    .line 209
    :goto_0
    iget-object v2, p0, Lyads/hc4;->l:Lyads/e40;

    iget-object v3, p0, Lyads/hc4;->c:Lyads/d9;

    iget-object v4, p0, Lyads/hc4;->b:Lyads/e4;

    invoke-virtual {v2, v4, v3}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lyads/hc4;->h:Lyads/ea;

    .line 211
    iget-object v4, p1, Lyads/a16;->a:Ljava/lang/String;

    const/4 v5, 0x4

    .line 212
    invoke-static {v3, v4, v0, v2, v5}, Lyads/ea;->a(Lyads/ea;Ljava/lang/String;Lyads/i16;Lyads/h75;I)V

    .line 213
    iget-boolean v0, p0, Lyads/hc4;->n:Z

    if-nez v0, :cond_3

    .line 214
    iput-boolean v1, p0, Lyads/hc4;->n:Z

    .line 215
    iget-object v0, p0, Lyads/hc4;->m:Lyads/we3;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lyads/we3;->c()V

    .line 216
    :cond_3
    iget-boolean v0, p0, Lyads/hc4;->o:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iput-boolean v1, p0, Lyads/hc4;->o:Z

    .line 218
    iget-object v0, p0, Lyads/hc4;->m:Lyads/we3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lyads/we3;->g()V

    .line 219
    :cond_4
    iget-object v0, p0, Lyads/hc4;->d:Lyads/io4;

    .line 220
    iget-object v1, p1, Lyads/a16;->d:Lyads/dk5;

    .line 221
    invoke-interface {v0, v1, p2}, Lyads/io4;->a(Lyads/dk5;Lyads/g66;)V

    .line 222
    iget-object v0, p0, Lyads/hc4;->d:Lyads/io4;

    .line 223
    iget-object p1, p1, Lyads/a16;->d:Lyads/dk5;

    .line 224
    iget-object v1, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 227
    check-cast v3, Lyads/a16;

    .line 228
    iget-object v3, v3, Lyads/a16;->d:Lyads/dk5;

    .line 229
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_5
    invoke-interface {v0, p1, v2, p2}, Lyads/io4;->a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lyads/d9;Ljava/util/ArrayList;)V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lyads/hc4;->d:Lyads/io4;

    invoke-interface {v0, p1}, Lyads/io4;->a(Lyads/d9;)V

    .line 199
    iget-object p1, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object p1, p0, Lyads/hc4;->d:Lyads/io4;

    invoke-interface {p1}, Lyads/io4;->invalidate()V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lyads/hc4;->o:Z

    .line 202
    invoke-virtual {p0}, Lyads/hc4;->b()V

    .line 203
    invoke-virtual {p0, p2}, Lyads/hc4;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lyads/ou4;Z)V
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lyads/hc4;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 244
    invoke-virtual {p0}, Lyads/hc4;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lyads/a16;)Lyads/i66;
    .locals 0

    .line 34
    iget-object p0, p0, Lyads/hc4;->e:Lyads/gj4;

    invoke-virtual {p1}, Lyads/a16;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/gj4;->b(I)Lyads/i66;

    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/hc4;->j:Lyads/i06;

    invoke-virtual {v0}, Lyads/i06;->b()V

    iget-object v0, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/a16;

    const/4 v2, 0x0

    iput-object v2, v1, Lyads/a16;->e:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
