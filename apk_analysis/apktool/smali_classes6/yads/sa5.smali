.class public final Lyads/sa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/i2;

.field public final c:Lyads/oa5;

.field public final d:Lyads/sj4;

.field public final e:Lyads/bx5;

.field public final f:Lyads/fo1;

.field public g:Lyads/n03;

.field public h:Lyads/qa5;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/i2;Lyads/oa5;Lyads/ve4;Lyads/sj4;Lyads/bx5;Lyads/fo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sa5;->a:Lyads/d9;

    iput-object p2, p0, Lyads/sa5;->b:Lyads/i2;

    iput-object p3, p0, Lyads/sa5;->c:Lyads/oa5;

    iput-object p5, p0, Lyads/sa5;->d:Lyads/sj4;

    iput-object p6, p0, Lyads/sa5;->e:Lyads/bx5;

    iput-object p7, p0, Lyads/sa5;->f:Lyads/fo1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "close"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Lyads/qa5;

    invoke-direct {v0, p0}, Lyads/qa5;-><init>(Lyads/sa5;)V

    iget-object v1, p0, Lyads/sa5;->b:Lyads/i2;

    iget-object v1, v1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lyads/sa5;->h:Lyads/qa5;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_0

    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lyads/fe5;->F:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    sget-object v0, Lyads/tn0;->b:[Lyads/tn0;

    const-string v0, "divkit"

    iget-object v2, p0, Lyads/sa5;->a:Lyads/d9;

    iget-object v2, v2, Lyads/d9;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Lyads/pa5;

    iget-object v1, p0, Lyads/sa5;->c:Lyads/oa5;

    invoke-direct {v0, v1}, Lyads/pa5;-><init>(Lyads/oa5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lyads/ra5;

    invoke-direct {v0, p1}, Lyads/ra5;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lyads/sa5;->a:Lyads/d9;

    iget-object v1, p0, Lyads/sa5;->d:Lyads/sj4;

    iget-object v2, p0, Lyads/sa5;->e:Lyads/bx5;

    iget-object v3, p0, Lyads/sa5;->f:Lyads/fo1;

    iget-object v4, v1, Lyads/sj4;->a:Lyads/el4;

    iget-object v1, v1, Lyads/sj4;->b:Lyads/lm4;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Lyads/fo1;->a:Ljava/lang/String;

    goto :goto_5

    :cond_4
    move-object v3, v5

    :goto_5
    sget-object v6, Lyads/un0;->b:[Lyads/un0;

    const-string v6, "pack_shot"

    invoke-static {v3, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lyads/bx5;->d:Lyads/y00;

    invoke-interface {v3}, Lyads/y00;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Lyads/si4;

    invoke-direct {v1, p1, v0, v2}, Lyads/si4;-><init>(Lyads/d9;Lyads/ra5;Lyads/bx5;)V

    goto :goto_6

    :cond_5
    if-eqz v4, :cond_6

    new-instance v1, Lyads/cl4;

    invoke-direct {v1, p1, v4, v0, v2}, Lyads/cl4;-><init>(Lyads/d9;Lyads/el4;Lyads/ra5;Lyads/bx5;)V

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Lyads/im4;

    invoke-direct {p1, v1, v0}, Lyads/im4;-><init>(Lyads/lm4;Lyads/ra5;)V

    move-object v1, p1

    goto :goto_6

    :cond_7
    iget-object v1, v2, Lyads/bx5;->d:Lyads/y00;

    invoke-interface {v1}, Lyads/y00;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lyads/si4;

    invoke-direct {v1, p1, v0, v2}, Lyads/si4;-><init>(Lyads/d9;Lyads/ra5;Lyads/bx5;)V

    goto :goto_6

    :cond_8
    move-object v1, v5

    :goto_6
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lyads/n03;->start()V

    move-object v5, v1

    :cond_9
    iput-object v5, p0, Lyads/sa5;->g:Lyads/n03;

    :cond_a
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/sa5;->h:Lyads/qa5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/sa5;->b:Lyads/i2;

    iget-object v1, v1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lyads/sa5;->g:Lyads/n03;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/n03;->invalidate()V

    :cond_1
    return-void
.end method
