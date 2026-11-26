.class public final Lih1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzg1;


# instance fields
.field public final a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

.field public final b:Laf1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase;Laf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    iput-object p2, p0, Lih1;->b:Laf1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lrp1;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lih1;->b:Laf1;

    invoke-interface {v0, p1}, Laf1;->a(Ljava/lang/String;)Lqp1;

    move-result-object v0

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0, p1}, Lwf1;->d(Ljava/lang/String;)Lqp1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lqp1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lwf1;->b(Ljava/lang/String;Ljava/lang/String;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lhd3<",
            "Lkg1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lwf1;->c(J)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lhv6;)Lmz7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhv6;",
            ")",
            "Lmz7<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    new-instance v0, Lkg1;

    invoke-virtual {p1}, Lhv6;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-string v4, "WAITING"

    invoke-direct/range {v0 .. v6}, Lkg1;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lwf1;->g(Lkg1;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lqp1;
    .locals 0

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0}, Lwf1;->h()Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lp08;
    .locals 2

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0, p1}, Lwf1;->i(Ljava/lang/String;)Lmz7;

    move-result-object p0

    sget-object p1, Liq0;->h:Liq0;

    new-instance v0, Lbh1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbh1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final g()Ldh3;
    .locals 3

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0}, Lwf1;->l()Lgg3;

    move-result-object p0

    sget-object v0, Lkq0;->h:Lkq0;

    new-instance v1, Lah1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lah1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldh3;

    invoke-direct {v0, p0, v1}, Ldh3;-><init>(Lgg3;Lxl3;)V

    return-object v0
.end method

.method public final h()Lh08;
    .locals 3

    iget-object v0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {v0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object v0

    invoke-interface {v0}, Lwf1;->f()Lmz7;

    move-result-object v0

    new-instance v1, Lhh1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhh1;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Ldh1;

    invoke-direct {p0, v1, v2}, Ldh1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh08;

    invoke-direct {v1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final i(Ljava/lang/String;)Lp08;
    .locals 2

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0, p1}, Lwf1;->i(Ljava/lang/String;)Lmz7;

    move-result-object p0

    sget-object p1, Ljq0;->h:Ljq0;

    new-instance v0, Lch1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lch1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final j(Lkg1;)Lqp1;
    .locals 0

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    filled-new-array {p1}, [Lkg1;

    move-result-object p1

    invoke-interface {p0, p1}, Lwf1;->e([Lkg1;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkg1;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    invoke-virtual {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object p0

    invoke-interface {p0}, Lwf1;->n()Lmz7;

    move-result-object p0

    return-object p0
.end method
