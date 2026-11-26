.class public final Lkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkv$a;
    }
.end annotation


# instance fields
.field public final b:Luw;

.field public final c:Ljf6;

.field public final d:Lc4;

.field public final e:Lb68;

.field public final f:Lfu1;

.field public final g:Lfu1;

.field public final h:Lfu1;


# direct methods
.method public constructor <init>(Luw;Ljf6;Lc4;Lb68;Lfu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv;->b:Luw;

    iput-object p2, p0, Lkv;->c:Ljf6;

    iput-object p3, p0, Lkv;->d:Lc4;

    iput-object p4, p0, Lkv;->e:Lb68;

    iput-object p5, p0, Lkv;->f:Lfu1;

    new-instance p1, Lfu1;

    invoke-direct {p1}, Lfu1;-><init>()V

    iput-object p1, p0, Lkv;->g:Lfu1;

    new-instance p1, Lfu1;

    invoke-direct {p1}, Lfu1;-><init>()V

    iput-object p1, p0, Lkv;->h:Lfu1;

    return-void
.end method


# virtual methods
.method public final a()Lg18;
    .locals 4

    iget-object v0, p0, Lkv;->d:Lc4;

    iget-object v0, v0, Lc4;->b:Lj5;

    invoke-interface {v0}, Lj5;->r()Lu08;

    move-result-object v0

    new-instance v1, Lmv;

    invoke-direct {v1, p0}, Lmv;-><init>(Lkv;)V

    new-instance v2, Ldi;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ldi;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Le08;

    invoke-direct {v1, v0, v2}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lnv;

    invoke-direct {v0, p0}, Lnv;-><init>(Lkv;)V

    new-instance p0, Lhv;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lhv;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lyz7;

    invoke-direct {v0, v1, p0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    sget-object p0, Lne7;->b:Lhe7;

    const-string v1, "unit is null"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduler is null"

    invoke-static {p0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg18;

    invoke-direct {v1, v0, p0}, Lg18;-><init>(Lyz7;Lhe7;)V

    return-object v1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Le08;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkv;->f:Lfu1;

    invoke-virtual {v0}, Lfu1;->d()V

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lkv;->d:Lc4;

    iget-object v1, v1, Lc4;->b:Lj5;

    invoke-interface {v1, v0, p2}, Lj5;->l(Ljava/lang/String;Ljava/lang/String;)Lp08;

    move-result-object p2

    new-instance v0, Lqv;

    invoke-direct {v0, p0, p1}, Lqv;-><init>(Lkv;Ljava/lang/String;)V

    new-instance p1, Lvq;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lvq;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Le08;

    invoke-direct {v0, p2, p1}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance p1, Lsv;

    invoke-direct {p1, p0}, Lsv;-><init>(Lkv;)V

    new-instance p2, Lwq;

    invoke-direct {p2, p1, v1}, Lwq;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Le08;

    invoke-direct {p1, v0, p2}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance p2, Luv;

    invoke-direct {p2, p0}, Luv;-><init>(Lkv;)V

    new-instance p0, Ls5;

    invoke-direct {p0, p2, v1}, Ls5;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Le08;

    invoke-direct {p2, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final d()Lrz7;
    .locals 8

    iget-object v0, p0, Lkv;->d:Lc4;

    invoke-virtual {v0}, Lc4;->b()Lrp1;

    move-result-object v2

    new-instance v0, Lbw;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lbw;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lbe0;

    const/4 v1, 0x2

    invoke-direct {v3, v0, v1}, Lbe0;-><init>(Lnl3;I)V

    new-instance v1, Loq1;

    sget-object v4, Lrm3;->d:Lrm3$e;

    sget-object v5, Lrm3;->c:Lrm3$d;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    iget-object v0, p0, Lkv;->b:Luw;

    invoke-interface {v0}, Luw;->a()Lmz7;

    move-result-object v0

    new-instance v2, Law;

    invoke-direct {v2, p0, v7}, Law;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Ljv;

    invoke-direct {p0, v2, v7}, Ljv;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Le08;

    invoke-direct {v2, v0, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v1, v2}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lkv;->d:Lc4;

    iget-object v1, v0, Lc4;->a:Ljf6;

    invoke-interface {v1}, Ljf6;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Lc4;->b:Lj5;

    invoke-interface {v2, v1}, Lj5;->k(Ljava/lang/String;)Lp08;

    move-result-object v1

    new-instance v2, Lq4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lq4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lb4;

    invoke-direct {v0, v2, v3}, Lb4;-><init>(Lgh4;I)V

    new-instance v3, Lyz7;

    invoke-direct {v3, v1, v0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    :cond_1
    if-nez v3, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object v3

    :cond_2
    new-instance v0, Lfv;

    invoke-direct {v0, p0}, Lfv;-><init>(Lkv;)V

    new-instance v1, Ltz7;

    invoke-direct {v1, v3, v0}, Ltz7;-><init>(Lmz7;Lfv;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    sget-object v1, Lrm3;->d:Lrm3$e;

    sget-object v2, Lrm3;->e:Lrm3$l;

    invoke-virtual {v0, v1, v2}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    iget-object p0, p0, Lkv;->h:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    return-void
.end method
