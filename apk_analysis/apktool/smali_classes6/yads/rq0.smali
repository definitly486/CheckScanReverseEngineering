.class public final Lyads/rq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lyads/cb1;

.field public c:Z

.field public final d:Ljava/util/ArrayList;

.field public final synthetic e:Lyads/vq0;


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/rq0;->e:Lyads/vq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/rq0;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/rq0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lyads/rq0;->b:Lyads/cb1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lyads/cb1;->b:J

    iget-object v3, p0, Lyads/rq0;->e:Lyads/vq0;

    iget-wide v4, v3, Lyads/vq0;->F:J

    cmp-long v4, v1, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lyads/rq0;->c:Z

    invoke-virtual {v3, v1, v2, v0}, Lyads/vq0;->b(JZ)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lyads/rq0;->e:Lyads/vq0;

    iget-object v2, v2, Lyads/vq0;->o:Lyads/wq0;

    iget-object v2, v2, Lyads/wq0;->f:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/en1;

    iget-object v3, p0, Lyads/rq0;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    instance-of v4, v3, Lre4;

    if-eqz v4, :cond_2

    instance-of v4, v3, Lte4;

    if-eqz v4, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v4, p0, Lyads/rq0;->e:Lyads/vq0;

    iget-object v4, v4, Lyads/vq0;->z:Lyads/ub5;

    invoke-static {v4}, Lyads/vq0;->a(Lyads/ub5;)Lyads/fs2;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lyads/en1;->a(Lyads/cb1;Ljava/util/List;Lyads/fs2;)V
    :try_end_0
    .catch Lyads/qq5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    iget-object v2, p0, Lyads/rq0;->e:Lyads/vq0;

    invoke-static {v2, v0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lyads/rq0;->e:Lyads/vq0;

    invoke-virtual {v0}, Lyads/vq0;->n()Lyads/bi2;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_5
    iget-object v2, v0, Lyads/vq0;->n:Lyads/nq0;

    iget-object v2, v2, Lyads/nq0;->x:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/sv5;

    iget-object v3, v0, Lyads/vq0;->O:Lyads/qb1;

    iget-object v3, v3, Lyads/qb1;->a:Ljava/lang/String;

    iget-object v4, v2, Lyads/sv5;->a:Ljava/util/LinkedHashMap;

    monitor-enter v4

    :try_start_1
    iget-object v2, v2, Lyads/sv5;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    iget-object v2, v0, Lyads/vq0;->Q:Lyads/db1;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, v2, Lyads/db1;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    sget v1, Lyads/db1;->i:I

    const-wide/16 v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v2, v2, Lyads/db1;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/cb1;

    iget-wide v1, v1, Lyads/cb1;->b:J

    :goto_3
    invoke-virtual {v0}, Lyads/vq0;->n()Lyads/bi2;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-wide v1, v3, Lyads/bi2;->a:J

    :cond_8
    invoke-virtual {v0, v1, v2, v5}, Lyads/vq0;->b(JZ)V

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/rq0;->b:Lyads/cb1;

    iput-boolean v5, p0, Lyads/rq0;->c:Z

    iget-object p0, p0, Lyads/rq0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Lyads/cb1;Lyads/n32;Z)V
    .locals 7

    .line 181
    invoke-static {p2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 182
    iget-object v0, p0, Lyads/rq0;->b:Lyads/cb1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-object v2, p0, Lyads/rq0;->b:Lyads/cb1;

    .line 184
    iput-boolean v1, p0, Lyads/rq0;->c:Z

    .line 185
    iget-object v0, p0, Lyads/rq0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    :cond_0
    iput-object p1, p0, Lyads/rq0;->b:Lyads/cb1;

    .line 187
    iget-boolean p1, p0, Lyads/rq0;->c:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lyads/rq0;->c:Z

    .line 188
    iget-object p1, p0, Lyads/rq0;->d:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 189
    iget-object p1, p0, Lyads/rq0;->e:Lyads/vq0;

    .line 190
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/n32;

    .line 191
    iget-object v1, p1, Lyads/vq0;->n:Lyads/nq0;

    .line 192
    iget-object v1, v1, Lyads/nq0;->z:Lcl4;

    .line 193
    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/l32;

    .line 194
    iget-object v3, p1, Lyads/vq0;->O:Lyads/qb1;

    .line 195
    iget-object v3, v3, Lyads/qb1;->a:Ljava/lang/String;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-virtual {v0}, Lyads/n32;->b()Ljava/lang/String;

    move-result-object v4

    .line 198
    iget-object v5, v0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v2

    goto :goto_2

    .line 199
    :cond_3
    iget-object v0, v0, Lyads/n32;->b:Ljava/util/List;

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    .line 200
    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    .line 201
    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 202
    iget-object v5, v1, Lyads/l32;->c:Landroidx/collection/ArrayMap;

    monitor-enter v5

    .line 203
    :try_start_0
    iget-object v6, v1, Lyads/l32;->b:Lyads/sv5;

    invoke-virtual {v6, v3, v4, v0}, Lyads/sv5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 204
    iget-object v1, v1, Lyads/l32;->a:Lyads/ff3;

    .line 205
    iget-object v1, v1, Lyads/ff3;->a:Ljava/util/Map;

    .line 206
    new-instance v6, Lb36;

    invoke-direct {v6, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 208
    :cond_4
    :goto_3
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v5

    goto :goto_1

    :goto_4
    monitor-exit v5

    throw p0

    .line 210
    :cond_5
    iget p1, p0, Lyads/rq0;->a:I

    if-nez p1, :cond_6

    .line 211
    invoke-virtual {p0}, Lyads/rq0;->a()V

    :cond_6
    return-void
.end method
