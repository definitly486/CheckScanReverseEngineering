.class public final Lyg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzg1;

.field public final b:Ljv6;

.field public final c:Ljf6;

.field public final d:Lfu1;

.field public final e:Lj67;

.field public final f:Lxd1;

.field public final g:Lz68;

.field public final h:Lgy6;

.field public final i:Lfu1;


# direct methods
.method public constructor <init>(Lzg1;Ljv6;Ljf6;Lfu1;Lj67;Lxd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyg1;->a:Lzg1;

    iput-object p2, p0, Lyg1;->b:Ljv6;

    iput-object p3, p0, Lyg1;->c:Ljf6;

    iput-object p4, p0, Lyg1;->d:Lfu1;

    iput-object p5, p0, Lyg1;->e:Lj67;

    iput-object p6, p0, Lyg1;->f:Lxd1;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lyg1;->g:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lyg1;->h:Lgy6;

    new-instance p1, Lfu1;

    invoke-direct {p1}, Lfu1;-><init>()V

    iput-object p1, p0, Lyg1;->i:Lfu1;

    return-void
.end method


# virtual methods
.method public final a(Lhv6;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lyg1;->g:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyg1;->a:Lzg1;

    invoke-interface {v0}, Lzg1;->h()Lh08;

    move-result-object v1

    invoke-interface {v0}, Lzg1;->k()Lmz7;

    move-result-object v0

    new-instance v2, Lrg1;

    invoke-direct {v2, p0}, Lrg1;-><init>(Lyg1;)V

    new-instance v3, Lbe;

    invoke-direct {v3, v2}, Lbe;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lh08;

    invoke-direct {v2, v0, v3}, Lh08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v1, v2}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    sget-object v1, Lne7;->d:Lvy8;

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    iget-object v1, p0, Lyg1;->i:Lfu1;

    invoke-virtual {v1, v0}, Lfu1;->b(Lcp2;)Z

    iget-object p0, p0, Lyg1;->d:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final c(Lhv6;)Lzp1;
    .locals 3

    invoke-virtual {p1}, Lhv6;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyg1;->e:Lj67;

    iget-object v0, v0, Lj67;->a:Ljf6;

    invoke-interface {v0}, Ljf6;->f()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljf6;->d0(I)V

    invoke-interface {v0}, Ljf6;->f()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkd$b;->e:Lkd$b;

    invoke-virtual {v0}, Lkd;->a()V

    goto :goto_0

    :cond_1
    sget-object v0, Lkd$g$a$a;->e:Lkd$g$a$a;

    invoke-virtual {v0}, Lkd;->a()V

    goto :goto_0

    :cond_2
    sget-object v0, Lkd$g$a$b;->e:Lkd$g$a$b;

    invoke-virtual {v0}, Lkd;->a()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lyg1;->a:Lzg1;

    invoke-interface {v0, p1}, Lzg1;->d(Lhv6;)Lmz7;

    move-result-object v0

    new-instance v2, Lm70;

    invoke-direct {v2, v1, p0, p1}, Lm70;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljd;

    invoke-direct {p1, v2}, Ljd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh08;

    invoke-direct {v1, v0, p1}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance p1, Llg1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Llg1;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lzp1;

    invoke-direct {p0, v1, p1}, Lzp1;-><init>(Lqp1;Lh6;)V

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lyg1;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljf6;->e0()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljf6;->e0()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljf6;->E(I)V

    invoke-interface {v0}, Ljf6;->e0()I

    return-void

    :cond_0
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljf6;->E(I)V

    iget-object p0, p0, Lyg1;->i:Lfu1;

    invoke-virtual {p0}, Lfu1;->d()V

    :cond_1
    return-void
.end method

.method public final e(JLhv6;Lnl3;)Lrp1;
    .locals 8

    invoke-virtual {p3}, Lhv6;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAITING"

    iget-object v2, p0, Lyg1;->a:Lzg1;

    invoke-interface {v2, v0, v1}, Lzg1;->b(Ljava/lang/String;Ljava/lang/String;)Lqp1;

    move-result-object v0

    iget-object v1, p0, Lyg1;->b:Ljv6;

    invoke-interface {v1, p3}, Ljv6;->a(Lhv6;)Le08;

    move-result-object v1

    new-instance v2, Lwg1;

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v7}, Lwg1;-><init>(Lnl3;Lyg1;JLhv6;)V

    new-instance p0, Lup0;

    const/4 p1, 0x1

    invoke-direct {p0, v2, p1}, Lup0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lh08;

    invoke-direct {p2, v1, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lxg1;

    const/4 p3, 0x0

    invoke-direct {p0, v3, p3}, Lxg1;-><init>(Ljava/lang/Object;I)V

    new-instance p3, Lvp0;

    invoke-direct {p3, p0, p1}, Lvp0;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lpq1;

    invoke-direct {p0, p2, p3}, Lpq1;-><init>(Lqp1;Lxl3;)V

    invoke-virtual {v0, p0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    return-object p0
.end method

.method public final f(JLhv6;La57;)Lqp1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lhv6;",
            "La57<",
            "Liv6;",
            ">;)",
            "Lqp1;"
        }
    .end annotation

    iget-object p0, p0, Lyg1;->a:Lzg1;

    if-nez p4, :cond_0

    new-instance v0, Lkg1;

    invoke-virtual {p3}, Lhv6;->b()Ljava/lang/String;

    move-result-object v3

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p4, p3}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "FNS_NOT_RESPONDING"

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lkg1;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lzg1;->j(Lkg1;)Lqp1;

    move-result-object p0

    return-object p0

    :cond_0
    move-wide v1, p1

    new-instance v0, Lkg1;

    invoke-virtual {p3}, Lhv6;->b()Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lnz6;->Companion:Lnz6$a;

    iget-object p2, p4, La57;->a:Lz47;

    iget p2, p2, Lz47;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lnz6$a;->a(I)Lnz6;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p4, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lkg1;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lzg1;->j(Lkg1;)Lqp1;

    move-result-object p0

    return-object p0
.end method
