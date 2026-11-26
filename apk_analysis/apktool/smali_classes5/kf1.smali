.class public final Lkf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf1$a;,
        Lkf1$b;
    }
.end annotation


# instance fields
.field public final a:Lmh1;

.field public final b:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

.field public final c:Ljf6;

.field public final d:Le3;


# direct methods
.method public constructor <init>(Lmh1;Lcom/warefly/checkscan/data/db/CheckscanDatabase;Ljf6;Le3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf1;->a:Lmh1;

    iput-object p2, p0, Lkf1;->b:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    iput-object p3, p0, Lkf1;->c:Ljf6;

    iput-object p4, p0, Lkf1;->d:Le3;

    return-void
.end method

.method public static w(Lkf1;Lkf1$b;Lkf1$a;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    iget-object p0, p0, Lkf1;->c:Ljf6;

    if-eqz p2, :cond_2

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljf6;->j1(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljf6;->J0(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lh08;
    .locals 2

    iget-object v0, p0, Lkf1;->a:Lmh1;

    invoke-interface {v0}, Lmh1;->a()Lmz7;

    move-result-object v0

    new-instance v1, Lnf1;

    invoke-direct {v1, p0}, Lnf1;-><init>(Lkf1;)V

    new-instance p0, Lgd0;

    invoke-direct {p0, v1}, Lgd0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh08;

    invoke-direct {v1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final b(I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lbf1;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->b(I)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Lp08;
    .locals 2

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->c(I)Lmz7;

    move-result-object p0

    new-instance p1, Lif1;

    const/4 v0, 0x0

    sget-object v1, Ltf1;->f:Ltf1;

    invoke-direct {p1, v1, v0}, Lif1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final d()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Lhc;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0}, Lmh1;->o()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lp08;
    .locals 2

    iget-object p0, p0, Lkf1;->b:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->e()Lr71;

    move-result-object p0

    invoke-virtual {p0}, Lr71;->c()Lmz7;

    move-result-object p0

    new-instance p1, Lk4;

    const/4 v0, 0x1

    sget-object v1, Lsf1;->f:Lsf1;

    invoke-direct {p1, v1, v0}, Lk4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final f(ILjava/lang/String;Ljava/lang/String;)Lh08;
    .locals 1

    new-instance v0, Lze1;

    invoke-direct {v0, p1, p2, p3}, Lze1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, v0}, Lmh1;->g(Lze1;)Lmz7;

    move-result-object p0

    sget-object p1, Luf1;->g:Luf1;

    new-instance p2, Lef1;

    invoke-direct {p2, p1}, Lef1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lh08;

    invoke-direct {p1, p0, p2}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final g(Ljava/lang/Integer;Ljava/lang/String;)Lp08;
    .locals 1

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lmh1;->d(ILjava/lang/String;)Lmz7;

    move-result-object p0

    new-instance p1, Ljf1;

    const/4 p2, 0x0

    sget-object v0, Lrf1;->f:Lrf1;

    invoke-direct {p1, v0, p2}, Ljf1;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;)Ltb7;
    .locals 10

    new-instance v0, Llf1;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Llf1;-><init>(Lkf1;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu48;",
            ">;"
        }
    .end annotation

    sget-object p0, Lu48;->Date:Lu48;

    sget-object v0, Lu48;->Search:Lu48;

    sget-object v1, Lu48;->Period:Lu48;

    sget-object v2, Lu48;->Sum:Lu48;

    filled-new-array {p0, v0, v1, v2}, [Lu48;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j(ILjava/lang/String;)Lmz7;
    .locals 1

    const/16 v0, 0x14

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p2, p1, v0}, Lmh1;->h(Ljava/lang/String;II)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Lp08;
    .locals 1

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->k(I)Lmz7;

    move-result-object p0

    new-instance p1, Lhd0;

    sget-object v0, Lof1;->f:Lof1;

    invoke-direct {p1, v0}, Lhd0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final l()Loz7;
    .locals 1

    new-instance v0, Lff1;

    invoke-direct {v0, p0}, Lff1;-><init>(Ljava/lang/Object;)V

    new-instance p0, Loz7;

    invoke-direct {p0, v0}, Loz7;-><init>(Lw08;)V

    return-object p0
.end method

.method public final m(Lvg6;)Lmz7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvg6;",
            ")",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-virtual {p1}, Lvg6;->f()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lmh1;->p(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lqp1;
    .locals 2

    invoke-static {p1, p2, p3}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx33;

    const-string v1, "EXCEL"

    invoke-direct {v0, p1, p2, p3, v1}, Lx33;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, v0}, Lmh1;->e(Lx33;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final o(I)Lh08;
    .locals 2

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->n(I)Lmz7;

    move-result-object p0

    sget-object p1, Lu5;->h:Lu5;

    new-instance v0, Lhf1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhf1;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lh08;

    invoke-direct {p1, p0, v0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final p(I)Lcq1;
    .locals 1

    new-instance v0, Ldf1;

    invoke-direct {v0, p0, p1}, Ldf1;-><init>(Lkf1;I)V

    new-instance p0, Lcq1;

    invoke-direct {p0, v0}, Lcq1;-><init>(Lh6;)V

    return-object p0
.end method

.method public final q(Lee1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->j(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r(I)Li08;
    .locals 2

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1}, Lmh1;->m(I)Lmz7;

    move-result-object p0

    new-instance p1, Lgf1;

    const/4 v0, 0x0

    sget-object v1, Lpf1;->f:Lpf1;

    invoke-direct {p1, v1, v0}, Lgf1;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li08;

    invoke-direct {v0, p0, p1}, Li08;-><init>(Lmz7;Lgf1;)V

    return-object v0
.end method

.method public final s(Ljava/lang/String;)Lp08;
    .locals 2

    iget-object v0, p0, Lkf1;->a:Lmh1;

    invoke-interface {v0, p1}, Lmh1;->f(Ljava/lang/String;)Lmz7;

    move-result-object p1

    new-instance v0, Lvf1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvf1;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lu20;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lu20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final t(II)Lp08;
    .locals 1

    iget-object p0, p0, Lkf1;->a:Lmh1;

    invoke-interface {p0, p1, p2}, Lmh1;->l(II)Lmz7;

    move-result-object p0

    new-instance p1, Ll5;

    const/4 p2, 0x1

    sget-object v0, Lqf1;->f:Lqf1;

    invoke-direct {p1, v0, p2}, Ll5;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final u()Lkf1$a;
    .locals 5

    iget-object p0, p0, Lkf1;->c:Ljf6;

    invoke-interface {p0}, Ljf6;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lkf1$c;

    invoke-direct {v2}, Lkf1$c;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkf1$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkf1$a;->c()J

    move-result-wide v1

    invoke-interface {p0}, Ljf6;->T0()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lkf1$a;

    invoke-interface {p0}, Ljf6;->T0()J

    move-result-wide v1

    const/4 p0, 0x0

    sget-object v3, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v2, p0, v3}, Lkf1$a;-><init>(JILjava/util/List;)V

    return-object v0
.end method

.method public final v()Lkf1$b;
    .locals 7

    iget-object p0, p0, Lkf1;->c:Ljf6;

    invoke-interface {p0}, Ljf6;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lkf1$d;

    invoke-direct {v2}, Lkf1$d;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkf1$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkf1$b;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lz96;

    iget-boolean v5, v4, Lz96;->e:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lkf1$b;->a()Ljava/util/List;

    move-result-object v5

    iget v4, v4, Lz96;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lkf1$b;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lkf1$b;->c()J

    move-result-wide v1

    invoke-interface {p0}, Ljf6;->T0()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Lkf1$b;

    invoke-interface {p0}, Ljf6;->T0()J

    move-result-wide v2

    const/4 v4, 0x0

    sget-object v5, Lkx2;->b:Lkx2;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lkf1$b;-><init>(JILjava/util/List;Ljava/util/List;)V

    return-object v1
.end method
