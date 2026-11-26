.class public final Lsv2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lmr4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Luv2;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luv2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsv2;->f:Luv2;

    iput-object p2, p0, Lsv2;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lmr4;

    iget-object v0, p0, Lsv2;->f:Luv2;

    iget-object v1, v0, Luv2;->c:Ljf6;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljf6;->j0(Z)V

    invoke-virtual {p1}, Lmr4;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Luv2;->f:Lhh4;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    invoke-virtual {p1}, Lmr4;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const-string v3, "source is null"

    invoke-static {v1, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljr5;

    invoke-direct {v3, v1}, Ljr5;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v3, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v1

    new-instance v3, Lab1;

    iget-object p0, p0, Lsv2;->g:Ljava/lang/String;

    invoke-direct {v3, v2, v0, p0}, Lab1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lf7;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lf7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p0}, Ltq5;->d(Lxl3;)Ltq5;

    move-result-object p0

    new-instance v1, Lbn;

    invoke-direct {v1, v0, v2}, Lbn;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Luk1;

    invoke-direct {v3, v1, v2}, Luk1;-><init>(Lgh4;I)V

    new-instance v1, Lrv2;

    invoke-direct {v1, v0}, Lrv2;-><init>(Luv2;)V

    new-instance v4, Lvk1;

    invoke-direct {v4, v1, v2}, Lvk1;-><init>(Lgh4;I)V

    new-instance v1, Lqv2;

    invoke-direct {v1, v0, p1}, Lqv2;-><init>(Luv2;Lmr4;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lhh4;

    invoke-direct {p1, v3, v4, v1}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {p0, p1}, Ltq5;->a(Lls5;)V

    iput-object p1, v0, Luv2;->f:Lhh4;

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
