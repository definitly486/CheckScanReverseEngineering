.class public final Lpq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrp0;


# instance fields
.field public final a:Lnp0;

.field public final b:Ljf6;

.field public final c:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnp0;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpq0;->a:Lnp0;

    iput-object p2, p0, Lpq0;->b:Ljf6;

    invoke-interface {p2}, Ljf6;->p0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Lpq0;->c:Lhi0;

    sget-object p0, Lj59;->a:Lj59;

    invoke-static {p0}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    return-void
.end method


# virtual methods
.method public final a(IZ)Ltb7;
    .locals 2

    new-instance v0, Loq0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Loq0;-><init>(Lpq0;IZLe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final b(Lfc0;ILjava/lang/Integer;)Lmz7;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p1, p2, p3}, Lnp0;->b(Lfc0;ILjava/lang/Integer;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p2, p1, v0}, Lnp0;->n(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    sget-object p1, Lkq0;->g:Lkq0;

    new-instance p2, Lxp0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lxp0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, p2}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final d(Ljava/lang/Integer;)Lp08;
    .locals 2

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lnp0;->p(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    sget-object p1, Lgq0;->g:Lgq0;

    new-instance v0, Lzp0;

    invoke-direct {v0, p1, v1}, Lzp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lpq0;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->f0()V

    invoke-interface {v0}, Ljf6;->p0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lpq0;->c:Lhi0;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Integer;Ljava/lang/Integer;II)Lp08;
    .locals 6

    const/16 v5, 0xa

    iget-object v0, p0, Lpq0;->a:Lnp0;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lnp0;->k(Ljava/lang/Integer;Ljava/lang/Integer;III)Lmz7;

    move-result-object p0

    new-instance p1, Lvv;

    const/4 p2, 0x1

    sget-object p3, Llq0;->f:Llq0;

    invoke-direct {p1, p3, p2}, Lvv;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final g(II)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p1, p2, v0}, Lnp0;->g(III)Lmz7;

    move-result-object p0

    sget-object p1, Leq0;->g:Leq0;

    new-instance p2, Lyv;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lyv;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, p2}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final h(Ljava/lang/String;ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p3, p1, p2, v0}, Lnp0;->l(Ljava/lang/Integer;Ljava/lang/String;II)Lmz7;

    move-result-object p0

    new-instance p1, Laq0;

    const/4 p2, 0x0

    sget-object p3, Lcq0;->f:Lcq0;

    invoke-direct {p1, p3, p2}, Laq0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final i(IZ)Lqp1;
    .locals 1

    new-instance v0, Ld63;

    invoke-direct {v0, p1, p2}, Ld63;-><init>(IZ)V

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, v0}, Lnp0;->o(Ld63;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/String;ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p3, p1, p2, v0}, Lnp0;->d(Ljava/lang/Integer;Ljava/lang/String;II)Lmz7;

    move-result-object p0

    new-instance p1, Lyp0;

    const/4 p2, 0x0

    sget-object p3, Lnq0;->f:Lnq0;

    invoke-direct {p1, p3, p2}, Lyp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final k(ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p2, p1, v0}, Lnp0;->p(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    new-instance p1, Lup0;

    const/4 p2, 0x0

    sget-object v0, Lfq0;->f:Lfq0;

    invoke-direct {p1, v0, p2}, Lup0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final l(ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p2, p1, v0}, Lnp0;->i(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    new-instance p1, Lsp0;

    const/4 p2, 0x0

    sget-object v0, Lhq0;->f:Lhq0;

    invoke-direct {p1, v0, p2}, Lsp0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final m()Lhi0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpq0;->c:Lhi0;

    return-object p0
.end method

.method public final n(II)Ltb7;
    .locals 2

    new-instance v0, Lbq0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lbq0;-><init>(Lpq0;IILe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final o(ILjava/lang/Integer;)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p2, p1, v0}, Lnp0;->h(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    sget-object p1, Liq0;->g:Liq0;

    new-instance p2, Ltp0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ltp0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, p2}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final p(Ljava/lang/Integer;Ljava/lang/Integer;I)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p2, p1, p3, v0}, Lnp0;->e(Ljava/lang/Integer;Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    new-instance p1, Lvp0;

    const/4 p2, 0x0

    sget-object p3, Lmq0;->f:Lmq0;

    invoke-direct {p1, p3, p2}, Lvp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final q(Ljava/lang/Integer;)Lp08;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, p1, v0, v1}, Lnp0;->h(Ljava/lang/Integer;II)Lmz7;

    move-result-object p0

    sget-object p1, Ljq0;->g:Ljq0;

    new-instance v0, Lq7;

    invoke-direct {v0, p1}, Lq7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public final r(ILmh9;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lfc0;->BOTTOM_SHEET:Lfc0;

    const/4 v1, 0x0

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, v0, p1, v1, p2}, Lnp0;->c(Lfc0;ILjava/lang/Integer;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final s(I)Lp08;
    .locals 2

    const/16 v0, 0x64

    iget-object p0, p0, Lpq0;->a:Lnp0;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lnp0;->g(III)Lmz7;

    move-result-object p0

    new-instance p1, Lwp0;

    sget-object v0, Ldq0;->f:Ldq0;

    invoke-direct {p1, v0, v1}, Lwp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final t(IZ)Lqp1;
    .locals 1

    new-instance v0, Ld63;

    invoke-direct {v0, p1, p2}, Ld63;-><init>(IZ)V

    iget-object p0, p0, Lpq0;->a:Lnp0;

    invoke-interface {p0, v0}, Lnp0;->j(Ld63;)Lqp1;

    move-result-object p0

    return-object p0
.end method
