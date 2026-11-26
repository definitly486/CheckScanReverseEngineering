.class public final Lyads/p10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;
.implements Lyads/j2;


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/i2;

.field public final c:Lyads/ph6;

.field public final d:Lyads/m2;

.field public final e:Lyads/te4;

.field public final f:Lyads/jd0;

.field public final g:Lyads/bx5;

.field public h:Lyads/e10;

.field public final i:Lyads/l15;

.field public final j:Lyads/y00;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/i2;Lyads/ph6;Lyads/m2;Lyads/te4;Lyads/jd0;Lyads/bx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p10;->a:Lyads/d9;

    iput-object p2, p0, Lyads/p10;->b:Lyads/i2;

    iput-object p3, p0, Lyads/p10;->c:Lyads/ph6;

    iput-object p4, p0, Lyads/p10;->d:Lyads/m2;

    iput-object p5, p0, Lyads/p10;->e:Lyads/te4;

    iput-object p6, p0, Lyads/p10;->f:Lyads/jd0;

    iput-object p7, p0, Lyads/p10;->g:Lyads/bx5;

    iget-object p1, p7, Lyads/bx5;->a:Lyads/l15;

    iput-object p1, p0, Lyads/p10;->i:Lyads/l15;

    iget-object p1, p7, Lyads/bx5;->d:Lyads/y00;

    iput-object p1, p0, Lyads/p10;->j:Lyads/y00;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 175
    iget-object p0, p0, Lyads/p10;->h:Lyads/e10;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/e10;->a()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 10

    iget-object v0, p0, Lyads/p10;->e:Lyads/te4;

    invoke-interface {v0, p1}, Lyads/te4;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lyads/p10;->e:Lyads/te4;

    invoke-interface {v0, p1}, Lyads/te4;->b(Landroid/view/ViewGroup;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v2, :cond_8

    iget-object p1, p0, Lyads/p10;->b:Lyads/i2;

    iget-object p1, p1, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lyads/fe5;->F:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    sget-object v0, Lyads/tn0;->b:[Lyads/tn0;

    const-string v0, "divkit"

    iget-object v1, p0, Lyads/p10;->a:Lyads/d9;

    iget-object v1, v1, Lyads/d9;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    new-instance p1, Lyads/o10;

    iget-object v0, p0, Lyads/p10;->d:Lyads/m2;

    iget-object v1, p0, Lyads/p10;->f:Lyads/jd0;

    invoke-direct {p1, v0, v1}, Lyads/o10;-><init>(Lyads/m2;Lyads/jd0;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-object p1, p0, Lyads/p10;->a:Lyads/d9;

    iget-object p1, p1, Lyads/d9;->j:Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_5
    move-wide v5, v0

    goto :goto_6

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_5

    new-instance v4, Lyads/gn2;

    invoke-direct {v4}, Lyads/gn2;-><init>()V

    move-wide v8, v5

    new-instance v5, Lyads/k10;

    invoke-direct {v5}, Lyads/k10;-><init>()V

    new-instance v1, Lyads/f15;

    iget-object v6, p0, Lyads/p10;->f:Lyads/jd0;

    iget-object v7, p0, Lyads/p10;->i:Lyads/l15;

    invoke-direct/range {v1 .. v9}, Lyads/f15;-><init>(Landroid/view/View;Landroid/widget/ProgressBar;Lyads/gn2;Lyads/k10;Lyads/jd0;Lyads/l15;J)V

    goto :goto_7

    :cond_5
    move-wide v8, v5

    iget-object p1, p0, Lyads/p10;->j:Lyads/y00;

    invoke-interface {p1}, Lyads/y00;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance v1, Lyads/ck0;

    iget-object v3, p0, Lyads/p10;->c:Lyads/ph6;

    iget-object v4, p0, Lyads/p10;->f:Lyads/jd0;

    iget-object p1, p0, Lyads/p10;->g:Lyads/bx5;

    iget-object v7, p1, Lyads/bx5;->e:Lyads/l10;

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lyads/ck0;-><init>(Landroid/view/View;Lyads/ph6;Lyads/jd0;JLyads/l10;)V

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lyads/p10;->h:Lyads/e10;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lyads/e10;->onAdDisplayed()V

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const-string p0, "close"

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/p10;->h:Lyads/e10;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/e10;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lyads/p10;->b:Lyads/i2;

    iget-object v0, v0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/p10;->h:Lyads/e10;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/e10;->invalidate()V

    :cond_0
    return-void
.end method
