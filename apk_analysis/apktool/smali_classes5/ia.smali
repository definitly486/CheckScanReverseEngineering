.class public final Lia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa;


# instance fields
.field public final a:Lm9;

.field public final b:Liq4;


# direct methods
.method public constructor <init>(Lm9;Liq4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia;->a:Lm9;

    iput-object p2, p0, Lia;->b:Liq4;

    return-void
.end method


# virtual methods
.method public final a(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lfy5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->a(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lpx5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->b(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e(IJ)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p2, p3, p1, v0}, Lm9;->e(JII)Lmz7;

    move-result-object p0

    new-instance p1, Lda;

    const/4 p2, 0x0

    sget-object p3, Lga;->f:Lga;

    invoke-direct {p1, p3, p2}, Lda;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final f(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lvl2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->f(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final g(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lrr6;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->g(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Le08;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2, p3, p4}, Lm9;->h(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lmz7;

    move-result-object p0

    new-instance p1, Lca;

    sget-object p2, Lfa;->f:Lfa;

    invoke-direct {p1, p2}, Lca;-><init>(Lnl3;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Le08;

    invoke-direct {p2, p0, p1}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final i(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkx5;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->k(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final j(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lrx5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1, p2}, Lm9;->j(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lp08;
    .locals 1

    new-instance v0, Ly9;

    invoke-direct {v0, p1}, Ly9;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lia;->b:Liq4;

    invoke-interface {p0, v0}, Liq4;->a(Ly9;)Lmz7;

    move-result-object p0

    new-instance p1, Lba;

    sget-object v0, Lha;->f:Lha;

    invoke-direct {p1, v0}, Lba;-><init>(Lnl3;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final l(Li63;)Lqp1;
    .locals 0

    iget-object p0, p0, Lia;->a:Lm9;

    invoke-interface {p0, p1}, Lm9;->i(Li63;)Lqp1;

    move-result-object p0

    return-object p0
.end method
