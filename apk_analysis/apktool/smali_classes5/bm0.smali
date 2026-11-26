.class public final Lbm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrp0;

.field public final b:Laa;

.field public final c:Lt42;

.field public final d:Ln53;

.field public final e:I

.field public final f:Lz68;

.field public final g:Lgy6;

.field public final h:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final l:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Lhc0$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final n:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Ler6;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrp0;Ljf6;Laa;Lt42;Ln53;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm0;->a:Lrp0;

    iput-object p3, p0, Lbm0;->b:Laa;

    iput-object p4, p0, Lbm0;->c:Lt42;

    iput-object p5, p0, Lbm0;->d:Ln53;

    invoke-interface {p2}, Ljf6;->O0()I

    move-result p2

    iput p2, p0, Lbm0;->e:I

    sget-object p2, Lbm0$g;->f:Lbm0$g;

    invoke-static {p2}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p2

    iput-object p2, p0, Lbm0;->f:Lz68;

    invoke-static {p2}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p2

    iput-object p2, p0, Lbm0;->g:Lgy6;

    sget-object p2, Lkx2;->b:Lkx2;

    invoke-static {p2}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p3

    iput-object p3, p0, Lbm0;->h:Lhi0;

    invoke-static {p2}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p4

    iput-object p4, p0, Lbm0;->i:Lhi0;

    invoke-interface {p1}, Lrp0;->m()Lhi0;

    move-result-object p5

    new-instance v0, Lbm0$b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    new-instance v2, Lfl0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lfl0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p3, p5, v2}, Ltq5;->b(Lwr5;Ltq5;Lli0;)Ltq5;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lbm0;->j:Ltq5;

    invoke-interface {p1}, Lrp0;->m()Lhi0;

    move-result-object p3

    new-instance p5, Lbm0$a;

    invoke-direct {p5, v1}, Lgh4;-><init>(I)V

    new-instance v0, Lp9;

    const/4 v2, 0x1

    invoke-direct {v0, p5, v2}, Lp9;-><init>(Ljava/lang/Object;I)V

    invoke-static {p4, p3, v0}, Ltq5;->b(Lwr5;Ltq5;Lli0;)Ltq5;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lbm0;->k:Ltq5;

    new-instance p3, Lx68$c;

    invoke-direct {p3, p2}, Lx68$c;-><init>(Ljava/util/List;)V

    invoke-static {p3}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p3

    iput-object p3, p0, Lbm0;->l:Lhi0;

    new-instance p4, Lx68$c;

    invoke-direct {p4, p2}, Lx68$c;-><init>(Ljava/util/List;)V

    invoke-static {p4}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p4

    iput-object p4, p0, Lbm0;->m:Lhi0;

    new-instance p5, Lx68$c;

    invoke-direct {p5, p2}, Lx68$c;-><init>(Ljava/util/List;)V

    invoke-static {p5}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p2

    iput-object p2, p0, Lbm0;->n:Lhi0;

    new-instance p5, Lba;

    sget-object v0, Lbm0$c;->f:Lbm0$c;

    invoke-direct {p5, v0}, Lba;-><init>(Lnl3;)V

    new-instance v0, Ler5;

    invoke-direct {v0, p3, p5}, Ler5;-><init>(Ltq5;Lze6;)V

    new-instance p3, Lca;

    sget-object p5, Lbm0$d;->f:Lbm0$d;

    invoke-direct {p3, p5}, Lca;-><init>(Lnl3;)V

    new-instance p5, Ler5;

    invoke-direct {p5, p4, p3}, Ler5;-><init>(Ltq5;Lze6;)V

    new-instance p3, Lda;

    sget-object p4, Lbm0$e;->f:Lbm0$e;

    invoke-direct {p3, p4, v2}, Lda;-><init>(Lnl3;I)V

    new-instance p4, Ler5;

    invoke-direct {p4, p2, p3}, Ler5;-><init>(Ltq5;Lze6;)V

    invoke-interface {p1}, Lrp0;->m()Lhi0;

    move-result-object p1

    new-instance p2, Lbm0$f;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lgh4;-><init>(I)V

    new-instance v4, Lea;

    invoke-direct {v4, p2}, Lea;-><init>(Ljava/lang/Object;)V

    const-string p2, "source4 is null"

    invoke-static {p1, p2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lrm3$c;

    invoke-direct {p2, v4}, Lrm3$c;-><init>(Lea;)V

    sget v4, Lgg3;->b:I

    new-array p3, p3, [Lwr5;

    aput-object v0, p3, v3

    aput-object p5, p3, v2

    aput-object p4, p3, v1

    const/4 p4, 0x3

    aput-object p1, p3, p4

    invoke-static {p3, p2, v4}, Ltq5;->c([Lwr5;Lxl3;I)Ltq5;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbm0;->o:Ltq5;

    return-void
.end method

.method public static c(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx5;

    invoke-virtual {v1}, Lsx5;->d()Len1;

    move-result-object v2

    invoke-virtual {v1}, Lsx5;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lpa;

    invoke-virtual {v1}, Lsx5;->b()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v3, v4, v5, v2}, Lpa;-><init>(JLen1;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static d(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 4

    const/16 v0, 0xa

    if-nez p1, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs0;

    instance-of v1, v0, Len1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Len1;

    iget-object v2, v1, Len1;->a:Ldn1;

    iget-boolean v3, v2, Ldn1;->f:Z

    if-eqz v3, :cond_0

    new-instance v0, Lpa;

    iget v2, v2, Ldn1;->a:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v1}, Lpa;-><init>(JLen1;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs0;

    instance-of v1, v0, Lpa;

    if-eqz v1, :cond_3

    check-cast v0, Lpa;

    iget-object v0, v0, Lpa;->b:Len1;

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lx68$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx68$c;-><init>(I)V

    iget-object v2, p0, Lbm0;->l:Lhi0;

    invoke-virtual {v2, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    new-instance v0, Lx68$c;

    invoke-direct {v0, v1}, Lx68$c;-><init>(I)V

    iget-object v2, p0, Lbm0;->m:Lhi0;

    invoke-virtual {v2, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    new-instance v0, Lx68$c;

    invoke-direct {v0, v1}, Lx68$c;-><init>(I)V

    iget-object p0, p0, Lbm0;->n:Lhi0;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)Lp08;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lbm0;->e:I

    iget-object p0, p0, Lbm0;->a:Lrp0;

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lrp0;->d(Ljava/lang/Integer;)Lp08;

    move-result-object p0

    sget-object p1, Li4;->h:Li4;

    new-instance v1, Lil0;

    invoke-direct {v1, p1, v0}, Lil0;-><init>(Lnl3;I)V

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lrp0;->q(Ljava/lang/Integer;)Lp08;

    move-result-object p0

    new-instance p1, Lml0;

    sget-object v1, Lsm0;->f:Lsm0;

    invoke-direct {p1, v1, v0}, Lml0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final e(IZ)Lh08;
    .locals 3

    iget-object v0, p0, Lbm0;->a:Lrp0;

    invoke-interface {v0, p1, p2}, Lrp0;->i(IZ)Lqp1;

    move-result-object p2

    iget-object v0, p0, Lbm0;->c:Lt42;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lt42;->b(J)Lmz7;

    move-result-object v0

    invoke-virtual {p2, v0}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object p2

    new-instance v0, Lpn0;

    invoke-direct {v0, p0, p1}, Lpn0;-><init>(Lbm0;I)V

    new-instance p0, Lb9;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lb9;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lh08;

    invoke-direct {p1, p2, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method
