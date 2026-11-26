.class public final Lyads/wu3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zf;

.field public final b:Lyads/uf5;

.field public final c:Lyads/a74;

.field public final d:Lyads/v50;

.field public final e:Lyads/hd0;

.field public final f:Lyads/uv3;


# direct methods
.method public constructor <init>(Lyads/zf;Lyads/uf5;Lyads/a74;Lyads/v50;Lyads/hd0;Lyads/uv3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wu3;->a:Lyads/zf;

    iput-object p2, p0, Lyads/wu3;->b:Lyads/uf5;

    iput-object p3, p0, Lyads/wu3;->c:Lyads/a74;

    iput-object p4, p0, Lyads/wu3;->d:Lyads/v50;

    iput-object p5, p0, Lyads/wu3;->e:Lyads/hd0;

    iput-object p6, p0, Lyads/wu3;->f:Lyads/uv3;

    return-void
.end method


# virtual methods
.method public final a()Lyads/vf0;
    .locals 12

    iget-object v0, p0, Lyads/wu3;->a:Lyads/zf;

    invoke-virtual {v0}, Lyads/zf;->a()Lyads/we0;

    move-result-object v2

    iget-object v0, p0, Lyads/wu3;->b:Lyads/uf5;

    iget-object v1, v0, Lyads/uf5;->b:Lyads/q94;

    iget-object v0, v0, Lyads/uf5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/q94;->a(Landroid/content/Context;)Lyads/p94;

    move-result-object v0

    sget-object v1, Lyads/n94;->a:Lyads/n94;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/ng0;

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v5}, Lyads/ng0;-><init>(Ljava/util/List;Z)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lyads/o94;

    if-eqz v1, :cond_7

    check-cast v0, Lyads/o94;

    iget-object v0, v0, Lyads/o94;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/vm3;

    invoke-virtual {v6}, Lyads/vm3;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lyads/ng0;

    invoke-direct {v0, v1, v4}, Lyads/ng0;-><init>(Ljava/util/List;Z)V

    :goto_1
    iget-object v1, p0, Lyads/wu3;->c:Lyads/a74;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/u54;->a()Ljava/util/List;

    move-result-object v6

    iget-object v1, v1, Lyads/a74;->a:Lyads/z64;

    invoke-virtual {v1, v6}, Lyads/z64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lyads/wu3;->d:Lyads/v50;

    move v7, v5

    new-instance v5, Lyads/df0;

    iget-object v8, v6, Lyads/v50;->a:Lyads/zg5;

    invoke-virtual {v8}, Lyads/zg5;->b()Z

    move-result v8

    iget-object v9, v6, Lyads/v50;->a:Lyads/zg5;

    invoke-virtual {v9}, Lyads/zg5;->c()Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v6, Lyads/v50;->a:Lyads/zg5;

    invoke-virtual {v10}, Lyads/zg5;->e()Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v6, Lyads/v50;->b:Lyads/w10;

    invoke-virtual {v11}, Lyads/w10;->b()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-static {v11}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    iget-object v11, v6, Lyads/v50;->b:Lyads/w10;

    invoke-virtual {v11}, Lyads/w10;->d()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {v11}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    iget-object v6, v6, Lyads/v50;->b:Lyads/w10;

    invoke-virtual {v6}, Lyads/w10;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v7

    :cond_5
    :goto_2
    invoke-direct {v5, v8, v9, v10, v4}, Lyads/df0;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Z)V

    iget-object v4, p0, Lyads/wu3;->e:Lyads/hd0;

    new-instance v6, Lyads/of0;

    iget-object v4, v4, Lyads/hd0;->a:Lyads/zg5;

    invoke-virtual {v4}, Lyads/zg5;->d()Z

    move-result v4

    invoke-direct {v6, v4}, Lyads/of0;-><init>(Z)V

    iget-object p0, p0, Lyads/wu3;->f:Lyads/uv3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/uv3;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v7, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {v7}, Lyads/u94;->a()Z

    move-result v7

    if-nez v7, :cond_6

    :goto_3
    move-object v7, v3

    goto :goto_4

    :cond_6
    new-instance v3, Lyads/wf0;

    iget-object v7, p0, Lyads/uv3;->a:Lyads/oa4;

    invoke-virtual {v7}, Lyads/oa4;->b()Ljava/util/List;

    move-result-object v7

    iget-object p0, p0, Lyads/uv3;->b:Lyads/z94;

    invoke-virtual {p0}, Lyads/z94;->b()Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, v7, p0}, Lyads/wf0;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_4
    monitor-exit v4

    move-object v4, v1

    new-instance v1, Lyads/vf0;

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lyads/vf0;-><init>(Lyads/we0;Lyads/ng0;Ljava/util/ArrayList;Lyads/df0;Lyads/of0;Lyads/wf0;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4

    throw p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-object v3
.end method
